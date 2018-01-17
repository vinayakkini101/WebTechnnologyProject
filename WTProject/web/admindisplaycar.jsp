<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1" width="303">
            <tr>
                <td width="119"><b>Email</b></td>
                <td width="168"><b>Contact</b></td>
                <td width="119"><b>First Name</b></td>
            </tr>
<!--        <form  method="post">
            <%--<c:forEach var="customer" items="${data}">
                <br/> ${customer.id}  ${customer.name}
            </c:forEach>
            --%>  
            -->
                <c:forEach var="customer" items="${requestScope.custname}">
                 <%-- This calls the getId() method on your asd object --%>
                 <tr>
                     
                <td><c:out value="${customer.email}"/></td>
                <%-- This calls the getName() method on your asd object --%>
                <td> <c:out value="${customer.contact}"/></td>
                <%-- This calls the getAge() method on your asd object --%>
                <td><c:out value="${customer.firstname}"/></td>
                 </tr>
                </c:forEach>
                 
        <!--</form>-->
        </tr>    
    </table>
</body>
</html>