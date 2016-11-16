 <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="Car-Ma,rental,car rental">
    <title>CAR-MA | Admin</title>

    <!--CSS-->
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap-social.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/font-awesome.css">

    <!--JQUERY-->
    <script src="bootstrap-3.3.5-dist/js/jquery-2.1.4.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="ajax/admin.js">
</script>
 </head>
  <body>
      <br><br>
      <div class="container">
           <h2 align="center" style="text-shadow: 0px 4px 3px rgba(0,0,0,0.4),
             0px 8px 13px rgba(0,0,0,0.1),
             0px 18px 23px rgba(0,0,0,0.1);"> Pagination</h2><br>
       <!-- Contextual button for informational alert messages -->
       <button type="submit" id="car" class="btn btn-info" value="Car Records" action="./DisplayCarWTServlet.do" >Car Records</button>

       <button type="submit" id="cust" class="btn btn-info "  value="cust"  action="./DisplayCustomerWTServlet.do" >Customer Records</button>

       <button type="submit" class="btn btn-info "  value="Feedback Records"  >Feedback Records</button>

       <button type="submit" class="btn btn-info " value="Employee Records" formaction="" formmethod="post">Employee Records</button>

       <button type="submit" class="btn btn-info " value="Car Reserved Records" formaction="" formmethod="post">Car Reserved Records</button>

       <a href="addcar.jsp">
       <button type="submit" class="btn btn-info " value="Add Car" formaction="./AddCarWT.do" formmethod="post">Add Car</button>
       </a>
     
       <button type="submit" class="btn btn-info " onclick="window.location='deletecar.jsp'" value="Delete Car" formaction="./RemoveCarWT.do" formmethod="post">Delete Car</button>

       <button type="submit" class="btn btn-info " value="Delete Customer" formaction="./RemoveCustomerWT.do" formmethod="post">Delete Customer</button>
       </a>
     </div>
      
      
<!--      <form action="./DisplayCustomerWTServlet.do">
          <input type="submit" value="View Customer" name="submit">
      </form>
      -->
      
      
      <div id="tablediv">
          <table cellspacing="0" id="countrytable" class="table"> 
    <thead> 
        <th scope="col">Name</th> 
        <th scope="col">Contact</th> 
        <th scope="col">Email</th> 
<!--        <th scope="col">Region</th> -->
<!--        <th scope="col">Population</th> -->
<!--         <th scope="col">Capital</th>             -->
    </thead> 
    <tbody id="table-content"></tbody>
</table>
          </div>
      
      
      
       <div id="tablediv1">
          <table cellspacing="0" id="countrytable1" class="table1"> 
    <thead> 
        <th scope="col">Car ID</th> 
        <th scope="col">Type</th> 
        <th scope="col">Brand</th> 
        <th scope="col">Model</th> 
        <th scope="col">Count</th> 
<!--        <th scope="col">Region</th> -->
<!--        <th scope="col">Population</th> -->
<!--         <th scope="col">Capital</th>             -->
    </thead> 
    <tbody id="table-content1"></tbody>
</table>
          </div>
      
      
  </body>
  </html>