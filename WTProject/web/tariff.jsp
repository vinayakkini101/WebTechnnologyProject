<%@page import="model.CarWT"%>
<!DOCTYPE html>
<html>
<head>
<title>CAR-Ma</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="At CAR-Ma, we love hearing from satisfied customers who are so happy with their pleasant car rental experience that they send us emails and letters. That's The CAR-Ma Experience.">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet">


</head>
<body>
    <%      CarWT ca;
           // session.setAttribute("cid",ca.getCarid()); %>
<header class="main__header">
  <div class="container">
    <nav class="navbar navbar-default" role="navigation"> 
      <!-- Brand and toggle get grouped for better mobile display --> 
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="navbar-header">
        <h1 class="navbar-brand"><a href="home.jsp"><img src="images/logo.png" id="logo">  carMA</a></h1>
        <a href="#" onClick="javascript.void()" class="submenu">Menus</a> </div>
      <div class="menuBar">
        <ul class="menu">
          <li><a href="home.jsp">Home</a></li>
          <li class="dropdown"><a href="loginsignup.jsp">Signup</a>
            <ul>
              <li><a href="loginsignup.jsp">Login</a></li>
              <li><a href="loginsignup.jsp">Signup</a></li>
            </ul>
          </li>
          <li class="active"><a href="cartype.html#">Tariff</a>
            <ul>
              <li><a href="cartype.jsp#sedan">Sedan</a></li>
              <li><a href="cartype.jsp#hachback">Hatchback</a></li>
              <li><a href="cartype.jsp#suv">SUV</a></li>
              <li><a href="cartype.jsp#luvury">Luxury </a></li>
            </ul>
          </li>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Settings</a>
            <ul>
                <li><a href="#">Setting1</a></li>
                <li><a href="#">Setting2</a></li>
            </ul>
          </li>
          <li><a href="profilepage.jsp">Profile</a></li>
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
    </nav>
  </div>
</header>
<section class="slider">
  <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
    <div class="carousel-inner">
      <div class="item"> <img data-src="images/slider/image_1920x1000.jpg" alt="first slide" src="images/slider/car2.jpg">
        <div class="container">
          <div class="carousel-caption">
            <p class="smally">Make a booking, unlock your car, and end your reservation all on the go</p>
            <p><a class="btn btn-info" href="#" role="button">read more</a></p>
        </div>
        </div>
      </div>
      <div class="item"> <img data-src="images/slider/image_1920x1000.jpg" alt="second slide" src="images/slider/car3.jpg">
        <div class="container">
          <div class="carousel-caption">
            <p class="smally">Make a booking, unlock your car, and end your reservation all on the go</p>
            <p><a class="btn btn-info" href="#" role="button">read more</a></p>
        </div>
        </div>
      </div>
      <div class="item active"> <img data-src="images/slider/image_1920x1000.jpg" alt="third slide" src="images/slider/car4.jpg">
        <div class="container">
          <div class="carousel-caption">
            <p class="smally">Make a booking, unlock your car, and end your reservation all on the go</p>
            <p><a class="btn btn-info" href="#" role="button">read more</a></p>
        </div>
        </div>
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon carousel-control-left"></span></a> <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon carousel-control-right"></span></a> </div>
</section>
<!--end of slider section-->
<section class="main__middle__container homepage">
  <div class="row text-center headings no-margin nothing">
    <div class="container">
      <h1 class="page_title">How it works?.</h1>
      <p>is a Self?Drive car rental service. We save you the cost and hassle of owning a car while giving you all the good parts:</p>
      <p> Convenience, Mobility and Independence</p>
      <p><a class="btn btn-info btn-lg" href="#" role="button">read more</a></p>
    </div>
  </div>
  <div class="row grey-info-block text-center">
    <div class="container">
      <h2 class="page__title"><span>ABOUT US</span></h2>
      <p class="small-paragraph">At CAR-Ma, we love hearing from satisfied customers who are so happy with their pleasant car rental experience that they send us emails and letters. That's The CAR-Ma Experience.
</p>
      <div class="col-md-6">
        <h3><a href="#">Sedan</a></h3>
        <p class="small-paragraph">More cargo space in a trunk lengthwise than in a hatch</p>
        <img src="images/slider/car2.jpg" alt="pic" class="img-rounded img-responsive">
        <p>A sedan is ideal for a normal family (5 members), it offers good look, good cargo space and is better to drive (more aerodynamic); sedan always have 4 doors.</p>
        <p><a class="btn btn-default btn-md" href="#" role="button">Learn more</a></p>
      </div>
      <div class="col-md-6">
        <h3><a href="#">Hachback</a></h3>
        <p class="small-paragraph">Some random stuff.</p>
        <img src="images/slider/car3.jpg" alt="pic" class="img-rounded img-responsive">
        <p>A hatchback will be more useful on cramped ,crowded,hard to reach areas. </p>
        <p><a class="btn btn-default btn-md" href="#" role="button">Learn more</a></p>
      </div>
      <div class="col-md-6">
        <h3><a href="#">SUV</a></h3>
        <p class="small-paragraph">Some random stuff.</p>
        <img src="images/slider/car4.jpg" alt="pic" class="img-rounded img-responsive">
        <p>A SUV is for the young of heart.</p>
        <p><a class="btn btn-default btn-md" href="#" role="button">Learn more</a></p>
      </div>
      <div class="col-md-6">
        <h3><a href="#">Luxury</a></h3>
        <p class="small-paragraph">Some random stuff.</p>
        <img src="images/slider/car5.jpg" alt="pic" class="img-rounded img-responsive">
        <p>A Luxury car for the royal experience. </p>
        <p><a class="btn btn-default btn-md" href="#" role="button">Learn more</a></p>
      </div>
    </div>
  </div>

<p class="text-center copyright">&copy; Copyright Car-MA Company. All Rights Reserved.</p>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.min.js"></script> 
<script type="text/javascript">

$('.carousel').carousel({
  interval: 3500, // in milliseconds
  pause: 'none' // set to 'true' to pause slider on mouse hover
})

</script>
<script type="text/javascript">
$( "a.submenu" ).click(function() {
$( ".menuBar" ).slideToggle( "normal", function() {
});
});
$( "ul li.dropdown a" ).click(function() {
$( "ul li.dropdown ul" ).slideToggle( "normal", function() {
});
$('ul li.dropdown').toggleClass('current');
});
</script>
</body>
</html>