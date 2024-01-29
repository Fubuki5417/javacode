<%-- 
    Document   : login
    Created on : Jan 29, 2024, 1:06:12 PM
    Author     : huyho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST">
        Username: <br>
        <input type="text" name="user" value="" /><br>
        Password: <br>
        <input type="text" name="pass" value="" /><br>
        <input type="submit" value="Login" />        
        </form>
    </body>
</html>
