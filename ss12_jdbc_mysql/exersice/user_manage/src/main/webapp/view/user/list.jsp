<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/2/2023
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" cellspacing="0">
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Sua</th>
        <th>Xoa</th>
    </tr>
    <c:forEach items="${userList}" var="user">
        <tr>
            <td>
                <c:out value="${user.id}"/>
            </td>
            <td>
                <c:out value="${user.name}"/>
            </td>
            <td>
                <c:out value="${user.email}"/>
            </td>
            <td>
                <c:out value="${user.country}"/>
            </td>
            <td>
                <a href="/user?action=update&id=${user.id}"/>
                <button type="submit">Sua</button>
            </td>
            <td>
                <a href="/user?action=delete&id=${user.id}"/>
                <button type="submit">Xoa</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
