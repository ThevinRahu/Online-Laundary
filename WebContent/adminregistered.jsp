<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
<style>
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}
</style>
<script>
//'.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
$(window).on("load resize ", function() {
  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
  $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();
</script>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<center>
<div class="btn-group" role="group" aria-label="Basic example">
<a href = "adminregistered.jsp"><button type="button" class="btn btn-secondary btn btn-primary">Registered</button></a>
<a href = "admin.jsp"><button type="button" class="btn btn-secondary btn btn-primary">Package Selectors</button></a>
 <a href = "#"><button type="button" class="btn btn-secondary btn btn-primary">Payment and Loyalty</button></a>
 <a href = "#"> <button type="button" class="btn btn-secondary btn btn-primary">Rate</button></a>
 <a href = "#"> <button type="button" class="btn btn-secondary btn btn-primary">Contacted</button></a>
</div>
</center>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@page import="dao.RegisterDao,model.*,java.util.*"%> 

<%  
// Call the get all records from the dao
List<RegisteredCustomers> list=RegisterDao.getAllRecords();  
request.setAttribute("list",list);  

%>  
<section>
  <!--for demo wrap-->
  <h1>Registered</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>NIC</th>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Gender</th>
          <th>Address</th>
          <th>DOB</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach items="${list}" var="u">
        <tr>
          <td>${u.getNIC()}</td>
          <td>${u.getName()}</td>
          <td>${u.getEmail()}</td>
          <td>${u.getTelno()}</td>
          <td>${u.getGender()}</td>
          <td>${u.getAddress()}</td>
          <td>${u.getDOB()}</td>
        </tr>
    </c:forEach>
      </tbody>
    </table>
  </div>
</section>
<form method="post" action="SearchRegisteredServlet">
<h4>Enter Email to Search: <input type = "text" style= "background-color:#ffddcc;" name = "search" placeholder = "Enter Email">
   <input type = "submit" value = "Search" name = "subs"  style= "background-color:#b2ff66;"></h4>
</form>
<%  
// Call the get all records from the dao
List<RegisteredCustomers> list1= RegisterDao.searchRecords();  
request.setAttribute("list1",list1);  

%>  
<section>
  <!--for demo wrap-->
  <h1>Searched Registered</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>NIC</th>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Gender</th>
          <th>Address</th>
          <th>DOB</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach items="${list1}" var="n">
        <tr>
          <td>${n.getNIC()}</td>
          <td>${n.getName()}</td>
          <td>${n.getEmail()}</td>
          <td>${n.getTelno()}</td>
          <td>${n.getGender()}</td>
          <td>${n.getAddress()}</td>
          <td>${n.getDOB()}</td>
        </tr>
    </c:forEach>
      </tbody>
    </table>
  </div>
</section>

<!-- follow me template -->

</body>
</html>