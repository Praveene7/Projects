<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login</title>
<style>

body{
    background-color: #3498DB;
}
.centered-form{
	margin-top: 60px;
}

.centered-form {
	margin-top: 60px;
}

.centered-form .panel {
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(21, 67, 96, 0.3) 20px 20px 20px;
}

.panel-title {
	font-size: 30px
}

.panel-title {
	color: #839192;
}

.panel-body {
	background-color: #808B96;
}


footer {
	position: absolute;
 	 right: 0;
  	bottom: 0;
  	left: 0;
      background-color: #f2f2f2;
      padding: 25px;  
    }
</style>

</head>
<body>
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Log in</h3>
			 			</div>
			 			<div class="panel-body">
			    		<form:form action= "perform_login" name="myForm" method="post">
						<p style="color: red">${msg}</p>
			    				<div class="col-md-12">
			    					<div class="form-group">
																	
			                <input type="text" name="username" value="" id="username" class="form-control input-sm" placeholder="Username">
			    					</div>
			    				</div>
								<div class="a-coloumn a-span7 a-text-right a-span-last">
								<a id="auth-fpp-link-bottom" class="a-spacing-null a-link-normal" href="#"></a>
								</div>
			    				<div class="col-md-12">
			    					<div class="form-group">
									
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>		
<div class="col-md-8">
<label><input type="checkbox"> Remember me</label>	
</div>							
			    			<div class="col-md-8">
			    			<input type="submit" value="Login" class="btn btn-info btn-block">
			    		</div>
						<div class="etc-login-form">
<p>forgot your password? <a href="#">click here</a></p>
<p>new user? <a href="register">create new account</a></p>
</div>
			    		</form:form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
    
    <footer class="container-fluid bg-4 text-center footer_color">
  <p class="f_fontcolor"><a href="http://www.shoppingcart.com">www.shoppingcart.com</a></p>
</footer>
</body>
</html>