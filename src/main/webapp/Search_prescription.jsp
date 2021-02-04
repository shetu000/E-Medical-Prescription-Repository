<%@page import="java.util.ArrayList"%>
<%@page import="com.adhaar.medical.model.PrescriptionModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="dr_menu.jsp"></jsp:include>
<form  method="post" action="searchprescription">
<h1>choose Search catagory</h1>
<select name="catagory" id="catagory" required>
                                 		<option value="" selected >select...</option>
                                       <option value="age">Age</option>
                                       <option value="diseases">diseases</option>
                                       <option value="sugerlevel">Suger Level</option>
                                        <option value="bloodpressure">blood pressure</option>
                                       <!-- <option value="disease_symptom">Disease Symptom</option>
                                        <option value="path_report">Path Report</option> -->
                                 </select>
       <input type="text" name="searchvalue" id="searchvalue"  placeholder="Enter search value" required>
       <input type="submit" value="SEARCH">
       
      </form>
      <%
      int check=(int)session.getAttribute("check");
      if(check==1)
      {
    ArrayList<PrescriptionModel> alist = (ArrayList<PrescriptionModel>)session.getAttribute("alluserlist");
    if(alist.size() > 0)
    {
%>
  <div class="container">
    <div align="center">  
       <h5>Searched prescription detail</h5>
      
    <table border="1">
         <tr>
            <th>Doctor MCI NO.</th>
           <th>Doctor Name</th>
           <th>Date & Time</th>
           <th>Age</th>
           <th>Weight</th>
           <th>Blood Pressure</th>
           <th>Suger Level</th>
           <th>Disease Symptom</th>
           <th>Disease</th>
           <th>Prescription</th>
           <th>Reports</th>
           <th>Special Advice</th>
         </tr>  
      <%
          for(PrescriptionModel uobj : alist)
          {
      %>
         <tr>
          <td><%= uobj.getMci()%></td>
           <td><%= uobj.getDocname()%></td>
           <td><%= uobj.getDatetime()%></td>
           <td><%= uobj.getAge()%></td>
           <td><%= uobj.getWeight()%></td>
           <td><%= uobj.getBloodpressure()%></td>
           <td><%= uobj.getSugerlevel()%></td>
           <td><%= uobj.getDiseasesymptom()%></td>
           <td><%= uobj.getDiseases()%></td>
           <td><%= uobj.getPrescription()%></td>
           <td><%= uobj.getPathreport()%></td>
           <td><%= uobj.getAdvice()%></td>
           
         </tr>
       
      <%
          }
      %>
     </table>
    </div>
  </div>
  <%
    }
    else
    {	
  %>
      <h1 style="color: red;">NO RECORDS FOUND</h1>
  <%
    }
    session.setAttribute("check", 0);
    session.removeAttribute("alluserlist");
      }
  %>
</body>
</html>