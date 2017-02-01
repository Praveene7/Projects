<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description</title>
<style type="text/css">
.grow { 
height: 400px;
width: 400px;
transition: all .3s ease-in-out; }
.grow:hover { transform: scale(2); }
</style>
<script src="<c:url value="/resources/js/ordercontroller.js" /> "></script>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>
<div class="span9 center margin-bottom" ng-app = "addToCartApp"> 
					<h3>Product Details</h3>
					</div>
        <div class="container">
                <div class="row">
	 <div class="span3">
		<img class="grow" src="<c:url value="/resources/img/${item.id}.jpg" /> " alt="image"/>
	</div>	 
	  
	<div class="span5">

		<div class="spanAddress">
			<address>
				<strong>Name:</strong> <span>${item.name}</span><br>
				<strong>Description:</strong> <span>${item.description}</span><br>
				<strong>Manufacturer:</strong> <span>${item.supplier.name}</span><br>
				<strong>Category:</strong> <span>${item.category.name}</span><br>
				<strong>Color:</strong> <span>${item.color}</span><br>
			</address>
		</div>	
				
		<div class="span6">
			<h2>
				<strong>Price: Rs. ${item.price}</strong> <br><br>
			</h2>
		</div>	
		
		
						<div class="span6">
							<div class="span4 no_margin_left">
									<p ng-controller="addToCartCtrl">
									<a href="<c:url value="/Product" />" class="btn btn-primary">Back</a>
										<a href="#" class="btn btn-primary"
										   ng-click="addItemToCart('${item.id}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</a>
										<%-- <a href="<spring:url value="/user/cart" />"
										   class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a> --%>
									
								</p>
							</div>	
							
			
						</div>	
		
						<div class="span6">
						
							
						</div>	
		
		 			</div>	

  				</div>
          
                </div>

        <%@include file="/WEB-INF/views/footer.jsp" %>

</body>
</html>