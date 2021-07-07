<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Customer Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
img {
	size: 100px;
}
</style>
</head>
<body>
<style>
h1 {
	font-family: "Times New Roman ", WE, serif;
	font-size: 3.5em;
}
}
</style>

	<div class="container-fluid  bg-dark text-white">
		<br>
		<h1>
			<center>WE PROVIDE BEST LAUNDRY SERVICE</center>
			
			


		</h1>
		<form  method="post" action="LoginBookingServlet">
			
			<br>
			<table>
				<tr>
					<td>Username:</td>
					<td><input type="text" name="Username" placeholder="Username">
						Password :</td>
					<td><input type="password" name="Password"
						placeholder="Password"></td>
				</tr>
				<tr>
					<td><input type="submit" name="Login" value="Login"></td>
					<td><a href="register.jsp">Registration</a>
				</tr>
			</table>
			</br>
			
		</form>
	</div>

	<style>
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>

	<div id="demo" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="assets/img/gallery/20d.jpg"  width="1100" height="500">
				<div class="carousel-caption">

					
				</div>
			</div>
			<div class="carousel-item">
				<img src="assets/img/gallery/19d.jpg" alt="1st" width="1100" height="500">
				<div class="carousel-caption">
					
				</div>
			</div>
			<div class="carousel-item">
				<img src="assets/img/gallery/21d.jpg" alt="2nd" width="1100" height="500">
				<div class="carousel-caption">
					
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>