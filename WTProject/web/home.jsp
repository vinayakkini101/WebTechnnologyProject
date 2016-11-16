<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="Car-Ma,rental,car rental">
    <title>CAR-MA | Home</title>

    <!--CSS-->
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap-social.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/css/font-awesome.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/styling.css"> 
    <link rel="stylesheet" href="css/style.css"> 


    <!--JQUERY-->
    <script src="bootstrap-3.3.5-dist/js/jquery-2.1.4.min.js"></script>
    <script src="reg.js"></script>
    <script src="angular.js"></script>
    
    
  </head>
  <body ng-app="webapp">
         <!-- navbar-static-top -->
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
            <li class="active"><a href="home.jsp">Home</a></li>
            <%
                String t= (String)session.getAttribute("cemail");                     
                if (t != null) {                           
            %>
            
        <% } else {
         %>
         <li class="dropdown" ><a href="loginsignup.jsp">Signin</a>
            <ul>
              <li><a href="loginsignup.jsp">Login</a></li>
              <li><a href="loginsignup.jsp">Signup</a></li>
            </ul>
          </li>

        <% }%>
        <%
                String r= (String)session.getAttribute("cemail");                     
                if (r != null) {                           
            %>
            
         <li><a href="tariff.jsp">Tariff</a>
            <ul>
              <li><a href="cartype.jsp#sedan">Sedan</a></li>
              <li><a href="cartype.jsp#hachback">Hachback</a></li>
              <li><a href="cartype.jsp#suv">SUV</a></li>
              <li><a href="cartype.jsp#luvury">Luxury </a></li>
            </ul>
          </li>
        <% } else {
         %>

        <% }%>
          <li><a href="about.html">About Us</a></li>
                    
          <%
                String email= (String)session.getAttribute("cemail");                     
                if (email != null) {                           
            %>
            
          <li><a href="profilepage.jsp">Profile</a></li>
        <% } else {
         %>
          <li><a disabled="disabled">Guest</a></li>

        <% }%>
        <%
                String u= (String)session.getAttribute("cemail");                     
                if (u != null) {                           
            %>
            
            <li>
                <form id="logout" action="./LogoutServlet.do">
                    <a href="#" onclick="document.getElementById('logout').submit()">Log Out</a>
                </form>
            </li>
        <% } else {
         %>

        <% }%>
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
    </nav>
  </div>
