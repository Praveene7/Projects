<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Random"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>

<html>
<head>
<title>Product Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.product_add{
width: 800px;
	height: 650px;
	margin: -5px auto;
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
			<section class="product_add">
			<div class="container">
				<h1>Add a Product</h1><br>

				<c:url var="addAction" value="/addproduct"></c:url>

				<form:form action="${addAction}" commandName="product"
					enctype="multipart/form-data" class="form-horizontal">

					<div class="form-group">

						<form:label path="id" class="control-label col-sm-2">

							<spring:message text="ID" />

						</form:label>
						<div class="col-sm-2">
							<c:choose>

								<c:when test="${!empty product.id}">

									<form:input path="id" disabled="true" readonly="true" class="form-control"/>

								</c:when>

								<c:otherwise>

									<td><form:input path="id" patttern=".{3,7}"
											required="true" title="id should contains 3 to 7 characters" class="form-control"/>
								</c:otherwise>

							</c:choose>

							<form:input path="id" hidden="true" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="name" class="control-label col-sm-2">

							<spring:message text="Name" />

						</form:label>
						<div class="col-sm-4">
							<form:input path="name" required="true" class="form-control" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="price" class="control-label col-sm-2">

							<spring:message text="Price" />

						</form:label>
						<div class="col-sm-2">
							<form:input path="price" required="true" class="form-control"/>
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="description" class="control-label col-sm-2">

							<spring:message text="Description" />

						</form:label>
						<div class="col-sm-4">
							<form:input path="description" required="true" class="form-control" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="color" class="control-label col-sm-2">

							<spring:message text="color" />

						</form:label>
						<div class="col-sm-4">
							<form:input path="color" required="true" class="form-control" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="supplier_id" class="control-label col-sm-2">

							<spring:message text="Supplier" />

						</form:label>
						<div class="col-sm-2">
							<%-- <td><form:input path="supplier.name" required="true" /></td> --%>

							<form:select path="supplier.name" items="${supplierList}"
								itemValue="name" itemLabel="name" class="form-control"/>
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="category_id" class="control-label col-sm-2">

							<spring:message text="Category" />

						</form:label>
						<div class="col-sm-2">
							<%-- <td><form:input path="category.name" required="true" /></td> --%>

							<form:select path="category.name" items="${categoryList}"
								itemValue="name" itemLabel="name" class="form-control"/>
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="image" class="control-label col-sm-2">Image</form:label>
						<div class="col-sm-4">
							<form:input type="file" path="image" class="form-control"/>
						</div>
					</div>
					<br>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<c:if test="${!empty product.name}">

								<input type="submit" class="btn btn-success"
									value="<spring:message text="Edit Product"/>" />

							</c:if>
							<c:if test="${empty product.name}">

								<input type="submit" class="btn btn-primary"
									value="<spring:message text="Add Product"/>" />

							</c:if>
						</div>
					</div>

				</form:form>
				</section>

				<br><br>
<div class="container">
	<div class="row">   
      <div class="col-md-12">
        <h3>Product List</h3>
        <c:if test="${!empty productList}">
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
							<thead>

								<tr>

									<th>Product ID</th>

									<th>Product Name</th>

									<th>Product Description</th>
									
									<th>Product Color</th>

									<th>Price</th>



									<th>Product Category</th>

									<th>Product Supplier</th>

									<th>Product Image</th>

									<th>Edit</th>

									<th>Delete</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${productList}" var="product">

									<tr>

										<td>${product.id}</td>

										<td>${product.name}</td>

										<td>${product.description}</td>
										
										<td>${product.color}</td>

										<td>${product.price}</td>

										<td>${product.category.name}</td>
										
										<td>${product.supplier.name}</td>
										<td><img src="<c:url value="/resources/img/${product.id}.jpg"/>" width="100" height="50"></td>

										<td><p data-placement="top" data-toggle="tooltip" title="Edit"><a href="<c:url value='editproduct/${product.id}' />"><button class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
										
										<td><p data-placement="top" data-toggle="tooltip" title="Delete"><a href="<c:url value='removeproduct/${product.id}' />"><button class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span></a></button></p></td>
										

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