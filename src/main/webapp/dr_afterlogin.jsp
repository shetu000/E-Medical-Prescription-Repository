<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Insert title here</title>
<STYLE>
 body{
  		background-image:url("img88.jpg");
  		background-repeat:no-repeat;
  		background-size:100%;
  }
</STYLE>
<script>

</script>
<body>
<%
	String name = (String)session.getAttribute("name");
	
%>

<h3 >DOCTOR NAME:${name}</h3>
<div class="container">
<div class="row">
<div class="col-sm-12">
 <h2 style="color: BLCAK;" align="CENTER">DOCTORS AREA</h2></I>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</div>
</div>
<div class="container">
<br/>
  <div class="row">
    <div class="col-md-7 col-sm-8 mx-auto">
       <div class="card">
          <div class="card-body" style="background-color:"">           
            <div class="mt-4 text-left">
              <form action="docafter_inputadhaar" method="post">                                                            
                <div class="form-group">
                   <label for="adhaar" class="text-uppercase font-weight-bold text-primary" >PATIENT ADHAAR NUMBER</label>
                   <br>${errmsg}
                   <input type="number" name="padhaar" class="form-control" placeholder="Enter patient's adhaar no." required >
                </div>
				 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-primary btn-block" value="SUBMIT"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </form>
            </div> 
          </div> 
       </div> 
     </div> 
    </div> 
</div> 
    

</body>
</html>