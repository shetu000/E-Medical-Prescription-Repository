<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

   
    <title>PATIENT LOGIN PAGE</title>
     <script>
 
     function passwordvisible() 
     {
       var obj = document.getElementById("password");
       if (obj.type === "password") 
   	{
          obj.type = "text";
       } 
   	else 
   	{
          obj.type = "password";
       }
     }

  function val()
  {
	  
	  if((frm.adhaar.value).length==16)
		  return true;
	  else
		  {
		  alert("UID No. should be 16 digits");
		  frm.adhaar.focus();
		  return false;
		  }
  }
  </script>
  </head>
  <body>
  
  
   <jsp:include page="menubar.jsp"></jsp:include>
  
  
  <div class="container">

<br/>

  <div class="row">
    <div class="col-md-6 col-sm-8 mx-auto">
       <div class="card">
          <div class="card-body" style="background-color: #eeefff">
                                                    
            <div class="mt-2 text-center">
               <h3 style="color: darkblue;">PATIENT LOGIN </h3>
            </div>
              
            <div class="mt-4 text-left">
                 
              <form name="frm" action="patlogin" method="post">
                   ${errmsg}                                          
                <div class="form-group">
                   <label for="adhaar" class="text-uppercase font-weight-bold text-primary" >ADHAAR NO.</label>
                   <input type="number" name="adhaar" class="form-control" placeholder="Enter Your adhaar no." required >
                </div>
                <div class="form-group">
                   <label for="password" class="text-uppercase font-weight-bold text-primary">Password</label>
                   <input type="password" name="password" id="password" class="form-control" placeholder="Enter password" required>
                   <input type="checkbox" name="check1" onclick="passwordvisible()"> SHOW PASSWORD
                </div>
                
				 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-primary" value="LOGIN" onclick="val()"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </form>
            </div> <!-- Form tag div -->
          </div> <!-- Card Body End -->
       </div> <!-- Card End -->
     </div> <!-- Col alignment end -->
    </div> <!-- Row End -->
</div> <!-- Container End -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    </body>
</html>