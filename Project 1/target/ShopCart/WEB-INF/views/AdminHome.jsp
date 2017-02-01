<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 20px;
  }
  img {
    max-width: 100%;
    height: auto;
}
.jumbotron {
      margin-bottom: 0;
      background-color: #EB0B12;
    }
    h1 { text-size: 15px
color:#222;
text-shadow: 0px 2px 3px #555555;
}
body {
background-color: #E0064B;
}
  </style>
</head>

<!-- The scrollable area -->
<body>
<div class="jumbotron">
  <div class="container text-center">
    <h1>Big</h1>
    <p></p>
  </div>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <ul class="nav navbar-nav navbar-right">
      <li><a href="viewCustomers">View Customers</a></li>
       <li><a href="#">View Products</a></li>
      <li><a href="logout"><span class="glyphicon glyphicon-log-0ut"></span> Log Out</a></li>
    </ul>
  </div>
</nav>
   <div class="row">
    <nav class="col-sm-3">
      <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="205">
        <li class="active">
        <a href="products">PRODUCT</a></li>
        <li><a href="suppliers">SUPPLIER</a></li>
        <li><a href="categories">CATEGORY</a></li>
      </ul>
    </nav>
   <div id="categories">
	<c:if test="${clickedCategories==true}">
	<%@include file="AdminCategory.jsp" %>
	</c:if>
	</div>
	<div id="suppliers">
	<c:if test="${clickedSuppliers==true}">
	<%@include file="AdminSupplier.jsp" %>
	</c:if>
	</div>
	<div id="product">
	<c:if test="${clickedProduct==true}">
	<%@include file="AdminProduct.jsp" %>
	</c:if>
	</div>
    
   
</div>
</body>
</html>