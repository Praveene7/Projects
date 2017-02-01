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
<title>Suppliers</title>
</head>

    
	<div class="container">
	<h1>Add a Supplier</h1>		
	<c:url var="addAction" value="/addsupplier"></c:url>

	<form:form action="${addAction}" commandName="supplier" class="form-horizontal">
	<div class="form-group">
<form:label path="id" class="control-label col-sm-2"  >
						<spring:message text="Supplier ID" />
					</form:label>
					<div class="col-sm-10">
				<c:choose>
					<c:when test="${!empty supplier.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,7}" required="true" title="id should contains 3 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			
			<form:input path="id"  hidden="true" />
			</div>
			</div>
			<br>
			<div class="form-group">
				<form:label path="name" class="control-label col-sm-2" >
						<spring:message text="Supplier Name" />
					</form:label>
					<div class="col-sm-10">
				<form:input path="name" required="true" />
				</div>
				</div>
				<br>
				<div class="form-group">
			<form:label path="address" class="control-label col-sm-2" >
						<spring:message text="Supplier Address" />
					</form:label>
					<div class="col-sm-10">
				<form:input path="address" required="true" />
			</div>
			</div>
			<br>
			<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
				<c:if test="${!empty supplier.name}">
						<input type="submit" class="btn btn-primary"
							value="<spring:message text="Edit Supplier"/>" />
					</c:if> <c:if test="${empty supplier.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Supplier"/>" />
					</c:if>
		</div>
		</div>
	</form:form>	
	<br>
	<h3>Supplier List</h3>
	<c:if test="${!empty supplierList}">
	<div class="table-responsive">
	<table class="table">
			<thead>
			<tr>
				<th>Supplier ID</th>
				<th>Supplier Name</th>
				<th>Supplier Address</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='/editsupplier/${supplier.id}' />">Edit</a></td>
					<td><a href="<c:url value='/removesupplier/${supplier.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		</div>
	</c:if>
	</div>

</body>
</html>