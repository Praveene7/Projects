<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
   /* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
      margin-bottom: 0;
      border-radius: 2;
    }
.navbar-default {
    background-color: #FFFFFF;
    border-color: #3498DB;
    color: #000000;
    -webkit-transition: all 1s linear;
}

.navbar-default:hover { background-color: #000000; color: #FFFFFF; }
.navbar-nav > li > a {
    color: #000000;
}
.navbar-brand{
    color: #000000;
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


.navbar-default li ul { display: none; }
.navbar-default li:hover ul, .navbar-default li.over ul {display: block; }

</style>
<script>
window.onload=startList;

$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><img src="resources/img/smallIcon.png" alt="Icon" style="width:42px;height:35px;text-align: center;"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="<c:url value="/" />">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
		  <li><a href="#">Electronics</a></li>
          <li><a href="Product">Mobiles</a></li>
          <li><a href="#">Headphones</a></li>
		  
		<c:if test="${!empty categoryList }">
<c:forEach items="${categoryList}" var="category">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="product">${category.name}</a>
<%-- <ul class="dropdown-menu">
<c:forEach items="${category.products}" var="product">
<li><a href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
</c:forEach>
</ul> --%>
</li>
</c:forEach>
</c:if>
    </ul>
      </li>
      <li><a href="#">Company</a></li>
	  <li><a href="#">Contact</a></li>
	  
    </ul>
    <ul class="nav navbar-nav navbar-right">

      							<c:if test="${pageContext.request.userPrincipal.name != null}">
									<li><a href="<c:url value="/user/cart" />"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
								
								<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
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
</body>
</html>