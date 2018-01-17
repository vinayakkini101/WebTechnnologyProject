
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>CAR-MA | Registration</title>

   <!-- CSS-->
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap-social.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/styling2.css">

     <!--JQUERY-->
    <script src="bootstrap-3.3.5-dist/js/jquery-2.1.4.min.js"></script>
   
  </head>

  <body>

      <!-- navbar-static-top -->
         <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
               <!-- Brand and togg;e get grouped for better mobile display -->
               <div class="navbar-header">
                 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    Menu
                  </button>
                    <img src="images/logo.png" id="logo">
               </div> <!-- /navbar-header -->

                   <!-- Collect the nav links and other content for toggling -->
               <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                     <li role="presentation"s><a href="home.jsp">HOME</a></li>
                     <li role="presentation" class="active"><a href="tariff.jsp">TARRIF<span class="sr-only">(current)</span></a></li>
                     <li role="presentation"><a href="loginsignup.jsp">LOG IN</a></li>
                     <li><a href="#">ABOUT US</a></li>
                  </ul>
               </div> <!-- /navbar-collapse -->
            </div>    <!-- /container-fluid -->
         </nav>  <!--end of navigation bar-->

        <br><br>
        <br><br>
         <!--BreadCrumb-->
        <ol class="breadcrumb">
          <li><a href="home.jsp">Home</a><span class="glyphicon glyphicon-circle-arrow-right"></span></li>
          <li><a href="loginsignup.jsp">Tariff</a><span class="glyphicon glyphicon-circle-arrow-right"></span></li>
          <li class="active"><a href="register.jsp">Registeration</a></li>
        </ol>
         
        <!--BOOKING FORM-->
  <div class="container-fluid">
        <h2>REGISTER FOR THE TRIP</h2>

        <form action="./RegisterServletsWT.do" method="post">

      <div class="form-group row" id="register">

          
        <div class="form-group row">
           <label for="example-text-input" class="col-xs-3 col-form-label">Email</label>
           <div class="col-xs-8">
               <% String e= (String)session.getAttribute("cemail");                     
                if (e != null){%>
                <input class="form-control" type="email" id="emailid" name="email" value=${sessionScope.cemail}>
               <%           }
                   else{ %>
                        <input class="form-control" type="email" name="email" placeholder="Email" id="emailid" >
                   <% }%>
               
            </div>
        </div>
  
        <div class="form-group row">
          <label for="example-text-input" class="col-xs-3 col-form-label">Car ID</label>
          <div class="col-xs-8">
              <% String f= (String)session.getAttribute("cid");                     
                if (f != null){%>
                <input class="form-control" type="text" id="carID" name="carid" value=${sessionScope.cid}>
               <%           }
                   else{ %>
             <input class="form-control" type="text" name="carid" placeholder="Car ID" id="carID" >
             <% }%>
               

          </div>
        </div>  
          
          
          
        <div class="form-group row">
           <label for="example-text-input" class="col-xs-3 col-form-label">Source</label>
           <div class="col-xs-8">
              <input class="form-control" type="text" name="source" placeholder="Source" id="example-text-input" pattern="([A-Z]).([a-z]){1,20}" title="First letter capital rest small" required>
            </div>
        </div>
  
        <div class="form-group row">
          <label for="example-text-input" class="col-xs-3 col-form-label">Destination</label>
          <div class="col-xs-8">
             <input class="form-control" type="text" name="destination" placeholder="Destination" id="example-text-input" pattern="([A-Z]).([a-z]){1,20}" title="First letter capital rest small" required>
          </div>
        </div>

        <div class="form-group row">
           <label for="example-number-input" class="col-xs-3 col-form-label">No of Days</label>
           <div class="col-xs-8">
              <input class="form-control" type="number" name="numOfDays" placeholder="14" id="example-number-input" required>
           </div>
        </div>

        <div class="form-group row">
          <label for="example-date-input" class="col-xs-3 col-form-label">Date</label>
          <div class="col-xs-8">
            <input class="form-control" type="date" name="date" placeholder="2013-09-19" id="example-date-input" required>
           </div>
        </div>

        <div class="form-group row">
          <label for="example-time-input" class="col-xs-3 col-form-label">Time</label>
          <div class="col-xs-8">
             <input class="form-control" type="time" name="time" placeholder="21:00:00" id="example-time-input" required>
          </div>
        </div>
        <button class="button" type="submit"><span>BOOK </span></button>

      </div> <!--Form-->
      </form>
  </div>
      <hr>

      <!-- FOOTER BEGINS --> <!--<img src="images/logo_2.png" class="container image-responsive " width="80%">-->
       <div class="container-fluid" id="footer">
          <div class="row">

             <div class="col-xs-4">
               <img src="images/logo.png" id="logo">
             </div>

             <div class="col-xs-4">
                <h4>COMPANY</h4>
             </div>

            <div class="col-xs-4">
               <h4>POLICIES</h4>
            </div>

          </div> <!--/row -->

          <div class ="row">

             <div class="col-xs-4" >
             <p style="display:inline-block">
               <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> 
               <p style="display: inline;">&nbsp;support@carma.in</p>
             </p>
             <p style="display:inline-block">
               <span class="glyphicon glyphicon-phone-alt" aria-hidden="true" style="display:inline;"></span>
               <p style="display:inline;">&nbsp;022-23488310</p>
             </p>
             <p style="display:inline-block">
               <span class="glyphicon glyphicon-time" aria-hidden="true"></span> 
               <p style="display: inline;">&nbsp;24x8</p>
             </p>
             </div>

             <div class="col-xs-4">
               <ul>
                 <li href="#">Careers</li>
                 <li href="#">FAQs</li>
                 <li href="#">Blog</li>
                 <li href="#">Contact Us</li>
               </ul>
             </div>

             <div class="col-xs-4">
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
      
  </body>
</html>

