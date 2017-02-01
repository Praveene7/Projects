<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
     /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #808B96;
      padding: 25px;
    }
    body{
    background-color: #3498DB;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
  

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none;
    }
  }
  .navbar-default {
    background-color: #808B96;
    border-color: #000000;
}
.footer_color{
    background-color: #808B96;
    border-color: #283747;
}
.navbar-default .navbar-nav > li > a {
    color: #FDFEFE;
}
.navbar-default .navbar-brand{
    color: #E5E8E8;
}

.navbar-default .navbar-toggle {
    border-color: #DDD;
}
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
} 

.carousel-control
{
width: 20px;
height: 350px;
}
.jumbotron {
      margin-bottom: 0;
    }
    
    footer {
    
 	 right: 0;
  	bottom: 0;
  	left: 0;
      background-color: #f2f2f2;
      padding: 25px;
    }
</style>
  
<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>
</head>

<body id="page-top" class="index">


<div class="jumbotron">
  <div class="container text-center">
    <h1>Shopping Cart</h1>
    </div>
    <p style="color:red" align="right">${message}${username}</p>
</div>
<c:if test="${isUserClickedRegisterHere==true}">	
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
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="LoginHere"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
</c:if>
<c:if test="${UserLoggedIn==true}">
	<%@include file="Navbar.jsp" %>
	</c:if>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
	  <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="3"></li>
	  <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <a href="#"><img src=<c:url value="/resources/img/ipad-air-3.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
      <div class="item">
        <a href="#"><img src=<c:url value="/resources/img/ipad-air-3.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
		<div class="item">
        <a href="#"><img src=<c:url value="/resources/img/ipad-air-3.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
		<div class="item">
        <a href="#"><img src=<c:url value="/resources/img/ipad-air-3.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
		<div class="item">
        <a href="#"><img src=<c:url value="/resources/img/ipad-air-3.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
      </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">
  <h3>Mobiles</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <a href="#"><img src=<c:url value="/resources/img/DailyFaqs_SAMSUNG-GALAXY-A9-LAUNCHED-IN-CHINA1-3.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
      <p>Samsung</p>
    </div>
    <div class="col-sm-4">
      <a href="#"><img src=<c:url value="/resources/img/004.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
      <p>Apple</p>
    </div>
    <div class="col-sm-4">
      <a href="#"><img src=<c:url value="/resources/img/Xperia-Z5-IFA-2.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
      <p>Sony Xperia</p>
      </div>
	      </div>
	    
	    <div class="container text-center">
	    <h3>Clothing</h3><br>  
	      <div class="row">
    <div class="col-sm-4">
      <a href="#"><img src=<c:url value="/resources/img/img1.jpeg"/> class="img-responsive" style="width:100%" alt="Image"></a>
      <p>Men</p>
    </div>
    <div class="col-sm-4">
      <a href="#"><img src=<c:url value="/resources/img/Fashions.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
      <p>Women</p>
    </div>
    <div class="col-sm-4">
      <a href="#"><img src=<c:url value="/resources/img/3699737_orig.png"/> class="img-responsive" style="width:100%" alt="Image"></a>
      <p>Ethnic</p>
      </div>
	      </div>
	      <div class="container text-center">
	    <h3>Clothing</h3><br>  
	      <div class="row">
	       <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>      
      </div>
      <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>      
      </div>
      <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>      
      </div>
      </div>
      </div>
      </div>
	
  </div>
</div><br>

<footer class="container-fluid bg-4 text-center footer_color">
  <p class="f_fontcolor"><a href="http://www.shoppingcart.com">www.shoppingcart.com</a></p>
</footer>
</body>
</html>