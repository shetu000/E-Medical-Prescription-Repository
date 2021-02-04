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
<jsp:include page="patient_menu.jsp"></jsp:include>
      <%
    ArrayList<PrescriptionModel> alist = (ArrayList<PrescriptionModel>)session.getAttribute("alluserlist");
    if(alist.size() > 0)
    {
%>
  <div class="container">
    <div align="center">  
       <h5>All prescription detail</h5>
      
    <table border="1">
         <tr>
           <th>Doctor MCI NO.</th>
           <th>Doctor Name</th>
           <th>Date & Time</th>
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
    session.removeAttribute("alluserlist");
      
  %>
</body>
</html>