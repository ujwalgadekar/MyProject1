<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="mystyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<!--navbar start  -->
    <nav style="background: #095a83" class="navbar navbar-expand-lg navbar-light primary-background ">
        <a style="color: white;" class="navbar-brand " href="index.jsp"><span class="fa fa-asterisk"></span> Brand </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="collapse navbar-collapse  " id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto ">
            
    
            
            <li class="nav-item">
              <a style="color: white;" class="nav-link" href="#"><span class="fa fa-phone"></span> Contact-Us</a>
            </li>
            <li class="nav-item">
              <a style="color: white;" class="nav-link" href="login.jsp"><span class="fa fa-user-circle fa-spin"></span> Login</a>
            </li>
            
              
          </ul>
          
        </div>
      </nav>
    <!-- navbar end -->
<!-- Check useremail---- -->
	<script>
		$(document).ready(function() {
			$("#useremail").blur(function() {
				//alert("hello1");
				var useremail = $("#useremail").val();
				$.post("email_page_all_registartion.jsp", {
					useremailID : useremail
				}, function(data, status) {
					$("#checkuseremail").text(data)
				});
			})
		});
	</script>
	<main class="primary-background banner-background" style="padding-bottom: 60px; padding-top: 30px;">
        <div class="container">
         <div class="col-md-6 offset-md-3">
          <div class="card">
            <div  class="card-header text-center primary-background text-dark">
                <span class="fa fa-3x fa-user-circle"></span>
                <br>
                <h3>Enquiry Form</h3> 
                
            </div>
            <div class="card-body">
                <form action="inquiryformserver.jsp">
                       


                    <div class="form-group">
                      <label for="exampleInputPassword1">Full Name </label>
                      <input type="text" name="ufullname" required class="form-control" id="exampleInputFullName1" placeholder="Your Answer">
                    </div>
                    
                      <div class="form-group">
                      <label for="exampleInputEmail1">Email address </label>
                      <input type="email" name="uemail" id="useremail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                      <small id="checkuseremail"></small>
                      </div>
                    <div class="form-group">
                        <label for="exampleInputPhone1">Phone No.</label>
                        <input type="text" name="uphone"  class="form-control" id="exampleInputPhone1" placeholder="Your Answer">
                      </div>

                    <div class="form-group">
                        <label for="gender">Select Gender</label>
                        <br>
                        <input type="radio" id="gender" name="ugender" value=male >Male
                        <input type="radio" id="gender" name="ugender" value=female >Female
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Qualification</label>
                        <input type="text" name="uqualification" class="form-control" id="exampleInputQualification1" placeholder="Your Answer">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">College Name</label>
                        <input type="text" name="ucollege"  class="form-control" id="exampleInputCollegeName1" placeholder="Your Answer">
                      </div>
                      
                       <div class="form-group">
                        <label for="exampleInputPassword1">Date of Enquiry</label>
                        <input type="date" name="udoe"  class="form-control" id="exampleInputCollegeName1">
                      </div>
                      

                      <div class="form-group">
                        <label for="exampleInputPassword1">Select Course</label>
                        <select id="u_select_course" name="uselectcourse123">
                        <option>Select Course</option>
                        	<%
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
							String sql="select distinct coursename from tbl_course_entry";
							PreparedStatement pst = con.prepareStatement(sql);
							ResultSet rs = pst.executeQuery();
							while(rs.next())
							{
								%>
								   <option > <%=rs.getString(1) %></option>
							    <%
							
							}
							con.close();
							pst.close();
						}
						
						catch(Exception e)
						{
							out.print(" "+e.getMessage());
						}
						
						%>
                        
                        </select>
                      </div>
                      
                <script>
$(document).ready(function(){
	$("#u_select_course").change(function(){
		//alert("hello");
		var u_select_course=$("#u_select_course").val();
		//alert(u_select_course);
		$.post("batchserver.jsp",{SELECT_COURSE:u_select_course},function(data,status){
			//alert(data);
				//$("#batch").text(data)
				$("#batch").val(data);
				//alert(data);
				//alert(data[0]);
				//alert(data[1]);
				//alert(data[2]);
				
			
            
		});
	});
});

</script>
<script>
$(document).ready(function(){
	$("#u_select_course").change(function(){
		//alert("hello");
		var u_select_course=$("#u_select_course").val();
		//alert(u_select_course);
		$.post("timingserver.jsp",{SELECT_COURSE:u_select_course},function(data,status){
			//alert(data);
				//$("#batch").text(data)
				$("#timing").val(data);
				//alert(data);
				//alert(data[0]);
				//alert(data[1]);
				//alert(data[2]);
				
			
            
		});
	});
});

</script>
<script>
$(document).ready(function(){
	$("#u_select_course").change(function(){
		//alert("hello");
		var u_select_course=$("#u_select_course").val();
		//alert(u_select_course);
		$.post("feesserver.jsp",{SELECT_COURSE:u_select_course},function(data,status){
			//alert(data);
				//$("#batch").text(data)
				$("#fees").val(data);
				//alert(data);
				//alert(data[0]);
				//alert(data[1]);
				//alert(data[2]);
				
			
            
		});
	});
});

</script>
<script>
$(document).ready(function(){
	$("#u_select_course").change(function(){
		//alert("hello");
		var u_select_course=$("#u_select_course").val();
		//alert(u_select_course);
		$.post("capacityserver.jsp",{SELECT_COURSE:u_select_course},function(data,status){
			//alert(data);
				//$("#batch").text(data)
				$("#capacity").val(data);
				//alert(data);
				//alert(data[0]);
				//alert(data[1]);
				//alert(data[2]);
				
			
            
		});
	});
});

</script>      
                      
                      <div class="form-row">
							<div class="col-md-6">
								<div class="form-group">
									<label  for="inputBatch">Batch-</label>
									<input id="batch" class="form-control " name="ubatch"  type="text"/><span id="sid11"></span>
								</div>
							</div>
							
						</div>
                       <div class="form-row">
							<div class="col-md-6">
								<div class="form-group">
									<label >Timing-</label>
									<input id="timing" class="form-control " name="utiming"  type="text"/>
								</div>
							</div>
							
						</div>
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-group">
									<label  >Fees-</label>
									<input id="fees" class="form-control " name="ufees"  type="text"/>
								</div>
							</div>
							
						</div>
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Capacity-</label>
									<input id="capacity" class="form-control " name="ucapacity"  type="text"/>
								</div>
							</div>
                    <br>
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </form> 
            </div>
           
          </div>
         </div>
        </div>
    </main>
</body>
</html>