<%-- 
    Document   : registersuccess
    Created on : 12 Nov, 2016, 4:43:12 AM
    Author     : Vinayak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Cache.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>You have successfully booked your car at the amount of Rs.${sessionScope.prc} !</h1>
        <br>
        <hr>
        <a href="home.jsp">Go Back to Home Page</a>
    </body>
</html>
