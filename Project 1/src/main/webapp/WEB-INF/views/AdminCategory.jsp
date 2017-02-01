<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Random"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.category_add{
	width: 600px;
	height: 400px;
	margin:  auto;
	padding: 10px;
	background-color: rgba(250,250,250, 0);
	border-radius: 10px;
    box-shadow: 0px 0px 5px 5px rgba(0, 0, 0, 0.3), 
    			inset 0px 1px 0px 0px rgba(250, 250, 250, 0.5);
    border: 1px solid rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<section class="category_add">
	<div class="container">
	<h1>Add a Category </h1><br>		
	<c:url var="addAction" value="/addcategory"></c:url>

	<form:form action="${addAction}" commandName="category" class="form-horizontal">
	
			<div class="form-group">
							<form:label path="id" class="control-label col-sm-2" >
						<spring:message  text="Category ID" />
					</form:label>
					<div class="col-sm-2">
					<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,7}" required="true" title="id should contains 3 to 7 characters" class="form-control" /></td>
					</c:otherwise>
				</c:choose>
			<form:input path="id" hidden="true" />
			</div>
			</div>
			<br>
			<div class="form-group">
				<form:label path="name" class="control-label col-sm-2" >
						<spring:message  text="Category Name" />
					</form:label>
					<div class="col-sm-4">
				<form:input path="name" required="true" class="form-control" />
				</div>
				</div>
				<br>
				<div class="form-group">
			<form:label path="description" class="control-label col-sm-2" >
						<spring:message  text="Category Description" />
					</form:label>
					<div class="col-sm-4">
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
	</section>	
	<br>
	<div class="container">
	<div class="row">
		        
        <div class="col-md-12">
        <h3>Category List</h3>
        <c:if test="${!empty categoryList}">
        <div class="table-responsive">
          
        <table id="mytable" class="table table-bordred table-striped">
	
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
</div>
</body>
</html>