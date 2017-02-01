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


</style>
<!-- footer -->
 <link rel="stylesheet" href="resources/css/footer-basic-centered.css">
</head>
<body>
<%@include file="header.jsp" %>

<div class="content">
				<!--login-->
			<div class="login">
				<div class="main-agileits">
					<div class="form-w3agile">
						<h3>Login To New Shop</h3>

			    		<form:form action= "perform_login" name="myForm" method="post">
						<p style="color: red">${msg}</p>
			    					<div class="key">
								<i class="fa fa-user" aria-hidden="true"></i>
								    <input type="text" name="username" value="" id="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="" placeholder="Username">
			    				<div class="clearfix"></div>
							</div>
			    				
			    				<div class="key">
								<i class="fa fa-lock" aria-hidden="true"></i>
	    						<input type="password" name="password" id="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="" placeholder="Password">
			    					
			    			<div class="clearfix"></div>
							</div>
			    			<input type="submit" value="Login">
			    								
			    		</form:form>
			    		</div>
			    		<div class="forg">
						<a href="#" class="forg-left">Forgot Password</a>
						<a href="Register" class="forg-right">Register</a>
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
				<!--login-->
	</div>		    		
			    	
    
    <%@include file="footer.jsp" %>

</body>
</html>