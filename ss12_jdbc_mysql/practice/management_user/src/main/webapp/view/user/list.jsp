<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/1/2023
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sach sinh vien</h1>
<a href="/user-servlet?action=create">
    <button type="submit">Them moi</button>
</a>
<table border="1" cellpadding="0">
    <tr>
        <%--        int id, String name, String email, String country--%>
        <th>STT</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Sua</th>
        <th>Xoa</th>
    </tr>
    <c:forEach items="${userlist}" var="user">
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
            <td><a href="/user-servlet?action=update&id=${user.id}">
                <button type="submit">Sua</button>
            </a>
            </td>
            <td>
              <a href="/user-servlet?action=delete&id=${user.id}">
                  <button type= "submit">Xoa</button>
              </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
