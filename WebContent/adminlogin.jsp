<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
<style>
body {
  background-image:url("assets/img/gallery/background.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  height : 100%; 
}

#login .container #login-row #login-column #login-box {
  margin-top: 250px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	
	<meta name="author" content="Yinka Enoch Adedokun">
	<title>Admin Login</title>
</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


    <div id="login" style="opacity:0.9">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="adminregistered.jsp" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" name="password" id="password" class="form-control">
                            </div>
                            <center>
                            <div class="form-group">
                                <label for="remember-me" class="text-info" ><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label>
                                <a href ="home.jsp" style = "margin-left:200px">Home</a><br>
                                <button type="submit" name="submit" class="btn btn-info btn-md" value="Login">Login</button>
                            </div>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
	<!-- Footer -->



</html>