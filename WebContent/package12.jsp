<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Favicons -->
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
<title>User login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<header>
  <!-- Intro settings -->
  <style>
    /* Default height for small devices */
    #intro-example {
      height: 400px;
    }

    /* Height for devices larger than 992px */
    @media (min-width: 992px) {
      #intro-example {
        height: 600px;
      }
    }
  </style>
  <!-- Navbar -->
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
</header>
  <!-- Navbar -->

  <!-- Navbar -->

  <!-- Background image -->
  
  <div
    id="intro-example"
    class="p-5 text-center bg-image"
    style="background-image: url('assets/img/gallery/23d.jpg'); background-repeat: no-repeat; background-size: cover;"
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.7); margin-top:150px;">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-white">
          <h1 class="mb-3">Wash</h1>
          <h5 class="mb-4">QTY 1kg - 3kg = Rs 200/=<br>Additional 1kg = Rs 200/=</h5>
          <form method="post" action="SelectServlet">
          <h3>Enter Number of KGs</h3>
          <input type = "number" name="no1"/><br>
            <input type = "submit" class="btn btn-outline-light btn-lg m-2" name = "p11" value ="Login, Book and Wash"/> 
       
          </form>
         
        </div>
      </div>
    </div>
  </div>
  <!-- Background image -->

</body>
</html>