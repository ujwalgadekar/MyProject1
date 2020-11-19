<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.6/js/dataTables.responsive.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.6/js/responsive.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"></script>
  <script src="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.6/css/responsive.bootstrap4.min.css"></script>
  <link rel="stylesheet" href="mystyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
</head>


<body >
<!-- .................................................................SCRIPT AREA START................................................... -->

<script>
	$(document).ready(function(){
			$('#closebtn').click(function(){
				$('#id1').hide().delay(200);
			});
	});
</script>
<script>
$(window).on("load",function()
		{
	      $("#courseentry").show();
	      $("#enquirystatus").hide();
	      $("#batchentry").hide();
	      $("#newstudentregistration").hide();
	      $("#fees_management").hide();
		});
</script>
<script>
$(document).ready(function()
		{
	        $("#courseentryview").click(function(){
	        	$("#courseentry").show();
	  	      $("#enquirystatus").hide();
	  	    $("#batchentry").hide();
	  	  $("#newstudentregistration").hide();
	  	 $("#fees_management").hide();
	        });
		});
</script>
<script>
$(document).ready(function()
		{
	        $("#studentenquiryview").click(function(){
	        	$("#courseentry").hide();
	  	      $("#enquirystatus").show();
	  	    $("#batchentry").hide();
	  	  $("#newstudentregistration").hide();
	  	 $("#fees_management").hide();
	        });
		});
</script>
<script>
$(document).ready(function()
		{
	        $("#batchentryview").click(function(){
	        	$("#courseentry").hide();
	  	      $("#enquirystatus").hide();
	  	    $("#batchentry").show();
	  	  $("#newstudentregistration").hide();
	  	 $("#fees_management").hide();
	        });
		});
</script>
<script>
$(document).ready(function()
		{
	        $("#newstudentregistrationview").click(function(){
	        	$("#courseentry").hide();
	  	      $("#enquirystatus").hide();
	  	    $("#batchentry").hide();
	  	  $("#newstudentregistration").show();
	  	 $("#fees_management").hide();
	        });
		});
</script>
<script>
$(document).ready(function()
		{
	        $("#feesmanagementview").click(function(){
	        	$("#courseentry").hide();
	  	      $("#enquirystatus").hide();
	  	    $("#batchentry").hide();
	  	  $("#newstudentregistration").hide();
	  	 $("#fees_management").show();
	        });
		});
</script>
<!-- ............................................................SCRIPT AREA END................................................... -->
       <div class="sb-nav-fixed" >
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand text-center" href="index.jsp"><b>HS-GROUP</b></a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                   <%
  String sessionloginadminpass =(String)session.getAttribute("sessionloginadminpass");
  if(sessionloginadminpass==null)
  {
	  
	  
  }
  else
  {
	  %> 
  
  
  <h5 Style="color:#fff"; >Welcome,&nbsp<%=sessionloginadminpass%></h5>
 
	   <%
	    session.setAttribute("sessionloginadminpass",null);

  }
  
  
  %>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.jsp">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
       </div>
        
            
            
<!-- ..............................................................DASHBOARD CONTENT START.......................................................... -->
            
            <div class="row">
            <div class="col-sm-2">
            <div class="sb-nav-fixed" >
            <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
              
              
<!--                        photo section                    -->
                     <div class="nav">
                    <div class="sb-sidenav-menu-heading">profilepic</div>
                     <form  action="updateimageserver.jsp" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        
                        <input type="file"  name="file" class="form-control" id="user_name" aria-describedby="emailHelp" >
                        <button type="submit"  class="btn btn-primary text-center">Change Photo</button>
                         
                        
                      </div>
                </form> 
                    </div>
