<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.util.Random"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Register</title>
<style>
body {
	background-color: #3498DB;
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
	
	right: 0;
	bottom: 0;
	left: 0;
	background-color: #f2f2f2;
	padding: 25px;
}
#account_page_new_address_line1{
width: 300px;
height: 100px;
}
</style>
<script>
function validateForm() {
    var x = document.forms["myForm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}
</script>
</head>
<body>
	<div class="container">
		<div class="row centered-form">
			<div
				class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Sign Up</h3>
					</div>
					<div class="panel-body">

						<form:form action="RegisterSuccess" commandName="Userdetails" onsubmit="return validateForm();" method="post">
							<p style="color: red">${msg}</p>							
								<div class="col-md-8">
								<div class="form-group">
									<input type="text" name="fullname" id="fullname" class="form-control input-sm" required="true" pattern="[a-zA-Z ]+" title="Name should be alphabets"
										placeholder="Full Name">
								</div>
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<input type="text" name="username" id="username" class="form-control input-sm" required="true"
										placeholder="Username">
								</div>
							</div>

							<div class="col-md-12">
								<div class="form-group">
									<input type="email" name="email" id="email" class="form-control input-sm" required="true"
										placeholder="Email">
								</div>
							</div>

							<div class="col-md-8">
								<div class="form-group">
									<input type="password" name="password" id="password"
										class="form-control input-sm" required="true" maxlength="10"
										placeholder="Password">
								</div>
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<input type="text" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" maxlength="10" name="contact" id="contact"
										required="true" class="form-control input-sm"
										placeholder="Mobile Number">
								</div>
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<div class="unit size1of3 lastUnit"> <textarea class="fk-input" name="address" rows="" cols="" id="account_page_new_address_line1" placeholder="Address"></textarea><br/> <small class="co_note">(Maximum Limit : 216 characters)</small> </div> </div>
							</div>

							<div class="col-md-8">
								<input type="submit" name="submit" value="Register"
									class="btn btn-info btn-block">
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="container-fluid bg-4 text-center footer_color">
	<p class="f_fontcolor">
		<a href="http://www.shoppingcart.com">www.shoppingcart.com</a>
	</p>
	</footer>
</body>
</html>