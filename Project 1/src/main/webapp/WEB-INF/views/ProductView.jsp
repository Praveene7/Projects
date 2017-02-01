<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/ordercontroller.js" /> "></script>
<style type="text/css">
.effectfront {
  border: none;
  margin: 0 auto;
}
.effectfront:hover {
  -webkit-transform: scale(1.2);
  -moz-transform: scale(1.2);
  -o-transform: scale(1.2);
  transform: scale(1.2);
  transition: all 0.3s;
  -webkit-transition: all 0.3s;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<%@include file="navbar.jsp" %>
	<div class="container" ng-app = "addToCartApp">
			
	
	<div class="container">

			<div class="row">
			<h4><font color="#101010">Mobiles</font></h4>
			<div class="row">
				<c:forEach items="${productList}" var="product">
				<div class="col-sm-4">
					<div class="thumbnail">
						<a href="<spring:url value="/showproduct/${product.id}" />"><img class="effectfront" src="<c:url value="/resources/img/${product.id}.jpg" />" class="img-responsive" style="height:200px; width:90%" alt="Image"></a>
						<div class="caption">
							<h4 class="pull-right">&#8377 ${product.price}</h4>
							<p>${product.name}</p>
								
								<c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/ShopCart/ProductView" />
                     <c:if test="${pageContext.request.userPrincipal.name  == 'Matt'}">
                        <c:set var="url" scope="page" value="/admin/additems" />
                    </c:if>
								<!-- <div class="span6"> -->
							<div class="span4 no_margin_left">
									<div class="innerthumb" ng-controller="addToCartCtrl">
									<%-- <a href="<c:url value="${url}" />" class="btn btn-primary">Buy Now</a> --%>
									
									<a href="#" class="btn btn-primary" ng-click="addItemToCart('${product.id}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart</a>
									<%-- <a href="<spring:url value="/user/cart" />" class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a> --%>
									
								</div>
							</div>
														
						</div>
						<!-- </div> -->
						</div>
						</div>
				</c:forEach>
				</div>

				<!-- <div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail" >
						<img src="E:\programs\BabysCart\src\main\webapp\images\girlswear6.jpeg" class="img-responsive" style="height:200px; width:90%" alt="">
						<div class="caption">
							<h4 class="pull-right">$64.99</h4>
							<p>Kilkari Girl's Kurti</p>
							
									<a href="signin">Add to Cart</a>
							</div>
						<div class="ratings">
							<p class="pull-right">12 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>
 -->				
 
 
					</div>
				</div>


			</div>

	
		<%@include file="footer.jsp" %>

</body>
</html>