<!--                        photo section end                   -->
                    
                    
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="dashboard.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                           
                           
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <ul class="nav flex-column nav nav-pills" role="tablist">
    <li class="nav-item" id="courseentryview">
      <a class="nav-link active" data-toggle="pill"  href="#">Course Entry</a>
    </li>
    <li class="nav-item" id="batchentryview">
      <a class="nav-link" data-toggle="pill"  href="#">Batch Entry</a>
    </li>
    <li class="nav-item" id="studentenquiryview">
      <a class="nav-link" data-toggle="pill" href="#">Enquiry Status</a>
    </li>
    <li class="nav-item" id="newstudentregistrationview">
      <a class="nav-link " data-toggle="pill" href="#"> New Student Registration</a>
    </li>
    <li class="nav-item" id="feesmanagementview">
      <a class="nav-link " data-toggle="pill" href="#">Fees Management</a>
    </li>
    <li class="nav-item" id="uploadfilewithdataview">
      <a class="nav-link " data-toggle="pill" href="#">Upload File With Data</a>
    </li>
    <li class="nav-item" id="simpledownloadview">
      <a class="nav-link " data-toggle="pill" href="#">Simple download</a>
    </li>
    <li class="nav-item" id="uploadfiledataview">
      <a class="nav-link " data-toggle="pill" href="#">Upload file Data</a>
    </li>
  </ul>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                       <div class="small">Logged in as:</div>
                   <h5 Style="color:#fff" ><%=sessionloginadminpass%></h5>
        </div>
                </nav>
            </div>
            </div>
            </div>
            
            </div>
            <div class="col-sm-10">
            <br><br>
            <div id="courseentry">
                <main>
   <%
   String sessioncoursedelete =(String)session.getAttribute("sessioncoursedelete");
  if(sessioncoursedelete==null)
  {
	  
	  
  }
  else
  { %> 
  <h3 id="id1" style="text-align: center";><%=sessioncoursedelete%> &nbsp;<span id="closebtn">&times</span> </h3>
  
    <%
     
      
	  session.setAttribute("sessioncoursedelete", null); 
  }
  
  
  %>
  
  
   <%
   String sessioneditcourse =(String)session.getAttribute("sessioneditcourse");
  if(sessioneditcourse==null)
  {
	  
	  %>  <div id="id2" class="card-body"  style="width:50%; margin-left:250px;border: 2px solid #007bff; ">
      <h3 class="text-center">New Course Detail</h3>

     <form  action="newcoursenameserver.jsp">
     
     <div class="form-group">
       <label for="exampleInputCourseName">New Course Name</label>
       <input type="text" name="unewcoursename"  required class="form-control" id="exampleInputCourseName" placeholder="Enter Course">
     </div>
      <button type="submit" class="btn btn-primary text-center">Save</button>
     
     </form>
     
      </div>
   <%    
  }
  else
  { 
  
  %> 
  
  
  <div class="card-body"  style="width:50%; margin-left:250px;border: 2px solid #007bff; ">
      <h3 class="text-center">Update Course Detail</h3>

     <form  action="updatecoursenameserver.jsp" method="post" >
     
     <div class="form-group">
       <label for="exampleInputCourseName">Update Course Name</label>
       <input type="text" name="ucoursename" value="<%=sessioneditcourse%>"  class="form-control" id="exampleInputCourseName" placeholder="Enter Course">
     </div>
      <button type="submit" class="btn btn-primary text-center">Update</button>
     
     </form>
     
      </div>
  
    <%
   
  }
  
  
  %>
  <!-- add course on id -->
  <script>
	$(document).ready(function(){
			$('#closebtn1').click(function(){
				$('#id2').hide().delay(200);
			});
	});
