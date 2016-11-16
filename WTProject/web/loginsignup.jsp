<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap-social.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/styling.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/style.css">
    <link rel="stylesheet" href="css/style.css"> 
            
        <script src="bootstrap-3.3.5-dist/js/angular.min.js"></script>
        <script type="text/javascript">
                 function Captcha(){
                     var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
                     var i;
                     for (i=0;i<6;i++){
                       var a = alpha[Math.floor(Math.random() * alpha.length)];
                       var b = alpha[Math.floor(Math.random() * alpha.length)];
                       var c = alpha[Math.floor(Math.random() * alpha.length)];
                       var d = alpha[Math.floor(Math.random() * alpha.length)];
                       var e = alpha[Math.floor(Math.random() * alpha.length)];
                       var f = alpha[Math.floor(Math.random() * alpha.length)];
                       var g = alpha[Math.floor(Math.random() * alpha.length)];
                      }
                    var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f + ' ' + g;
                    document.getElementById("mainCaptcha").value = code
                  }
                  function ValidCaptcha(){
                      var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
                      var string2 = removeSpaces(document.getElementById('txtInput').value);
                      var phoneno = /^\d{10}$/;
                      if (string1 == string2 && document.getElementById('ascf').value.match(phoneno)){
                        document.getElementById("abc").disabled = false;
                        return true;
                      }
                      else{        
                        return false;
                      }
                  }
                  function removeSpaces(string){
                    return string.split(' ').join('');
                  }
                   

             </script>    

    
  
    
  </head>

  <body>
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
          <li class="dropdown active"><a href="loginsignup.jsp">Signin</a>
            <ul>
              <li><a href="loginsignup.jsp">Login</a></li>
              <li><a href="loginsignup.jsp">Signup</a></li>
            </ul>
          </li>
          <li><a href="about.html">About Us</a></li>
          <li><a>Guest</a></li>
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
    </nav>
  </div>
</header>
      
      
         <br><br><br>
    <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="./SignUpServletWT.do" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" name="firstName" required autocomplete="on" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text" name="lastName" required autocomplete="on"/>
            </div>
          </div>

          <div class="field-wrap">
            <div class="field-wrap">
              <label>
                Contact No.<span class="req">*</span>
              </label>
              <input type="text" name="contact" id="ascf" required autocomplete="on" />
            </div>
          </div>

          <div class="field-wrap">
            <div class="field-wrap">
              <label>
                Address<span class="req">*</span>
              </label>
              <input type="text" name="address" required autocomplete="on"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email" required autocomplete="on"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="on"/>
          </div>
          <div class="field-wrap">
              
          <!--Captcha-->
          <table onload="Captcha();">
                    <tr>
                     <td>
                           Text Captcha<br />
                           <label>Text Captcha</label><br><br>
                     </td>
                    </tr>
                    <tr>
                     <td>
                         <div class="field-wrap">
                       <input type="text" id="mainCaptcha" disabled style="color:white"; />
                        <input type="button" id="refresh" value="Refresh" onclick="Captcha();" />
                         </div>
                     </td>
                    </tr>
                    <tr>
                     <td>
                      <input type="text" id="txtInput" required />    
                    </td>
                   </tr>
                   <tr>
                    <td>
                      <input id="Button1" type="button" value="Check" onclick="alert(ValidCaptcha());"/>
                    </td>
                  </tr>
                </table>
   
          </div>
               <script type="text/javascript">
              Captcha();
          </script>
          <button type="submit" class="button" id="abc" disabled="disabled" button-block"/>Get Started</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="./LogInServletWT.do" method="post" >
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email" required autocomplete="on"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="on"/>
          </div>
          
              <p class="forgot"><a href="forgot.jsp">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
    <script src='bootstrap-3.3.5-dist/js/jquery.js'></script>

        <script src="bootstrap-3.3.5-dist/js/index.js"></script>

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
