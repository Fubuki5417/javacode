<%-- 
    Document   : list
    Created on : Jan 25, 2024, 4:23:52 PM
    Author     : huyho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Student" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List</title>
    </head>
    <body>
        <table border="1">
            <thead>
            <th>Roll No</th>
            <th>Name</th>
            <th>Mark</th>
            <th colspan="2">Action</th>
        </thead>
        <tbody>
            <c:forEach items="${requestScope.students}" var="s">
                <tr>
                    <td>${s.rollNo}</td>
                    <td>${s.name}</td>
                    <td>${s.mark}</td>
                    <td>
                        <a href="edit.jsp?id=${s.rollNo}">Edit</a> 
                        <a href="delete.jsp?id=${s.rollNo}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <form action="insert">
        <input type="submit" value="insert">
    </form>
    <form action="logout" method="get">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
