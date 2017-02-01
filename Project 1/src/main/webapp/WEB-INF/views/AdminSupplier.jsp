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
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.supplier_add{
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

    <section class="supplier_add">
	<div class="container">	
	<h1>Add a Supplier</h1>		
	<c:url var="addAction" value="/addsupplier"></c:url>

	<form:form action="${addAction}" commandName="supplier" class="form-horizontal">
	<div class="form-group">
				<form:label path="id" class="control-label col-sm-2"  >
						<spring:message text="Supplier ID" />
					</form:label>
					<div class="col-sm-2">
				<c:choose>
					<c:when test="${!empty supplier.id}">
						<td><form:input path="id" disabled="true" readonly="true" class="form-control"/>
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,7}" required="true" title="id should contains 3 to 7 characters" class="form-control"/></td>
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
					<div class="col-sm-2">
				<form:input path="name" required="true" class="form-control"/>
				</div>
				</div>
				<br>
				<div class="form-group">
			<form:label path="address" class="control-label col-sm-2" >
						<spring:message text="Supplier Address" />
					</form:label>
					<div class="col-sm-4">
				<form:input path="address" required="true" class="form-control"/>
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
	</section>	
	<br><br>
	
	<div class="container">
	<div class="row">
		        
        <div class="col-md-12">
        <h3>Supplier List</h3>
        <c:if test="${!empty supplierList}">
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
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
	</div>
	</div>
<%@include file="footer.jsp" %>
</body>
</html>