</script>
  <%
   String sessionaddcourse =(String)session.getAttribute("sessionaddcourse");
 if(sessionaddcourse==null)
  {
	  
  }
 else 
 {
	 %>
	  <div class="card-body"  style="width:50%; margin-left:250px; border: 2px solid #007bff; ">
     <h3 class="text-center">insert Course on id</h3>

    <form  action="insertcourseonidserver.jsp" method="post" >
    
    <div class="form-group">
      <label for="exampleInputCourseName">Course ID</label>
      <input type="text" name="ucoursenameid" value="<%=sessionaddcourse%>"  class="form-control" id="exampleInputCourseName" placeholder="Enter Course">
      <label for="exampleInputCourseName">New Course Name</label>
      <input type="text" name="unewcoursename"   class="form-control" id="exampleInputCourseName" placeholder="Enter Course">
    </div>
     <button type="submit" class="btn btn-primary text-center">add</button>
    
    </form>
    
     </div>
     <% 
     session.setAttribute("sessionaddcourse",null);
 }
  
  %> 
  
  
 
  
    
                <div class="container-fluid">
                       
                  
                 
                 
                 <div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Course-DataTable
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Course Name ID</th>
                                                <th>Add Course Name</th>
                                                <th>Course Name</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                               
                                            </tr>
                                        </thead>
                                    
                                        <tbody>
                                            <%
                                            try
                                            {
                                            	   Class.forName("com.mysql.jdbc.Driver");
                                               	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
                                            	   String sql ="SELECT * FROM tbl_course_entry";
                                            		PreparedStatement pst =con.prepareStatement(sql);
                                            	     ResultSet rs = pst.executeQuery();
                                            	   while(rs.next())
                                            	   {
                                            		   
                                            	   %>
                                            		   <tr>
                                                       <td><%=rs.getInt(1)%></td>
                                                       <td><%=rs.getString(2)%></td>
                                                       <td><span id="closebtn1">&times</span><a href="addcourseserver.jsp?id=<%=rs.getInt(1)%>"><span class="fa fa-plus fa-spin"></span></a></td>
                                                       <td><%=rs.getString(3)%></td>
                                                       <td><a href="editcourseserver.jsp?id=<%=rs.getInt(1)%>"><span class="fa fa-edit fa-spin"></span></a></td>
                                                       <td><a href="deletecourseserver1.jsp?id=<%=rs.getInt(1)%>"><span class="fa fa-trash fa-spin"></span></a></td>

                                                      
                                                   </tr>
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
                                                                             
                                            
                                         
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>

                </main>
          </div>
          
  <script>
$(document).ready(function(){
	$("#uselectcourse").change(function(){
		//alert("hello");
		var uselectcourse=$("#uselectcourse").val();
		//alert(uselectcourse);
		$.post("selectcourseserver.jsp",
				{COURSENAMEID:uselectcourse},function(data,status){
				$("#cars").html(data)
		});
	});
});

</script>
             <div id=batchentry>
             <%
             String sessionbatchaddpass = (String)session.getAttribute("sessionbatchaddpass");
             if(sessionbatchaddpass==null)
             {
            	 
             }
             else
             {
            	 %>
            	 <script>
            	 alert('<%=sessionbatchaddpass%>');
            	 </script>
            	 <%
            	 session.setAttribute("sessionbatchaddpass", null);
             }
             %>
           <span id="checkcoursename"></span>
           <div class="card-body"  style="width:50%; margin-top:30px; margin-left:250px; border: 2px solid #007bff;">
            <h3 class="text-center">Batch Entry</h3>

					<form action="batchentryserver.jsp" id="carform">
						
			            
					    <label for="cars">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSelect ID</label> 
					    <select id="uselectcourse" name="uselectcourseid" >
						<option value="sid">Select Course ID</option>
						<%
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
							String sql="select distinct coursenameid from tbl_course_entry";
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
					   <br><br>
					    <label for="cars">Select Course</label> 
					    <select id="cars" name="uselectcourse" >
						<option>select Course</option>
						                                     
					    </select>

						<div class="form-row">
							<div class="col-md-6">
								<div class="form-group">
									<label  for="inputBatch">Batch-</label>
									<input class="form-control " name="ubatch"  type="text"/>
								</div>
							</div>
							
						</div>
                       <div class="form-row">
							<div class="col-md-6">
								<div class="form-group">
									<label >Timing-</label>
									<input class="form-control " name="utiming"  type="text"/>
								</div>
							</div>
							
						</div>
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-group">
									<label  >Fees-</label>
									<input class="form-control " name="ufees"  type="text"/>
								</div>
							</div>
							
						</div>
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-group">
									<label  >Capacity-</label>
									<input class="form-control " name="ucapacity"  type="text"/>
								</div>
							</div>
							
						</div>
						<button type="submit" class="btn btn-primary text-center">Save</button>

					</form>
				</div>
            
            </div>
            
            
            <div id=enquirystatus>
				
				<main>
                
                    <div class="container-fluid">
                       
                       <div class="card-body"  style="width:50%; margin-left:250px; ">
                 <h3 class="text-center">Student Enquiry Detail</h3>
          
                
                
                 </div>
                 <div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Enquiry-DataTable
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Full Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>Gender</th>
                                                <th>Qualification</th>
                                                <th>College Name</th>
                                                <th>Date of Enquiry</th>
                                                <th>Course</th>
                                                <th>Batch</th>
                                                <th>Timing</th>
                                                <th>Fees</th>
                                                <th>Capacity</th>
                                                <th>Status</th>
                                                
                                               
                                            </tr>
                                        </thead>
                                    
                                        <tbody>
                                            <%
                                            try
                                            {
                                            	   Class.forName("com.mysql.jdbc.Driver");
                                               	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
                                            	   String sql ="SELECT * FROM tbl_student_enquiry";
                                            		PreparedStatement pst =con.prepareStatement(sql);
                                            	     ResultSet rs = pst.executeQuery();
                                            	   while(rs.next())
                                            	   {
                                            		   
                                            	   %>
                                            		   <tr>
                                                       <td><%=rs.getInt(1)%></td>
                                                       <td><%=rs.getString(2)%></td>
                                                       <td><%=rs.getString(3)%></td>
                                                       <td><%=rs.getString(4)%></td>
                                                       <td><%=rs.getString(5)%></td>
                                                       <td><%=rs.getString(6)%></td>
                                                       <td><%=rs.getString(7)%></td>
                                                       <td><%=rs.getString(8)%></td>
                                                       <td><%=rs.getString(9)%></td>
                                                       <td><%=rs.getString(10)%></td>
                                                       <td><%=rs.getString(11)%></td>
                                                       <td><%=rs.getString(12)%></td>
                                                       <td><%=rs.getString(13)%></td>
                                                       <td><a href="panding_enquiry_registration.jsp?id=<%=rs.getInt(1)%>"><span class="fa fa-pending fa-spin"></span></a></td> 
                                                      
                                                      
                                                   </tr>
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
                                                                             
                                            
                                         
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>

                </main>
               
           
           </div>
            
            <div id=newstudentregistration>
            
            
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
 <%
String sessionregistrationpass=(String)session.getAttribute("sessionregistrationpass");
if(sessionregistrationpass==null)
{
	
}
else 
{
	%>
	<script>
	alert("<%=sessionregistrationpass%>");
	</script>
	<%
	session.setAttribute("sessionregistrationpass",null );

}
%>     

  
<%
             String sessionsubmitfail = (String)session.getAttribute("sessionsubmitfail");
             if(sessionsubmitfail==null)
             {
            	 
             }
             else
             {
            	 %>
            	 <script>
            	 alert('<%=sessionsubmitfail%>');
            	 </script>
            	 <%
            	 session.setAttribute("sessionsubmitfail", null);
             }
%>  
<script>
$(window).on("load",function()
		{
	      $("#textinput1").show();
	      $("#textinput2").hide();
	      
		});
</script>

<script>
$(document).ready(function()
		{
	        $("#paybutton").change(function(){
	        	var val = $("#paybutton").val();
	        	if(val == 'cash')
	        		{
	        		$("#textinput1").show();
		        	$("#textinput2").hide();
	        		}
	        	else
	        		{
	        		$("#textinput1").hide();
		        	$("#textinput2").show();
	        		}
	        	
	  	
	        });
		});
</script>
  
            
        <main class="bg-primary">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create New Account</h3></div>
                                    <div class="card-body">
                                        <form action="all_registration_student_server.jsp" method="post" >
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName">Full Name</label>
                                                        <input class="form-control py-4" name="ufullname" required id="inputFirstName" type="text" placeholder="Enter first name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputLastName"></label>
                                                        <input class="form-control py-4" name="ulname" id="inputLastName" type="hidden"  />
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control py-4" name="uemail" id="useremail" type="email" aria-describedby="emailHelp" placeholder="Enter email address" />
                                                <small id="checkuseremail"></small>
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputPassword">Password</label>
                                                        <input class="form-control py-4" name="upassword" value="123" id="inputPassword" type="password" placeholder="Enter password" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputPhone">Phone no.</label>
                                                        <input class="form-control py-4" name="uphone" id="inputPhone" type="text" placeholder="Enter Phone" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                               
                                                <div class="col-md-6 text-center py-3 ">
                                                       <label class="small mb-1 " for="inputCity">Gender</label>
                                                       <br>
                                                        <input type="radio"   id="gender" name="ugender" value="male" > Male&nbsp&nbsp&nbsp
                                                        <input type="radio"   id="gender" name="ugender" value="female"> Female
                                                </div>
                                                 <div class="col-md-6 text-center py-3 ">
                                                         <div class="form-group">
                        <label for="exampleInputPassword1">Select Course</label>
                        <select id="u_select_course" name="uselectcourse">
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
                                                    </div>
                                                    
   <script>
$(document).ready(function(){
	$("#u_select_course").change(function(){
		//alert(u_select_course);
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
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-6">
                                             <div class="form-group">
                                                        <label class="small mb-1" for="inputCity">City</label>
                                                        <input class="form-control py-4" name="ucity" id="inputCity" type="text" placeholder="Enter city" />
                                                    </div>
                                                    </div>
                                                    <div class="col-md-6">
                                             <div class="form-group">
                                                        <label class="small mb-1" for="inputCity">Batch</label>
                                                        <input class="form-control py-4" name="ubatch" id="batch" type="text"  /><span id="sid11"></span>
                                                    </div>
                                                    </div>
                                                    </div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputDate">Date of Registration</label>
													<input class="form-control py-4" name="udor" id="inputDate" type="date"  />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputFees">Timing</label>
													 <input class="form-control py-4" name="utiming"  id="timing" type="text"  />
												</div>
											</div>
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputDate">College Name</label>
													<input class="form-control py-4" name="ucollege" id="inputDate" type="text"  />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputFees">Total Fees</label>
													 <input class="form-control py-4" name="ufees"  id="fees" type="text" />
												</div>
											</div>
										</div>
										<div class="form-row">
										<div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">Payment Method</label>
                                                         <select id="paybutton" name="payment">
                                                        
                                                        <option  value="cash">Cash</option>
                                                        
                                                        <option  value="online">Online</option>
                                                        
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="textinput1" class="col-md-6">
												<div  class="form-group">
													<label class="small mb-1" for="inputFees">Amount</label>
													 <input class="form-control py-2" name="uamount" id="fees" placeholder="enter amount 1" value="1000" id="inputFees" type="text" />
												</div>
												
											</div>
											<div id="textinput2" class="col-md-6">
												<div  class="form-group">
													<label class="small mb-1" for="inputFees">Transtion Id</label>
													<input class="form-control py-2"  placeholder="Transtion Id"  id="inputFees" type="text" />
													<label class="small mb-1" for="inputFees">Amount</label>
													<input class="form-control py-2" name="uamount" value="1000" placeholder="Amount"  id="inputFees" type="text" />
													 
												</div>
												
											</div>
                                               </div>
										<div class="form-group">
                                                        <label class="small mb-1" for="inputAddress">Address</label>
                                                      <textarea name="uaddress" name="uaddress" class="form-control" id="about" cols="" rows="5" placeholder="Address"></textarea>
                                                    </div>
                                            <div><button class="form-group mt-4 mb-0 btn btn-primary btn-block" >Create Account</button></div>
                                        </form>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </main>            
            
            
            </div>
<!--                   payment section                                    -->
            
            <div id="fees_management">
            
            <main>
                
                    <div class="container-fluid">
                       
                       <div class="card-body"  style="width:50%; margin-left:250px; ">
                 <h3 class="text-center">Student Fees Managment</h3>
          
                
                
                 </div>
                 <div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Fees Managament -DataTable
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Full Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                
                                                <th>Date of Registartion</th>
                                                <th>Total Fees</th>
                                                <th>Paid Fess</th>
                                                <th>Remaining Fees</th>
                                                <th>Course</th>
                                                <th>Batch</th>
                                                <th>Update Fees</th>
                                               
                                               
                                            </tr>
                                        </thead>
                                    
                                        <tbody>
                                            <%
                                            try
                                            {
                                            	   Class.forName("com.mysql.jdbc.Driver");
                                               	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
                                            	   String sql ="SELECT * FROM tbl_all_student_registration";
                                            		PreparedStatement pst =con.prepareStatement(sql);
                                            	     ResultSet rs = pst.executeQuery();
                                            	   while(rs.next())
                                            	   {
                                            		   
                                            	   %>
                                            		   <tr>
                                                       <td><%=rs.getInt(1)%></td>
                                                       <td><%=rs.getString(2)%></td>
                                                       <td><%=rs.getString(3)%></td>
                                                       <td><%=rs.getString(5)%></td>
                                                       <td><%=rs.getString(9)%></td>
                                                       <td><%=rs.getString(12)%></td>
                                                       <td><%=rs.getString("paidfees")%></td>
                                                       <td><%=rs.getString("remainingfees")%></td>
                                                       <td><%=rs.getString("selectcourse")%></td>
                                                       <td><%=rs.getString("batch")%></td>
                                                      
                                                       <td><a href="fees_management.jsp?id=<%=rs.getInt(1)%>"><span class="fa fa-pending fa-spin"></span></a></td> 
                                                      
                                                      
                                                   </tr>
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
                                                                             
                                            
                                         
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>

                </main>
               
            
            </div>
            
            
            </div>
</div>


<!--//////////////////////////////////////////////////////////////DASHBOARD CONTENT END/////////////////////////////////////////////////////////////////////////////-->
        
        
        
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
</body>
</html>