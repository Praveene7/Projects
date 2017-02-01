<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
        
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
 

.carousel-control
{
width: 60px;
height: 400px;
}
.bg {
  background: url('resources/img/maxresdefault.jpg') no-repeat center center;
  position: fixed;
  width: 100%;
  height: 1080px; /*same height as jumbotron */
  top:0;
  left:0;
  z-index: -1;
}
.jumbotron {
  height: 350px;
  color: white;
  text-shadow: #444 0 1px 1px;
  background:transparent;
}


.col-sm-4{
   
    -webkit-transition: width 2s, height 4s; /* For Safari 3.1 to 6.0 */
    transition: width 2s, height 4s;
}

.col-sm-4:hover {
    width: 300px;
    height: 300px;
}
/* fade on slider */
.carousel-fade .carousel-inner .item {
  opacity: 0;
  -webkit-transition-property: opacity;
  -moz-transition-property: opacity;
  -o-transition-property: opacity;
  transition-property: opacity;
}
.carousel-fade .carousel-inner .active {
  opacity: 1 !important;
}
.carousel-fade .carousel-inner .active.left,
.carousel-fade .carousel-inner .active.right {
  left: 0;
  opacity: 0;
  z-index: 1;
}
.carousel-fade .carousel-inner .next.left,
.carousel-fade .carousel-inner .prev.right {
  opacity: 1;
}
.carousel-fade .carousel-control {
  z-index: 2;
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

var jumboHeight = $('.jumbotron').outerHeight();
function parallax(){
    var scrolled = $(window).scrollTop();
    $('.bg').css('height', (jumboHeight-scrolled) + 'px');
}

$(window).scroll(function(e){
    parallax();
});
</script>

<!-- footer -->
 <link rel="stylesheet" href="resources/css/footer-basic-centered.css">
	
	</head>

<body id="page-top" class="index">

<div class="bg"></div>
<div class="jumbotron">
  <div class="container">
    <h1>Shopping Cart</h1>
    </div>
    <p style="color:red" align="right">${message}${username}</p>
</div>
	
<%@include file="/WEB-INF/views/navbar.jsp" %>

<div id="myCarousel" class="carousel slide carousel-fade"" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
	  <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="3"></li>
	  <li data-target="#myCarousel" data-slide-to="4"></li>
	  <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <a href="#"><img src=<c:url value="/resources/img/ipad-air-3.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
      <div class="item">
        <a href="#"><img src=<c:url value="/resources/img/Mobile-Theme-Web-Design-b-1024x300.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
		<div class="item">
        <a href="#"><img src=<c:url value="/resources/img/Lumia950XLHeader2.png"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
		<div class="item">
        <a href="#"><img src=<c:url value="/resources/img/audio-headphone-header.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
		<div class="item">
        <a href="#"><img src=<c:url value="/resources/img/WindowsPhoneInternalsHeader.png"/> class="img-responsive" style="width:100%" alt="Image"></a>
        </div>
        <div class="item">
        <a href="#"><img src=<c:url value="/resources/img/mobile-sl-05.jpg"/> class="img-responsive" style="width:100%" alt="Image"></a>
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
	      <!-- <div class="container text-center">
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
      </div> -->
      </div>
	
  </div>
<br>
<%@include file="footer.jsp" %>

</body>
</html>