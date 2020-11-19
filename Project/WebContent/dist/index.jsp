


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="mystyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- <style>
    .banner-background {
      clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 92%, 59% 100%, 26% 91%, 0 96%, 0 0);
    }
  </style> -->
  <style>
    body{
       margin: 0px;
        padding: 0px;
       }
  </style>
</head>
<body>
<%
String sessionenquirypass=(String)session.getAttribute("sessionenquirypass");
if(sessionenquirypass==null)
{
	
}
else 
{
	%>
	<script>
	alert("<%=sessionenquirypass%>");
	</script>
	<%
	session.setAttribute("sessionenquirypass",null );

}
%>
 <!-- navbar start -->
  <div>
  <nav style="background: #095a83" class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span> Brand </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="index.jsp"><span class="fa fa-bell-o"></span> Home <span
              class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a style="color: white;" class="nav-link" href="#"><span class="fa fa-address-book-o"></span> About-Us  </a>
        </li>
        
        <!-- <li class="nav-item dropdown ">
          <a style="color: white;" class="nav-link dropdown-toggle" href="index.html" id="navbarDropdown" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="fa fa-check-square-o"></span> categaries
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Programming Language</a>
            <a class="dropdown-item" href="#">Project Implementation</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Data Structure</a>
          </div>
        </li> -->
        
        
        <li class="nav-item">
          <a style="color: white;" class="nav-link" href="login.jsp"><span
              class="fa fa-user-circle fa-spin"></span> Login</a>
        </li>
        <li class="nav-item">
          <a style="color: white;" class="nav-link" href="inquiryform.jsp"><span class="fa fa-user-plus"></span> Make
            Appointment </a>
        </li>
      </ul>

      <form class="form-inline my-2 my-lg-0">
        <a style="color: white;" class="nav-link" href="#"><span class="fa fa-phone"></span> Contact-Us  </a>
        <a style="color: white;" class="nav-link" href="#"><span class="fa fa-phone"></span> Get-direction  </a>

      </form>
    </div>
  </nav>
</div>
  <!-- navbar end -->
  <!-- banner -->
        
  <div class="container-fluid p-0 m-0">
    <div class=" primary-background text-white banner-background">
      <div style="background-image:url(images/banner_img.png);background-size: cover;  height: 680px; background-position: center;background-repeat: no-repeat; ">
        
        <div  class="container text-center ">
        <div class="row">
        <div class="col col-lg-12 col-md-12 col-sm-12 col-12  my-5">
        <h3 class="display-3  ">code code code</h3>
        <h3>brand</h3>
        <h1>Learning Today . . . Leading Tomorrow.
        </h1>
        <h5>Software Training Institute in Nagpur
          Open today until 9:00 PM
        </h5>
        <a href="inquiryform.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span> Start! its Free</a>
        &nbsp;&nbsp;<a href="login.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span> login</a>
      </div>
      </div>
      </div>
    </div>
    </div>
  </div>


<!-- end section -->
  <!-- cards -->
  <div class="container">
    <div class="row mb-2">
      <div class="col col-lg-4 col-md-12 col-sm-12 col-12">
        <div class="card">
          <div class="card-body">
            <span style = "font-size: 50px; padding-top: 10px 15px;  color: #01bafd;" class="fa fa-book" ></span>

            <h5 class="card-title">Professional Courses</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
           <!-- <a href="#" class="btn primary-background text-white">Read More</a> -->
          </div>
        </div>
      </div>
      <div class="col col-lg-4 col-md-12 col-sm-12 col-12">
        <div class="card">

          <div class="card-body">
            <h5 class="card-title">Java Programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <!-- <a href="#" class="btn primary-background text-white">Read More</a> -->
          </div>
        </div>
      </div>
      <div class="col col-lg-4 col-md-12 col-sm-12 col-12">
        <div class="card">

          <div class="card-body">
            <h5 class="card-title">Java Programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <!-- <a href="#" class="btn primary-background text-white">Read More</a> -->
          </div>
        </div>
      </div>
    </div>
    
    <div class="row">
      <div class="col col-lg-4 col-md-12 col-sm-12 col-12">
        <div class="card">

          <div class="card-body">
            <h5 class="card-title">Java Programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <!-- <a href="#" class="btn primary-background text-white">Read More</a> -->
          </div>
        </div>
      </div>
      <div class="col col-lg-4 col-md-12 col-sm-12 col-12">
        <div class="card">

          <div class="card-body">
            <h5 class="card-title">Java Programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <!-- <a href="#" class="btn primary-background text-white">Read More</a> -->
          </div>
        </div>
      </div>
      <div class="col col-lg-4 col-md-12 col-sm-12 col-12">
        <div class="card">

          <div class="card-body">
            <h5 class="card-title">Java Programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <!-- <a href="#" class="btn primary-background text-white">Read More</a> -->
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>