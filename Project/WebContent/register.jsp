<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Page Title - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body >
        <div>
            <div>
                <main class="bg-primary">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                                    <div class="card-body">
                                        <form action=registerserver.jsp method="post" >
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName">First Name</label>
                                                        <input class="form-control py-4" name="ufname" required id="inputFirstName" type="text" placeholder="Enter first name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputLastName">ID</label>
                                                        <input class="form-control py-4" name="ulname" id="inputLastName" type="text"  />
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control py-4" name="uemail" id="inputEmailAddress" type="email" aria-describedby="emailHelp" placeholder="Enter email address" />
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
                                                        <label class="small mb-1" for="inputCity">Select Course</label>
                                                        <br>
                                                        <select id="uselectcourse">
                                                        <option  name="course" value="java ">Course</option>
                                                        <option  name="course" value="java "> JAVA</option>
                                                        <option  name="course" value="c++"> C++</option>
                                                        <option  name="course" value="c"> C</option>
                                                        <option  name="course" value="angular"> ANGULAR</option>
                                                        </select>
                                                    </div>
                                                    </div>
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
                                                        <input class="form-control py-4" name="ubatch" id="inputCity" type="text"  />
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
													 <input class="form-control py-4" name="ufees"  id="inputFees" type="text"  />
												</div>
											</div>
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputDate">College Name</label>
													<input class="form-control py-4" name="udor" id="inputDate" type="text"  />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputFees">Fees</label>
													 <input class="form-control py-4" name="ufees"  id="inputFees" type="text" />
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
       
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
