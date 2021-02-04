<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>CONTACT US</title>
</head>
  <body>
  <jsp:include page="menubar.jsp"></jsp:include>
  <P style="color: RED ;" align="center"><SMALL>GOT A QUESTION?</SMALL></P>
  <h1 ALIGN="CENTER" >CONTACT US</h1>
  <H6 align="center"> We're here to help and answer your any question you might have.<br>We look forward to hearing from you</H6>
  
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<div class="container">
<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <div class="form-group">
          <label for="name" class="text-uppercase font-weight-bold text-primary"> Name</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Full Name" required="required" onblur="checkname()" onfocus= "clearname()">
          <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
          </div> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                
          <div class="form-group">
          <label for="email" class="text-uppercase font-weight-bold text-primary">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Enter Your Email" required="required" onblur="checkemail()" onfocus= "clearemail()">
          <div class="text-danger font-weight-bold" id="emailerrormessage"></div>
          </div>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                
          <div class="form-group">
          <label for="name" class="text-uppercase font-weight-bold text-primary"> Mobile No.</label>
          <input type="number" class="form-control" id="name" name="name" placeholder="Enter Your Mobile No." required="required" onblur="checkname()" onfocus= "clearname()">
          <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
          </div>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                
            <div class="form-group">
          <label for="name" class="text-uppercase font-weight-bold text-primary">feedback<br></label>
           <textarea name=FEEDBACK rows="5" cols="60">   Enter Your Feedback here.....</textarea><br>
         <a href="home.jsp" class="btn btn-primary">Submit</a>
      </div>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">How Can We Help</h5>
        <p class="card-text">Please include a topic you want to inquiry.If you don't find what you need,fill out our contact form.</p>
        <img src="pic.jpg" class="card-img-top" alt="img no found">
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</div>
</div>

<div class="container">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">GET IN TOUCH</h5>
    <p class="card-text"> For support or any questions Email us at <u style="color:blue;" >medionline@upload.com </u> <br> CONTACT us on <b style="color:blue;" >7897756534</b><br>We'd love to hear from you.</p>
    
  </div>
  <img src="contact.jpg" class="card-img-top" alt="img no found">
</div>
</div>

 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>