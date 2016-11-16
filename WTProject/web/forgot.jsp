<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>CAR-MA | Forgot Password</title>

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
                     <li role="presentation"><a href="#">LOG IN</a></li>
                     <li><a href="#">ABOUT US</a></li>
                  </ul>
               </div> <!-- /navbar-collapse -->
            </div>    <!-- /container-fluid -->
         </nav>  <!--end of navigation bar-->

        <br><br>
        <br><br>       
        
        
        <div class="container-fluid">

        <form action="ForgotPassServletWT.do" method="post">

      <div class="form-group row">
  
          <div class="field-wrap">
            <label>
              Confirm Email ID :<span class="req"></span>
            </label>
            <input type="email" name="email" />
          </div>
          <br><br>
         <div class="field-wrap">
            <label>
              Confirm Mobile Number (include +91):<span class="req"></span>
            </label>
            <input type="text" name="contact" />
          </div>

        <input class="button" type="submit" value="Confirm" onclick="alert('An OTP has been sent to your mobile number which is your new password. You can change it by going to Profile->Reset Password');"/>

      </div> <!--Form-->
      
      </form>
     
    </body>
</html>
