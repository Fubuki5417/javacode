<%-- 
    Document   : edit
    Created on : Jan 25, 2024, 5:12:52 PM
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
    <form action="edit" method="post">
        <c:if test="${not empty requestScope.rollNo}">
            <input type="hidden" name="id" value="${requestScope.rollNo}">
        </c:if>
        RollNo: <input type="text" name="rollno">
        <br>
        Name: <input type="text" name="name">
        <br>
        Mark: <input type="text" name="mark">
        <br>
        <input type="submit" value="edit">
    </form>
</body>
</html>
