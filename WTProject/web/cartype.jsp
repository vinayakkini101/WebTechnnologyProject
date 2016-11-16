<%@include file="Cache.jsp"%>
<%@include file="Cache.jsp"%><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">

    <title>Car-MA</title>
    
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

<header class="main__header">
  <div class="container">
    <nav class="navbar navbar-default" role="navigation"> 
      <!-- Brand and toggle get grouped for better mobile display --> 
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="navbar-header">
        <h1 class="navbar-brand"><a href="index.html">carMA</a></h1>
        <a href="#" onClick="javascript.void()" class="submenu">Menus</a> </div>
      <div class="menuBar">
        <ul class="menu">
            <li><a href="home.jsp">Home</a></li>
            <li class="dropdown"><a href="loginsignup.jsp">Login/Signup</a>
            <ul>
                <li><a href="loginsignup.jsp">Login</a></li>
                <li><a href="loginsignup.jsp">Signup</a></li>
            </ul>
          </li>
          <li class="active"><a href="tariff.jsp">Tariff</a>
            <ul>
              <li><a href="#sedan">Sedan</a></li>
              <li><a href="#hachback">Hachback</a></li>
              <li><a href="#suv">SUV</a></li>
              <li><a href="#luxury">Luxury </a></li>
            </ul>
          </li>
          <li><a href="about.html">About Us</a></li>
          <li><a href="profilepage.jsp">Profile</a></li>
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
    </nav>
  </div>
</header>

	<section id="sedan"></section>
	<div class="container">
		<div class="row centered mt mb">
			<h1>Sedan</h1>
			
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr" action="./SelectCar.do">
                                <input name="carid" type="text" value="Chevrolet" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>
                                <a onclick="document.getElementById('cr').submit()"><img src="images/chevrolet.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr1" action="./SelectCar.do">
                                <input name="carid" type="text" value="Mazda" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>
                                <a onclick="document.getElementById('cr1').submit()"><img src="images/mazda.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr2" action="./SelectCar.do">
                                <input name="carid" type="text" value="Skoda" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>
                                <a onclick="document.getElementById('cr2').submit()"><img src="images/skoda.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr3" action="./SelectCar.do">
                                <input name="carid" type="text" value="Mustang" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>
                                <a onclick="document.getElementById('cr3').submit()"><img src="images/mustang.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr4" action="./SelectCar.do">
                                <input name="carid" type="text" value="Tesla" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>
                                <a onclick="document.getElementById('cr4').submit()"><img src="images/Tesla.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr5" action="./SelectCar.do">
                                <input name="carid" type="text" value="Volkswagen" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>
                                <a onclick="document.getElementById('cr5').submit()"><img src="images/vok.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
		</div><! --/row -->
	</div><! --/container -->

<section id="suv"></section>
	<div class="container">
		<div class="row centered mt mb">
			<h1>SUV</h1>
			
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr12" action="./SelectCar.do">
                                <input name="carid" type="text" value="Chevrolet" hidden=hidden>
                                <a onclick="document.getElementById('cr12').submit()"><img src="images/chevy.jpg" class="img-responsive"></a>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr13" action="./SelectCar.do">
                                <input name="carid" type="text" value="Datsun_SUV" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                                                           
                                <a onclick="document.getElementById('cr13').submit()"><img src="images/datsun_s.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr14" action="./SelectCar.do">
                                <input name="carid" type="text" value="Tesla_SUV" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr14').submit()"><img src="images/tesla_s.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr15" action="./SelectCar.do">
                                <input name="carid" type="text" value="Volkswagen_Jetta_SUV" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr15').submit()"><img src="images/jetta.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr16" action="./SelectCar.do">
                                <input name="carid" type="text" value="Toyota_SUV" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr16').submit()"><img src="images/toyota.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr17" action="./SelectCar.do">
                                <input name="carid" type="text" value="Multi_Terrain_SUV" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr17').submit()"><img src="images/suv.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
		</div><! --/row -->
	</div><! --/container -->
	
<section id="hachback"></section>
	<div class="container">
		<div class="row centered mt mb">
			<h1>Hatchback</h1>
			
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr6" action="./SelectCar.do">
                                <input name="carid" type="text" value="Volkswagen_Hatchback" hidden=hidden>
                                <a onclick="document.getElementById('cr6').submit()"><img src="images/wagon.jpg" class="img-responsive"></a>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr7" action="./SelectCar.do">
                                <input name="carid" type="text" value="Mitsubishi_Mirage" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr7').submit()"><img src="images/mirage.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
                        <div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr8" action="./SelectCar.do">
                                <input name="carid" type="text" value="Skoda_Hatchback" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr8').submit()"><img src="images/skoda_h.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
                        <div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr7" action="./SelectCar.do">
                                <input name="carid" type="text" value="Celerio" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr9').submit()"><img src="images/celerio.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr10" action="./SelectCar.do">
                                <input name="carid" type="text" value="Mazda_Hatchback" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr10').submit()"><img src="images/mazda2.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr11" action="./SelectCar.do">
                                <input name="carid" type="text" value="Fiat" hidden=hidden>
                                <input name="pr" type="text" value="3000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr11').submit()"><img src="images/sport_h.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
		</div><! --/row -->
	</div><! --/container -->

<section id="luxury"></section>
	<div class="container">
		<div class="row centered mt mb">
			<h1>Luxury</h1>
			
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr20" action="./SelectCar.do">
                                <input name="carid" type="text" value="Luxury" hidden=hidden>
                                <input name="pr" type="text" value="10000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr20').submit()"><img src="images/lux1.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr21" action="./SelectCar.do">
                                <input name="carid" type="text" value="Luxury" hidden=hidden>
                                <input name="pr" type="text" value="10000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr21').submit()"><img src="images/lux2.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr22" action="./SelectCar.do">
                                <input name="carid" type="text" value="Luxury" hidden=hidden>
                                <input name="pr" type="text" value="10000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr22').submit()"><img src="images/lux3.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr23" action="./SelectCar.do">
                                <input name="carid" type="text" value="Luxury" hidden=hidden>
                                <input name="pr" type="text" value="10000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr23').submit()"><img src="images/lux1.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr24" action="./SelectCar.do">
                                <input name="carid" type="text" value="Luxury" hidden=hidden>
                                <input name="pr" type="text" value="10000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr24').submit()"><img src="images/lux2.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
                        
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
                            <form id="cr25" action="./SelectCar.do">
                                <input name="carid" type="text" value="Luxury" hidden=hidden>
                                <input name="pr" type="text" value="10000" hidden=hidden>                            
                                <a onclick="document.getElementById('cr25').submit()"><img src="images/lux3.jpg" class="img-responsive"></a>
                            </form>
                            <a onclick="work.html"></a>
			</div>
		</div><! --/row -->
	</div><! --/container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
