<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
  </style>
</head>

<!-- The scrollable area -->
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
      <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="205">
        <li class="active">
        <a href="manageProducts">PRODUCT</a></li>
        <li><a href="manageSuppliers">SUPPLIER</a></li>
        <li><a href="manageCategories">CATEGORY</a></li>
      </ul>
    </nav>
    <div class="col-sm-9"><br><br><br>
     <img src ="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\admin1.jpg">
</div>
</div>
</body>
</html>