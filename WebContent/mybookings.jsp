<%@page import="servlet.LoginBookingServlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%

//check whether a session is created (session will be created during login)
//this will stop from acessing the page by typing the url
//it wll redirect to the login

if(session.getAttribute("user")!= "user"){
	response.sendRedirect("UserLogin1.jsp");	
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,600);

*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background: #105469;
  font-family: 'Open Sans', sans-serif;
}
table {
  background: #012B39;
  border-radius: 0.25em;
  border-collapse: collapse;
  margin: 1em;
}
th {
  border-bottom: 1px solid #364043;
  color: #E2B842;
  font-size: 0.85em;
  font-weight: 600;
  padding: 0.5em 1em;
  text-align: left;
}
td {
  color: #fff;
  font-weight: 400;
  padding: 0.65em 1em;
}
.disabled td {
  color: #4F5F64;
}
tbody tr {
  transition: background 0.25s ease;
}
tbody tr:hover {
  background: #014055;
}

</style>

<link href="assets/img/favicon.png" rel="icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Bookings</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>

<body style=' background-image: url("assets/img/gallery/gallery/bg.jpg"); background-repeat: no-repeat; background-size: cover;'>
     <nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container-fluid">
      <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarExample01"
        aria-controls="navbarExample01"
        aria-expanded="false"
        aria-label="Toggle navigation" >
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="home.jsp" style="color:white; background-color:#0080ff" >Home</a>
          </li>
    
        </ul>
      </div>
    </div>
  </nav>
  <center>
  <h1 style = "color:blue; font-family:Lucida Console">My Bookings!</h1><br>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@page import="dao.PackageSelectDao,model.*,java.util.*"%> 
  <%  
// Call the get all records from the dao
List<PackageSelectors> list1=PackageSelectDao.searchRecords();  
request.setAttribute("list1",list1);  

%> 

<table>
   <thead>
        <tr>
        <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Package</th>
          <th>Qty(KGs)</th>
          <th>Price</th>
          <th>Mobile</th>
          <th>Status</th>
           <th>Kgs if Need to Change(if pending)</th>
        </tr>
      </thead>
   <tbody>
      <c:forEach items="${list1}" var="n">
        <tr>
        <td>${n.getNumber()}</td>
        <td>${n.getName()}</td>
        <td>${n.getEmail()}</td>
        <td>${n.getPackage()}</td>
        <td>${n.getQty()}</td>
        <td>${n.getPrice()}</td>
        <td>${n.getMobile()}</td>
        <td>${n.getStatus()}</td>
       
        <td><form  method="post" action="UpdatePackageServlet">
        <input type="text" name="number" hidden="hidden" value=${n.getNumber()}>
        <input type="text" name="package" hidden="hidden" value=${n.getPackage()}>
        <input type="number" name="qty" ${n.getStat()}><input type ="submit" class="btn btn-primary btn-sm" role="button" value = "Update" ${n.getStat()}></form></td>
        
        </tr>
         </c:forEach>
      </tbody>
</table>

<form method="post" action="DeleteBookingServlet">
<h4 style= "background-color:#99ccff;">Enter ID to Delete Booking: <input type = "number" style= "background-color:#99ccff;" name = "search" placeholder = "Enter ID">
   <input type = "submit" value = "Delete" name = "subs"  style= "background-color:red;"></h4>
   <p style = "background-color:#99ccff;">You can't delete bookings if the status is assigned!</p>
</form>
</center>
</body>

</html>