</header>
          <!--End of Navigation bar-->
          <br><br>
          <br><br>

        <div class="embed-responsive embed-responsive-16by9" id="header">
           <figure class="overlay">
              <video width="auto" muted autoplay loop> 
                <source src="images/video.mp4" type="video/mp4">
              </video>
              <div class="typewriter">
                <figcaption>
                   <h3>Drive Like You Own It!!</h3>
                   <br>
                      <a href="#steps" style="text-decoration: none;">
                   <span class="glyphicon glyphicon-menu-down" aria-hidden="true">
                   </span>
                   <span class="glyphicon glyphicon-menu-down" aria-hidden="true">
                   </span></a>
                </figcaption>
              </div>
           </figure>
        </div> <!--embed-responsive-->

       <br><hr>
        <!--BreadCrumb-->
        <ol class="breadcrumb" id="steps">
          <li class="active"><a href="index.html">Home</a></li>
        </ol>

     <!---STEPS -->
       <div class="container">
          <center>
              <h2><strong>DRIVE A NEW CAR EVRYDAY</strong></h2>
               <h4>Hire a car in 3 steps.</h4>
          </center>

          <div class="row">

             <div class="col-md-4 col-xs-12">
               <center>
               <img src="images/book.png" id="stp">
               <br>
                 <b>BOOK</b>
                 <p>Visit our website to rent a car</p>
               </center>
             </div>

             <div class="col-md-4 col-xs-12">
               <center>
               <img src="images/payment.png" id="stp">
               <br>
               <b>PAY</b>
                   <p>Pay via preferred mode of payment</p>
               </center>
             </div>

             <div class="col-md-4 col-xs-12">
               <center>
               <img src="images/ride.jpg" id="stp">
               <br>
                  <b>RIDE</b>
                  <p>Drive your car and explore amazing ways to travel.</p>
               </center>
             </div>
          </div>  <!--row-->
       </div>    <!--container-->
         <br>
         <hr>
        <!--Carousel Begins-->
       <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"
         data-interval="3000">

        <!-- Indicators -->
         <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
         </ol>
 
       <!-- Wrapper for slides -->
         <div class="carousel-inner">

           <div class="item active">
             <img src="images/carimage.jpg" alt="Car Image">
              <!-- <div class="carousel-caption">
      	        <h3>CAR-MA</h3>
             </div>-->
           </div>

           <div class="item">
             <img src="images/carimg.jpg" alt=" Image dispaying car at a beautiful place.">
             <!--<div class="carousel-caption">
      	       <h3>CAR-MA</h3>
             </div>-->
           </div>

           <div class="item">
             <img src="images/carimg_3.png" alt=" Image displaying feature of car.">
              <!--<div class="carousel-caption">
      	        <h3>CAR-MA</h3>
              </div>-->
           </div>

       </div> <!-- End of Wrapper-->
 
         <!-- Controls -->
       <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
       </a>
       <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
       </a>
     </div> <!-- Carousel -->
     <hr>
      <!---FEEDBACK FORM-->
       <div class="container-fluid" id="feedback" ng-controller="ContactController">
          <center>
              <h2><strong>HAPPY TO HEAR FROM YOU</strong></h2>
               <h4>Tell us how to make your rides more enjoyable</h4>
          </center>

          <div class="row" ng-controller="FeedbackController">

              <form class="cf" role="form" name="feedbackForm" ng-submit="sendFeedback()" method="POST" action="FeedbackServletWT.do">

                <div class="half" ng-class="{ 'has-error' : feedbackForm.Name.$error.required && !feedbackForm.Name.$pristine }">

                   <input type="text" name="name" id="name" placeholder="Name" ng-model="feedback.Name" required="true">
                   <span ng-show="feedbackForm.Name.$error.required && !feedbackForm.Name.$pristine" class="help-block"> Your Name is required.</span>
                </div>

                <div class="half" ng-class="{ 'has-error has-feedback' : feedbackForm.Email.$invalid && !feedbackForm.Email.$pristine }">

                   <input type="email" name="email" id="email" placeholder="Email address" ng-model="feedback.Email" required="true">
                   <span ng-show="feedbackForm.Email.$invalid && !feedbackForm.Email.$pristine" class="glyphicon glyphicon-remove form-control-feedback" aria-hidden ="true"></span>

                    <span ng-show="(feedbackForm.Email.$invalid || 
                    feedbackForm.Email.$error.required) && !feedbackForm.Email.$pristine" class="help-block"> Your valid EmailId is required.</span>

                </div>
                  
                <div class="half">
                  <input type="password" name="password" id="subject" placeholder="Password" ng-model="feedback.Password">
                </div>  
                  
                <div class="half">
                  <input type="text" name="subject" id="subject" placeholder="Subject" ng-model="feedback.Subject">
                </div>

                <div class="half">
                  <textarea name="message" type="text" id="message" placeholder="Message" ng-model="feedback.message"></textarea>
                </div>  
               
               <button type="submit" id="input-submit" class="form-control btn btn-info" ng-disabled="feedbackForm.$invalid"
               ng-click="Submit()">SUBMIT FEEDBACK</button>

           </form> 	
          </div> <!--row--> 	
       </div><!--container -->

       <hr>
      <!-- FOOTER BEGINS --> <!--<img src="images/logo_2.png" class="container image-responsive " width="70%">-->
       <div class="container-fluid" id="footer">
          <div class="row">

             <div class="col-xs-4 col-lg-4">
               <img src="images/logo.png" id="logo">
             </div>

             <div class="col-xs-4 col-lg-4">
                <h4>COMPANY</h4>
             </div>

            <div class="col-xs-4 col-lg-4">
               <h4>POLICIES</h4>
            </div>

          </div> <!--/row -->

          <div class ="row">

             <div class="col-xs-4 col-lg-4" >
             <p style="display:inline-block">
               <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> 
               <p style="display: inline;">&nbsp;support@carma.in</p>
             </p>
             <p style="display:inline-block">
               <span class="glyphicon glyphicon-phone-alt" aria-hidden="true" style="display:inline;"></span>
               <p style="display:inline;">&nbsp;022-23478610</p>
             </p>
             <p style="display:inline-block">
               <span class="glyphicon glyphicon-time" aria-hidden="true"></span> 
               <p style="display: inline;">&nbsp;24x7</p>
             </p>
             </div>

             <div class="col-xs-4 col-lg-4">
               <ul>
                 <li href="#">Careers</li>
                 <li href="#">FAQs</li>
                 <li href="#">Blog</li>
                 <li href="#">Contact Us</li>
               </ul>
             </div>

             <div class="col-xs-4 col-lg-4">
               <ul>
                 <li href="#">Rental Agreement</li>
                 <li href="#">Refund &amp; Cancellation</li>
                 <li href="#">Terms &amp; Condition</li>
               </ul>

               <a class="btn btn-social-icon btn-twitter">
  			  		   <span class="fa fa-twitter"></span>
  			       </a>
  				     <a class="btn btn-social-icon btn-facebook">
  			  		    <span class="fa fa-facebook"></span>
  				     </a>
  				     <a class="btn btn-social-icon btn-github">
  			  		   <span class="fa fa-linkedin"></span>
  				     </a>
  				     <a class="btn btn-social-icon btn-reddit">
  			  		    <span class="fa fa-reddit"></span>
  				    </a>   
  			 </div>          
      </div><!--row2---->

    </div> <!-- /container -->

       <!---Java Script-->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
       <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
           <script>
        if (${sessionScope.cemail} == null)
        { 
            document.getElementById("pro").disabled = false;
        }
        //The session is not null has value of user so show the Grid
                else { 
            document.getElementById("pro").disabled = true;
        }
    </script>
    <script type="text/javascript">
$( "a.submenu" ).click(function() {
$( ".menuBar" ).slideToggle( "normal", function() {
// Animation complete.
});
});
$( "ul li.dropdown a" ).click(function() {
$( "ul li.dropdown ul" ).slideToggle( "normal", function() {
// Animation complete.
});
$('ul li.dropdown').toggleClass('current');
});
</script>
  </body>
</html>