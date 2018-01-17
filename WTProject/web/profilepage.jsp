<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" ng-module="formExample">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>CAR-MA | Profile Page</title>
   <!-- CSS-->
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">

    <style>
      img{
        width: 145px;
        border:2px solid black;
        position: relative;
        right: -250px;
        top: 70px;
      }
    </style>

     <!--JQUERY-->
    <script src="bootstrap-3.3.5-dist/js/jquery-2.1.4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
       <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>

   <!--<script>
    <!-jquery for toglle
$(document).ready(function(){
    $("#bt2").click(function(){
        $("#rentd").toggle();
    });
});
    </script>-->

  </head>

  <body align="left">

        <div class="col-xs-5">
           <img src="images/Vinayak.jpeg">
        </div>

          <br><br><br><br><br><br><br>
      <form method="POST" action="./CheckPasswordServletWT.do">
      <fieldset>
        <legend>Personalia:</legend>
        <div class="form-group row col-xs-8">
           <label class="col-xs-2 col-form-label">Name</label>
           <div class="col-xs-8">
              <input class="form-control" type="text"  id="example-text-input" name="name">
           </div>
        </div>
       
        <br>
        <div class="form-group row col-xs-8">
           <label class="col-xs-2 col-form-label">Email</label>
           <div class="col-xs-8">
               <% String e= (String)session.getAttribute("cemail");                     
                if (e != null){%>
                <input class="form-control" type="email" id="emailid" name="email" value=${sessionScope.cemail}>
               <%           }
                   else{
                                 
                  %>
                                
               <input class="form-control" type="email" id="emailid" name="email"<%}%>
           </div>
        </div>
        <script type="text/javascript">
                document.getElementById("emailid").value=${sessionScope.cemail}; 
          </script>

          <div class="form-group row col-xs-8">
            <label class="col-xs-2 col-form-label">Contact</label>
            <div class="col-xs-8">
                <input class="form-control" type="tel" id="example-tel-input cont" name="contact">
            </div>
          </div>

         <div class="form-group row col-xs-8">
            <label class="col-xs-2 col-form-label">Address</label>
            <div class="col-xs-7">
              <textarea rows="4" cols="50" name="address"></textarea>
            </div>
          </div>

        <div class="form-group row col-xs-8">
           <label class="col-xs-2 col-form-label">Password</label>
            <div class="col-xs-8">
                <input class="form-control" type="password"  id="example-password-input"  name="password">
            </div>
        </div>
 
      <div class="form-group row col-xs-8">
        <input class="btn btn-info btn-lg" type="submit"  value="Reset Password">
      </div>
      
        <div class="form-group row col-xs-7">
            <h4 align = left>For Reservation Details</h4>
            <input class="btn btn-warning btn-lg" type="submit" value="Renting Details" data-toggle="collapse" data-target="#rentd" id="bt2">
        </div> 
        
        <div class="form-group row col-xs-7" id="rentd">
            
        </div>  
      </body>
     </html>
     