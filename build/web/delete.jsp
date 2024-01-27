<%-- 
    Document   : delete
    Created on : Jan 26, 2024, 9:31:18 PM
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
        <title>Delete</title>
    </head>
    <body>
        <c:if test="${not empty requestScope.rollNo}">                       
            <form action="delete" method="post">
                <input type="hidden" name="rollno" value="${requestScope.rollNo}">
                <h1>Are you sure you want to delete this person's information?</h1>
                <input type="submit" name="confirm" value="Yes">
                <input type="submit" name="confirm" value="No">
            </form>
        </c:if>
    </body>
</html>
