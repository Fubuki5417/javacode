<%-- 
    Document   : insert
    Created on : Jan 26, 2024, 8:50:07 PM
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
        <title>Insert</title>
    </head>
    <body>
         <form action="insert" method="post">
            RollNo: <input type="text" name="rollno">
            <br>
            Name: <input type="text" name="name">
            <br>
            Mark: <input type="text" name="mark">
            <br>
            <input type="submit" value="insert">
        </form>
    </body>
</html>
