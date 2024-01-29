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
               <c:set var="rollNo" value="${requestScope.rollNo}" />
    <h1>Are you sure you want to delete this information?</h1>
    <form action="delete" method="post">
        <input type="hidden" name="rollNo" value="${rollNo}">
        <input type="hidden" name="isDelete" value="1">
        <input type="submit" value="Yes" style="padding: 5px 20px">
    </form>
    <form action="delete" method="post">
        <input type="hidden" name="rollNo" value="${rollNo}">
        <input type="hidden" name="isDelete" value="0">
        <input type="submit" value="No" style="padding: 5px 20px">
    </form>
    </body>
</html>
