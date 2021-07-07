<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dao.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
*{padding: 0; margin: 0; box-sizing: border-box;}
body{height: 900px;}
header {
	background: url('http://www.autodatz.com/wp-content/uploads/2017/05/Old-Car-Wallpapers-Hd-36-with-Old-Car-Wallpapers-Hd.jpg');
	text-align: center;
	width: 100%;
	height: auto;
	background-size: cover;
	background-attachment: fixed;
	position: relative;
	overflow: hidden;
	border-radius: 0 0 85% 85% / 30%;
}
header .overlay{
	width: 100%;
	height: 100%;
	padding: 50px;
	color: #FFF;
	text-shadow: 1px 1px 1px #333;
  background-image: linear-gradient( 135deg, #9f05ff69 10%, #fd5e086b 100%);
	
}

h1 {
	font-family: 'Dancing Script', cursive;
	font-size: 80px;
	margin-bottom: 30px;
}

h3, p {
	font-family: 'Open Sans', sans-serif;
	margin-bottom: 30px;
}

.button {
	border: none;
	outline: none;
	padding: 10px 20px;
	border-radius: 50px;
	color: #333;
	background: #fff;
	margin-bottom: 50px;
	text-decoration: none;
	box-shadow: 0 3px 20px 0 #0000003b;
}
.button:hover{
	cursor: pointer;
}
</style>
<meta charset="ISO-8859-1">
<title>Login Failed</title>
</head>
<body>
<header>
	<div class="overlay">
<h1>Cannot Login</h1>
<h3>Invalid Username or Password</h3>
<p>Try Logging Again!</p>
	<br>
	<a class="button" href= "home.jsp#schedule">Log Again!</a>
		</div>
</header>

</body>
</html>