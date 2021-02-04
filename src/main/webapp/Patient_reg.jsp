<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
   
    <meta charset="utf-8">
    <link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">
 
    
  <title>Patient Registration Form </title>
  
 
   <script src="js/validation.js"></script>
 </head>
<body>


 <jsp:include page="menubar.jsp"></jsp:include>

 <div class="container">
      <div class="row">
          <div class="col-md-6 col-sm-8 mx-auto">
               <div class="card">
                   <div class="card-body" style="background-color: #eeefff">
                        <div class="mt-2 text-center">
                             <h2>PATIENT REGISTRATION FORM</h2>
                         		</div>
                   
                         <div class="mt-4">
                           <form action="regpatient" method="post">
                             <div class="form-group">
                                 <label for="name" class="text-uppercase font-weight-bold text-primary">Patient Name</label>
                                 <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Full Name" required="required" onblur="checkname()" onfocus= "clearname()">
                                 <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                             </div>
                              <div class="form-group">
                			   <label for="adhaar" class="text-uppercase font-weight-bold text-primary" >ADHAAR NO.</label>
                  				 <input type="number" name="adhaar" class="form-control" id="adhaar" placeholder="Enter Your adhaar no." required="required"  onblur="val()" onfocus="clearadhaar()">
                  				 <div class="text-danger font-weight-bold" id="adhnoerrormessage"></div>
              					  </div>
                             
                          
                             
                              <div class="form-group">
                                 <label for="email" class="text-uppercase font-weight-bold text-primary">Email</label>
                                 <input type="email" class="form-control" id="email" name="email" placeholder="Enter Your Email" required="required" onblur="checkemail()" onfocus= "clearemail()">
                                 <div class="text-danger font-weight-bold" id="emailerrormessage"></div>
                             </div>
                             
                              <div class="form-group">
                                 <label for="mobno" class="text-uppercase font-weight-bold text-primary">Mobile No</label>
                                 <input type="number" class="form-control" id="mobno" name="mobno" placeholder="Enter Your Mobile No" required="required" onblur="checkmobno()" onfocus= "clearmobno()">
                                 <div class="text-danger font-weight-bold" id="mobnoerrormessage"></div>
                             </div>
                             <div class="form-group">
                                 <label for="gmobno" class="text-uppercase font-weight-bold text-primary">Guardian Mobile No</label>
                                 <input type="number" class="form-control" id="gmobno" name="gmobno" placeholder="Enter Your  Guarian's Mobile No" required="required" onblur="gcheckmobno()" onfocus= "gclearmobno()">
                                 <div class="text-danger font-weight-bold" id="gmobnoerrormessage"></div>
                             </div>
                              <div class="form-group">
                   				 <label for="password" class="text-uppercase font-weight-bold text-primary">Password</label>
                   				 <input type="password" name="password" id="password" class="form-control" placeholder="Enter password" required="required" onblur="checkpassword()" onfocus="clearpassword()">
                  				<div class="text-danger font-weight-bold" id="passerrormessage"></div>
                  				 <input type="checkbox" name="check1" onclick="passwordvisible()"> SHOW PASSWORD
                			</div>
                
                              <div class="form-group">
                                 <label for="rpassword" class="text-uppercase font-weight-bold text-primary">Re-enter password</label>
                                 <input type="password" class="form-control" id="rpassword" name="rpassword" placeholder="Re-Enter Your Password" required="required" onblur="matchpassword()" onfocus= "rclearpassword()">
                                <div class="text-danger font-weight-bold" id="rpasserrormessage"></div>
                                 <div>Min 4 - Max 8</div>
                                 <div class="text-danger font-weight-bold" id="rpasswrdnoerrormessage"></div>
                             </div>
                     
                              <div class="form-group">
                                 <label for="gender" class="text-uppercase font-weight-bold " >Gender</label>
                                 <input type="radio" name="gender" id="male" value="Male" required="required" />
                                      <span id="maledisp">Male</span>
                                 <input type="radio" name="gender" id="female" value="Female" />
                                      <span id="femaledisp">Female</span>
                                 <input type="radio" name="gender" id="other" value="other" />
                                      <span id="otherdisp">Other</span>
                             
                             </div>
  
                                        
                             <button type="submit" class="btn btn-primary btn-block" value="SUBMIT">Create Account</button>
                         </form>
                       </div> <!-- Form tag div -->
                  </div> <!-- Card Body End -->
              </div> <!-- Card End -->
           </div> <!-- Col alignment end -->
         </div> <!-- Row End -->
     </div> <!-- Container End -->

</body>

</html>
    