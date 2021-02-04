<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

   
    <title>Add prescription</title>
  </head>
  <body>
   
  <jsp:include page="dr_menu.jsp"></jsp:include>
  <div class="container">
  <form action="uploadprescription" method="POST">
  <div class="text-right"> 
  <button type="submit" class="btn btn-primary " data-toggle="button" aria-pressed="false">UPLOAD </button>
</div>
       
<br/>

<div class="row">
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body" style="background-color: #eeefff">
        
         <!-- <form action="regdoctor" name='registration' method="post"> -->
                            <div class="form-group">
                                 <label for="email" class="text-uppercase font-weight-bold text-primary">AGE</label>
                                 <input type="number" class="form-control" id="age" name="age" placeholder="Enter patient's age" required="required" onblur="checkemail()" onfocus= "clearemail()">
                                 <div class="text-danger font-weight-bold" id="patientage"></div>
                             </div>
                             <div class="form-group">
                                 <label for="name" class="text-uppercase font-weight-bold text-primary">weight</label>
                                 <input type="number" class="form-control" id="weight" name="weight" placeholder="Enter patient's  weight" required="required" >
                                 <div class="text-danger font-weight-bold" id="weight"></div>
                             </div>
                             <div class="form-group">
                                 <label for="email" class="text-uppercase font-weight-bold text-primary">Blood pressure </label>
                                 <input type="number" class="form-control" id="bloodpressure" name="bloodpressure" placeholder="Enter patient's blood pressure" required="required" onblur="checkemail()" onfocus= "clearemail()">
                                 <div class="text-danger font-weight-bold" id="patientbloodpressure"></div>
                             </div>
                             <div class="form-group">
                                 <label for="email" class="text-uppercase font-weight-bold text-primary">suger level</label>
                                 <input type="text" class="form-control" id="sugerlevel" name="sugerlevel" placeholder="Enter patient's suger level" required="required" onblur="checkemail()" onfocus= "clearemail()">
                                 <div class="text-danger font-weight-bold" id="patientsugerlevel"></div>
                             </div>
                              <div class="form-group">
                                 <label for=" disease name" class="text-uppercase font-weight-bold text-primary">Disease type</label>
                                 <input type="text" class="form-control" id="diseases" name="diseases" placeholder="Enter disease type" required="required" onblur="checkname()" onfocus= "clearname()">
                                 <div class="text-danger font-weight-bold" id="diseasetype"></div>
                             </div>
                             <div class="form-group">
                                 <label for=" disease name" class="text-uppercase font-weight-bold text-primary">Disease symptoms</label>
                                 <textarea name="diseasesymptom" id="diseasesymptom" rows="4" cols="40" ></textarea> 
                             </div>
                             <div class="form-group">
                                 <label for=" disease name" class="text-uppercase font-weight-bold text-primary">PREVIOUS RELATED HISTORY</label>
                                 <textarea name="relatedhistory" id="relatedhistory" rows="3" cols="40" ></textarea> 
                             </div>
       
      </div>
    </div>
  </div>
  
  <div class="col-sm-8">
    <div class="card " style="width: 50rem;">
     <div class="form-group">
            <label for="password" class="text-uppercase font-weight-bold text-primary">Medicine prescription</label>
            <textarea name="prescription" id="prescription" rows="15" cols="105" required></textarea>
     </div>
    </div>

<div class="card " style="width: 50rem;">
     <div class="form-group">
            <label for="password" class="text-uppercase font-weight-bold text-primary">Pathological Report</label>
            <textarea name="pathreport" id="pathreport" rows="5" cols="105" ></textarea>
     </div>
    </div>

<div class="card " style="width: 50rem;">
     <div class="form-group">
            <label for="password" class="text-uppercase font-weight-bold text-primary">special advice</label>
            <textarea name="advice" id="advice" rows="4" cols="105" ></textarea>
     </div>
    </div>
</div>
</div>
</form>
</div>
</body>

</html>