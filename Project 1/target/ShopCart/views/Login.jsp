<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.button {
	padding: 15px 25px;
	font-size: 24px;
	text-align: center;
	cursor: pointer;
	outline: none;
	color: #fff;
	background-color: #4CAF50;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px #999;
}

.button:hover {
	background-color: #3e8e41
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
</style>
</head>
<body>
	<script type="text/javascript">
		function validate() {
			if (document.form1.uname.value === "") {
				alert("enter your user name");
				return false;
			}
			if (document.form1.pwd.value === "") {
				alert("Enter the password");
				return false;
			}

			else {
				alert("Login successfully");
				return true;
			}
		}
	</script>
	
	<div class="container">
		<center>
			<div class="jumbotron">
				<h2>SIGN IN</h2>
			</div>
		</center>
		<br>
		<br>
		<c:url var="addAction" value="/isValidUser">
		</c:url>
		<form:form class="form-horizontal" method="post" action="${addAction}" onsubmit="return validate()">
		
			<div class="form-group">
				<label class="control-label col-sm-2">
					<spring:message text="USER ID:" />
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="userid">
				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2">
					<spring:message text="PASSWORD:" />
				</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="password">
				</div>
			</div>
	</div>
	<center>
		<button type="submit" class="button">SUBMIT</button>
	</center>
	<br>
	<br>
	<br>
	<br>
	</form:form>


</body>
</html>