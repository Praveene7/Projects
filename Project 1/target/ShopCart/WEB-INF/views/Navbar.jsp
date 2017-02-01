<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ShoppingCart</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
		  <li><a href="#">Electronics</a></li>
          <li><a href="Product">Men</a></li>
          <li><a href="#">Women</a></li>
		  
		<c:if test="${!empty categoryList }">
<c:forEach items="${categoryList}" var="category">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="product">${category.name}</a>
<ul class="dropdown-menu">
<c:forEach items="${category.products}" var="product">
<li><a href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
</c:forEach>
</ul>
</li>
</c:forEach>
</c:if>
    </ul>
      </li>
      <li><a href="#">Company</a></li>
	  <li><a href="#">Contact</a></li>
	  
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Cart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
    </ul>
  </div>
</nav>
</body>
</html>