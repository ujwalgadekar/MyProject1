<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="mystyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
body
{
   margin:0px;
   padding:0px;
}

</style>
<body>
<!-- navbar start -->
  <nav style="background: #095a83" class="navbar navbar-expand-lg navbar-light primary-background">
    <a style="color: white;" class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span> Brand</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div   class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        
        <li class="nav-item">
          <a style="color: white;" class="nav-link" href="login.jsp"><span class="fa fa-user-circle fa-spin"></span> Login</a>
        </li>
        
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <a  style="color: white;" class="nav-link" href="inquiryform.jsp"><span class="fa fa-user-plus"></span> Make Appointment </a>

      </form>
    </div>
    
  </nav>
  <!-- navbar end -->
  
<main class="display-flex align-item-center primary-background banner-background" >
    <div class="container">
     <div class="row">
      <div class="col col-lg-6 col-md-6 col-sm-12 col-12 ">

       <div class="card" style="margin-top: 70px; margin-bottom: 30px; ">
        <div  class="card-header primary-background text-dark text-center">
          <span class="fa fa-user-plus fa-3x"></span>
          <br>
            <p> Admin Login</p>
        </div>
        <div class="card-body">
            <form action="loginadminserver.jsp" method="post">
                <div class="form-group">
                  <label for="exampleInputEmail1">Username</label>
                  <input type="text" name="uusername" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                 
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" name="upassword" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                
                <button type="submit" class="btn btn-primary">Login</button>
               </form>
<% 
 String sessionloginadminfail =(String)session.getAttribute("sessionloginadminfail");
 if(sessionloginadminfail == null)
 {
	 
 }
 else
 {
	 %>
	 <small>
	 <%=sessionloginadminfail %>
	 </small>
	 
	 <%
	 session.setAttribute("sessionloginadminfail", null);
 }

%>

        </div>
       </div>

      </div>
      <div class="col col-lg-6 col-md-6 col-sm-12 col-12 ">

        <div class="card" style="margin-top: 70px; margin-bottom: 30px;">
         <div  class="card-header primary-background text-dark text-center">
           <span class="fa fa-user-plus fa-3x"></span>
           <br>
             <p>User Login</p>
         </div>
         <div class="card-body">
             <form action="loginuserserver.jsp" >
                 <div class="form-group">
                   <label for="exampleInputEmail1">Email address</label>
                   <input type="email" name="useremail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                  
                 </div>
                 <div class="form-group">
                   <label for="exampleInputPassword1">Password</label>
                   <input type="password" name="userpassword"  class="form-control" id="exampleInputPassword1" placeholder="Password">
                 </div>
                 
                 <button type="submit" class="btn btn-primary">Login</button>
               </form>
 
 
         </div>
        </div>
 
       </div>
     </div>
    </div>
</main>
</body>
</html>