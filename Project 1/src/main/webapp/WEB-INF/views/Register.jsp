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
<!-- footer -->
 <link rel="stylesheet" href="resources/css/footer-basic-centered.css">
</head>
<body>
<%@include file="header.jsp" %>
	<div class="content">
				<!--login-->
			<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Register</h3>
					
						<form:form action="RegisterSuccess" commandName="Userdetails" onsubmit="return validateForm();" method="post">
							<p style="color: red">${msg}</p>							
								<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
								<input type="text" name="fullname" id="fullname"  required="true" pattern="[a-zA-Z ]+" title="Name should be alphabets"
										placeholder="Full Name">
								<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
									<input type="text" name="username" id="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="true"
										placeholder="Username">
								<div class="clearfix"></div>
						</div>
								<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
								<input type="email" name="email" id="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="true"
										placeholder="Email">
							<div class="clearfix"></div>
						</div>
							<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
									<input type="password" name="password" id="password" required="true" maxlength="10"
										placeholder="Password">
								<div class="clearfix"></div>
						</div>
						<div class="key">
						<i class="fa fa-mobile" aria-hidden="true"></i>
									<input type="text" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" maxlength="10" name="contact" id="contact"
										required="true" placeholder="Mobile Number">
										<div class="clearfix"></div>
						</div>
							
							<h3>Address</h3>
						<div class="key">
									<input type="text" name="billingAddress.houseNumber" id="houseNumber"   required="true"
										placeholder="Housenumber">
										<div class="clearfix"></div>
						</div>								
						<div class="key">
						<i class="fa fa-address-card-o" aria-hidden="true"></i>
									<input type="text" name="billingAddress.addressLine1" id="addressLine1"  pattern="[a-zA-Z ]+" title="Address should be alphabets" required="true"
										placeholder="Address Line1">
								<div class="clearfix"></div>
						</div>
						<div class="key">
						<i class="fa fa-address-card-o" aria-hidden="true"></i>
									<input type="text" name="billingAddress.addressLine1" id="addressLine2"  pattern="[a-zA-Z ]+" title="Address should be alphabets" required="true"
										placeholder="Address Line2">
								<div class="clearfix"></div>
						</div>
						<div class="key">
						<i class="fa fa-address-card-o" aria-hidden="true"></i>
									<input type="text" name="billingAddress.city" id="billingAddresscity"  pattern="[a-zA-Z ]+" title="City should be alphabets" required="true"
										placeholder="City">
								<div class="clearfix"></div>
						</div>
						<div class="key">
						<i class="fa fa-address-card-o" aria-hidden="true"></i>
									<input type="text" name="billingAddress.state" id="billingAddressstate"  pattern="[a-zA-Z ]+" title="State should be alphabets" required="true"
										placeholder="State">
								<div class="clearfix"></div>
						</div>
						<div class="key">
						<i class="fa fa-address-card-o" aria-hidden="true"></i>
									<input type="text" name="billingAddress.country" id="billingAddresscountry"  pattern="[a-zA-Z ]+" title="Country should be alphabets" required="true"
										placeholder="Country">
							<div class="clearfix"></div>
						</div>
						<div class="key">
						<i class="fa fa-address-card-o" aria-hidden="true"></i>
									<input type="text" name="billingAddress.zipCode" id="billingAddresszipCode"  pattern="[0-9 ]+" title="Zipcode should be Number" required="true"
										placeholder="ZipCode">
							<div class="clearfix"></div>
						</div>
								<input type="submit" name="submit" value="Register">
									
						</form:form>
						</div>
				
			</div>
		</div>
				<!--login-->
		</div>
										

	<%@include file="footer.jsp" %>
</body>
</html>