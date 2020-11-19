<!DOCTYPE html>
<%@ page import ="java.sql.*"%> 

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>update fees</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        
    </head>
    <body >
        <div>
            <div>
            <main class="bg-primary">
                
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Update Student Fees</h3></div>
                                   
                                    <div class="card-body">
                                    
                                        <form action="update_student_fees_server.jsp" method="post" >
                                        <%
String id=request.getParameter("id");
try
{
	Class.forName ("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql = "SELECT * FROM tbl_all_student_registration WHERE id='"+id+"'";
    PreparedStatement pst = con.prepareStatement(sql);
	   ResultSet rs = pst.executeQuery();
	   while (rs.next())
	   {
		   
		   
                 %>
                                            <div class="form-row">
                                                
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName">First Name</label>
                                                        <input class="form-control py-4" name="ufullname" value="<%=rs.getString("fullname")%>" required id="inputFirstName" type="text" placeholder="Enter first name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputLastName"></label>
                                                        <input class="form-control py-4" name="id" value="<%=rs.getInt(1)%>" id="inputLastName" type="hidden"  />
                                                    </div>
                                                </div>
<!--                                                 <div class="col-md-6"> -->
<!--                                                     <div class="form-group"> -->
<!--                                                         <label class="small mb-1" for="inputLastName"></label> -->
<%--                                                         <input class="form-control py-4" name="ulname" value="<%=rs.getInt(1)%>"  id="inputLastName" type="hidden"  /> --%>
<!--                                                     </div> -->
<!--                                                 </div> -->
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control py-4" name="uemail"  value="<%=rs.getString("email")%>"id="inputEmailAddress" type="email" aria-describedby="emailHelp" placeholder="Enter email address" />
                                                
                                                
                                            </div>
                                            <div class="form-row">
                                                
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputPhone">Phone no.</label>
                                                        <input class="form-control py-4" name="uphone" value="<%=rs.getString("phone")%>" id="inputPhone" type="text" placeholder="Enter Phone" />
                                                    </div>
                                                </div>
                                            </div>
                                            
                                       
								
										<div class="form-row">
										
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputFees">Total Fees</label>
													 <input class="form-control py-4" name="ufees" value="<%=rs.getString("totalfees")%>"  id="inputFees" type="text" />
												</div>
											</div>
										</div>
										<div class="form-row">
										
                                                <div class="col-md-6">
												<div  class="form-group">
													<label class="small mb-1" for="inputFees">Paid Fees</label>
													 <input class="form-control py-2" name="upaidfees"  placeholder="enter amount 1" value="<%=rs.getString("paidfees")%>" id="inputFees" type="text" />
												</div>
												
											</div>
											     <div class="col-md-6">
												<div  class="form-group">
													<label class="small mb-1" for="inputFees">Remaining Fees</label>
													 <input class="form-control py-2" name="uremainingfees"  placeholder="enter amount 1" value="<%=rs.getString("remainingfees")%>" id="inputFees" type="disabled" />
												</div>
												
											</div>
										
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
                                            <div>
                                            <button class="form-group mt-4 mb-0 btn btn-primary btn-block" >Update Fees</button>
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
