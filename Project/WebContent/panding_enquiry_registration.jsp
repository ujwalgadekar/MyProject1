<!DOCTYPE html>
<%@ page import ="java.sql.*"%> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Enquiry Registration</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        
    </head>
    <body >
        <div>
            <div>
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
	
<!-- Text-Input Hide Show	 -->
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
                                
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account For Enquiry </h3></div>
                                   
                                    <div class="card-body">
                                    
                                        <form action="all_registration_student_server.jsp" method="post" >
                                        <%
String id=request.getParameter("id");
try
{
	Class.forName ("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql = "SELECT * FROM tbl_student_enquiry WHERE id='"+id+"'";
    PreparedStatement pst = con.prepareStatement(sql);
	   ResultSet rs = pst.executeQuery();
	   while (rs.next())
	   {
		   String gender=rs.getString("gender");
		   
                 %>
                                            <div class="form-row">
                                                
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName">First Name</label>
                                                        <input class="form-control py-4" name="ufullname" value="<%=rs.getString(2)%>" required id="inputFirstName" type="text" placeholder="Enter first name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputLastName"></label>
                                                        <input class="form-control py-4" name="id" value="<%=rs.getInt(1)%>" id="inputLastName" type="hidden"  />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputLastName"></label>
                                                        <input class="form-control py-4" name="ulname" value="<%=rs.getInt(1)%>"  id="inputLastName" type="hidden"  />
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control py-4" name="uemail" id="useremail" value="<%=rs.getString(3)%>"id="inputEmailAddress" type="email" aria-describedby="emailHelp" placeholder="Enter email address" />
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
                                                        <input class="form-control py-4" name="uphone" value="<%=rs.getString(4)%>" id="inputPhone" type="text" placeholder="Enter Phone" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                               
                                                <div class="col-md-6 text-center py-3 ">
                                                <c:set var ="gender" value="<%=gender%>"></c:set>
                                                       <label class="small mb-1 " for="inputCity">Gender</label>
                                                       <br>
                                                        <input type="radio"   id="gender" name="ugender" value="male" <c:if test="${gender=='male'}">checked</c:if> > Male&nbsp&nbsp&nbsp
                                                        <input type="radio"   id="gender" name="ugender" value="female" <c:if test="${gender=='female'}">checked</c:if> > Female
                                                </div>
                                                
                                                <div class="col-md-6 text-center py-3 ">
                                     <div class="form-group">
                        <label for="exampleInputPassword1">Select Course</label>
                        <select id="u_select_course" name="uselectcourse">
                        <option  name="course" value="java "><%=rs.getString(9)%></option>
                        	<%
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
							String sql1="select distinct coursename from tbl_course_entry";
							PreparedStatement pst1 = con1.prepareStatement(sql1);
							ResultSet rs1 = pst1.executeQuery();
							while(rs1.next())
							{
								%>
								   <option > <%=rs1.getString(1) %></option>
							    <%
							
							}
							con1.close();
							pst1.close();
						}
						
						catch(Exception e)
						{
							out.print(" "+e.getMessage());
						}
						
						%>
                        
                        </select>
                      </div>
                                                    </div>
                                                
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-6">
                                             <div class="form-group">
                                                        <label class="small mb-1" for="inputCity">City</label>
                                                        <input class="form-control py-4" name="ucity" required id="inputCity" type="text" placeholder="Enter city" />
                                                    </div>
                                                    </div>
                                                    <div class="col-md-6">
                                             <div class="form-group">
                                                        <label class="small mb-1" for="inputCity">Batch</label>
                                                        <input class="form-control py-4" name="ubatch" id="batch" value="<%=rs.getString(10)%>"   id="inputCity" type="text"  />
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
													 <input class="form-control py-4" id="timing" name="utiming" value="<%=rs.getString(11)%>"  id="inputFees" type="text"  />
												</div>
											</div>
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputDate">College Name</label>
													<input class="form-control py-4" name="ucollege" value="<%=rs.getString(7)%>"  id="inputDate" type="text"  />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputFees">Total Fees</label>
													 <input class="form-control py-4" name="ufees" id="fees" value="<%=rs.getString(12)%>"  id="inputFees" type="text" />
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
													<input class="form-control py-2" name="ufees" id="fees" placeholder="Transtion Id"  id="inputFees" type="text" />
													<label class="small mb-1" for="inputFees">Amount</label>
													<input class="form-control py-2" name="uamount" id="uamount" value="1000" placeholder="Amount"  id="inputFees" type="text" />
													 
												</div>
												
											</div>
                                               </div>
										<div class="form-group">
                                                        <label class="small mb-1" for="inputAddress">Address</label>
                                                      <textarea name="uaddress" name="uaddress" required class="form-control" id="about" cols="" rows="5" placeholder="Address"></textarea>
                                                    </div>
      <%

	   }
   	con.close();
   	pst.close();
}
catch(Exception e)
{
	
out.print(e.getMessage());
}

%>

								
                                                    
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

									        <div>
                                            <button class="form-group mt-4 mb-0 btn btn-primary btn-block" >Create Account</button>
                                            </div>
         
                                        </form>
                                        
                                    </div>
                           
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
       
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
