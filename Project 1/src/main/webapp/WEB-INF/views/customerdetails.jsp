<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="AdminHome.jsp" %>

	<div class="container-fluid"
		style="background-color: gray; color: purple; height: 60px;">
		<center>
			<h2>Customer Details</h2>
		</center>
	</div>
	<div class="container">
	<c:if test="${!empty ListUserdetails}">
	<div class="table-responsive">
	<table class="table">
			<thead>
			<tr>
				<th>USER ID</th>
				<th>USERNAME</th>
				<th>MOBILE NO</th>
				<th>MAIL ID</th>
			
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${ListUserdetails}" var="userdetails">
				<tr>
					<td>${userdetails.userid}</td>
					<td>${userdetails.name}</td>
					<td>${userdetails.contact}</td>
					<td>${userdetails.email}</td>
					
				</tr>
			</c:forEach>
			</tbody>
		</table>
		</div>
	</c:if>
	</div>



</body>