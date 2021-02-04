<%@page import="com.adhaar.medical.model.DoctorModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.adhaar.medical.model.PrescriptionModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Area</title>
</head>
<body>
<jsp:include page="Admin_menu.jsp"></jsp:include>
      <%
    ArrayList<DoctorModel> alist = (ArrayList<DoctorModel>)session.getAttribute("doclist");
    if(alist.size() > 0)
    {
%>
  <div class="container">
    <div align="center">  
       <h5>New Doctor List</h5>
      
    <table border="1">
         <tr>
       	   <th>Doctor MCI NO.</th>
           <th>Doctor Name</th>
           <th>Mobile No.</th>
           <th>Qualification</th>
           <th>Gender</th>
           <th>Specialist</th>
         </tr>  
      <%
          for(DoctorModel uobj : alist)
          {
        	  
      %>
         <tr>
          <td><%= uobj.getRegno()%></td>
           <td><%= uobj.getName()%></td>
           <td><%= uobj.getMobno()%></td>
           <td><%= uobj.getQualification()%></td>
           <td><%= uobj.getGender()%></td>
           <td><%= uobj.getCatagory()%></td>
           <td><a href="/acessdoc?regno=<%= uobj.getRegno()%>">Access</a></td>
           <td><a href="/deletedoc?regno=<%= uobj.getRegno()%>">Delete</a></td>
           
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
      <h1 style="color: red;">NO NEW DOCTOR FOUND</h1>
  <%
    }
    session.removeAttribute("doclist");
      
  %>
</body>
</html>