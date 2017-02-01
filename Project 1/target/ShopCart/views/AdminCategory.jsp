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
 <div class="container-fluid" style="background-color:black;color:gray;height:80px;">
  <center><h2>WELCOME ADMIN</h2></center>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <ul class="nav navbar-nav navbar-right">
      <li><a href="#">View Customers</a></li>
       <li><a href="#">View Products</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-0ut"></span> Log Out</a></li>
    </ul>
  </div>
</nav>
   <div class="row">
    <nav class="col-sm-3">
      <ul class="nav nav-pills nav-stacked" data-offset-top="205">
        <li class="active">
        <a href="manageProducts">PRODUCT</a></li>
        <li><a href="manageSuppliers">SUPPLIER</a></li>
        <li><a href="manageCategories">CATEGORY</a></li>
      </ul>
    </nav>
    <div class="col-sm-9">
	<div class="container-fluid"
		style="background-color: gray; color: purple; height: 80px;">
		<center>
			<h2>Category Details</h2>
		</center>
	</div>
	<div class="container">
	<h1>Add a Category </h1>		
	<c:url var="addAction" value="/addcategory"></c:url>

	<form:form action="${addAction}" commandName="category" class="form-horizontal">
	
			<div class="form-group">
							<form:label path="id" class="control-label col-sm-2" >
						<spring:message  text="Category ID" />
					</form:label>
					<div class="col-sm-10">
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,7}" required="true" title="id should contains 3 to 7 characters" class="form-control" /></td>
					</c:otherwise>
				</c:choose>
			<form:input path="id"  hidden="true" />
			</div>
			</div>
			<br>
			<div class="form-group">
				<form:label path="name" class="control-label col-sm-2" >
						<spring:message  text="Category Name" />
					</form:label>
					<div class="col-sm-10">
				<form:input path="name" required="true" class="form-control" />
				</div>
				</div>
				<br>
				<div class="form-group">
			<form:label path="description" class="control-label col-sm-2" >
						<spring:message  text="Category Description" />
					</form:label>
					<div class="col-sm-10">
				<form:input path="description" required="true" class="form-control"/>
			</div>
			</div>
			<br>
			
	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
				<c:if test="${!empty category.name}">
				
						<input type="submit" class="btn btn-success" 
							value="<spring:message text="Edit Category"/>" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Category"/>" />
					</c:if>
		</div>
		</div>
	</form:form>	
	<br>
	<h3>Category List</h3>
	
	<c:if test="${!empty categoryList}">
	<div class="table-responsive">
			<table class="table">
			<thead>
			<tr>
				<th>Category ID</th>
				<th>Category Name</th>
				<th>Category Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='/editcategory/${category.id}' />">Edit</a></td>
					<td><a href="<c:url value='/removecategory/${category.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		</div>
	</c:if>
</div>
</div>
</body>
</html>