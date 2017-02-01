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
.navbar {
      margin-bottom: 60px;
      border-radius: 10px;
     
    }
   
    /* Remove the jumbotron's default bottom margin */
      .jumbotron {
      margin-bottom: 0;
      padding:5px;
     
         }
.thumbnail {
    padding: 0 0 30px 0;
    border: black;
    border-radius: 5px;
}

.thumbnail img {
    width: 50%;
    height: 50%;
    margin-bottom: 30px;
    border color:black;
}
</style>
</head>
<body><header>
<div class="jumbotron">
   <img src="E:\programs\BabysCart\src\main\webapp\images\babykids6.jpeg" width="1000" height="200">
 
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
          </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
 
      <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Kids Clothing<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="girlsclothing.jsp">Girls' Clothing</a></li>
        <li><a href="#">Boys' Clothing</a></li>
        <li><a href="#">Baby Girl Clothing</a></li>
        <li><a href="#">Baby Boy Clothing</a></li>
      </ul>
    </li>
 
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown"  href="#">Kids Footwear<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Girls' Footwear</a></li>
       <li><a href="#">Boys' Footwear</a>        </li>
        <li><a href="#">Baby Footwear</a></li>
        <li><a href="#">Character Shoes</a></li>
      </ul>
    </li>
    
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Toys<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Soft Toys</a></li>
        <li><a href="#">Musical Toys</a></li>
        <li><a href="#">Remote Control Toys</a></li>
        <li><a href="#">Board Games</a></li>
        <li><a href="#">Dolls & Doll Houses</a></li>
      </ul>
    </li>
    
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Baby Care<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Baby Gifting Sets</a></li>
        <li><a href="#">Baby Bedding</a></li>
        <li><a href="#">Baby Grooming</a></li>
        <li><a href="#">Baby Bath Skin Care</a></li>
        <li><a href="#">Baby Healthy Safety</a></li>
      </ul>
    </li>
 
 
 </ul>
 
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav></header>
 <div class="container-fluid text-center bg-grey">
  
  <div class="row text-center">
    <a href="#"><div class="col-sm-4">
      <div class="thumbnail">
        <img src="E:\programs\BabysCart\src\main\webapp\images\girlswear.jpeg">
        <p><strong>Choli</strong></p>
        <p>Purchase Now @ Rs.1200/-</p>
      </div>
    </div></a>
  <a href="#">  <div class="col-sm-4">
      <div class="thumbnail">
        <img src="E:\programs\BabysCart\src\main\webapp\images\girlswear10.jpeg">
        <p><strong>Cherokee Girl's Pink Dress</strong></p>
        <p>Purchase Now @ Rs.499/-</p>
      </div>
    </div></a>
    <a href = "#"><div class="col-sm-4">
      <div class="thumbnail">
        <img src="E:\programs\BabysCart\src\main\webapp\images\girlswear2.jpeg">
           <p><strong>Kilkari Girl's Choli</strong></p>
        <p>Purchase Now @ Rs.1149/-</p>
      </div>
    </div></a>
   <a href="#"> <div class="col-sm-4">
      <div class="thumbnail">
        <img src="E:\programs\BabysCart\src\main\webapp\images\girlswear5.jpeg">
           <p><strong>Arika Girl's Layered Black Dress</strong></p>
        <p>Purchase Now @ Rs.959/-</p>
      </div>
    </div></a>
    <a href="#"><div class="col-sm-4">
      <div class="thumbnail">
        <img src="E:\programs\BabysCart\src\main\webapp\images\girlswear6.jpeg">
           <p><strong>Kilkari Girl's Kurti</strong></p>
        <p>Purchase Now @ Rs.400/-</p>
      </div>
    </div></a>
    <a href="#"><div class="col-sm-4">
      <div class="thumbnail">
        <img src="E:\programs\BabysCart\src\main\webapp\images\girlswear15.jpeg">
           <p><strong>Self Design Kurti & Patiyala</strong></p>
        <p>Purchase Now @ Rs.799/-</p>
      </div>
    </div></a>
   
</div>

</body>
</html>