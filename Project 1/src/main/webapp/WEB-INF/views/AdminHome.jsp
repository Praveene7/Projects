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

 h1 { text-size: 15px
color:#222;
text-shadow: 0px 2px 3px #555555;
}

/* .bg {
  background: url('http://www.advaxis.com/wp-content/uploads/revslider/front-page-slideshow/homepage-hero-background.png') no-repeat center center;
  position: fixed;
  width: 100%;
  height: 1080px; /*same height as jumbotron */
  top:0;
  left:0;
  z-index: -1;
}
.jumbo {
  height: 1080px;
  color: white;
  text-shadow: #444 0 1px 1px;
  background:transparent;
} */

  </style>
  <!-- <script type="text/javascript">
  var jumboHeight = $('.jumbo').outerHeight();
  function parallax(){
      var scrolled = $(window).scrollTop();
      $('.bg').css('height', (jumboHeight-scrolled) + 'px');
  }

  $(window).scroll(function(e){
      parallax();
  });
  </script> -->
</head>

<!-- The scrollable area -->

<body style="background-attachment: fixed; background-repeat: no-repeat;" background="http://www.advaxis.com/wp-content/uploads/revslider/front-page-slideshow/homepage-hero-background.png">
<div class="jumbotron">
  <div class="container text-center">
    <h1>Shopping cart</h1>
    <p></p>
  </div>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><img src="resources/img/smallIcon.png" alt="Icon" style="width:42px;height:35px;text-align: center;"></a>
    </div>
    <ul class="nav navbar-nav">
      	<li class="active"><a href="products">PRODUCT</a></li>
        <li><a href="suppliers">SUPPLIER</a></li>
        <li><a href="categories">CATEGORY</a></li>
	  
    </ul>
    <ul class="nav navbar-nav navbar-right">

      							<c:if test="${pageContext.request.userPrincipal.name != null}">
																
								<c:if test="${pageContext.request.userPrincipal.name  == 'Matt'}">
									 <li><a href="<c:url value="/admin/additems" />">View items</a></li>
									 <li><a href="<c:url value="/admin/user" />">View Customer</a></li>
								</c:if>
								<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
									<li><a href="<c:url value="/logout" />"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
									</c:if>
								 <c:if test="${pageContext.request.userPrincipal.name  == null}">
								 <li><a href="<c:url value="Register" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
								 <li><a href="LoginHere"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
								 </c:if>
    </ul>
  </div>
</nav>
<div class="bg"></div>
<div class="jumbo"></div>
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <ul class="nav navbar-nav navbar-right">
      <li><a href="viewCustomers">View Customers</a></li>
       <li><a href="#">View Products</a></li>
      <li><a href="logout"><span class="glyphicon glyphicon-log-0ut"></span> Log Out</a></li>
    </ul>
  </div>
</nav>
   <div class="row">
    <nav class="col-sm-2">
      <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="205">
        <li class="active">
        <a href="products">PRODUCT</a></li>
        <li><a href="suppliers">SUPPLIER</a></li>
        <li><a href="categories">CATEGORY</a></li>
      </ul>
    </nav> -->
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
    
   

</body>
</html>