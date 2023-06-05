<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/1/2023
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/user-servlet?action=create">
    <%--    int id, String name, String email, String country--%>
    Nhap id <input type="text" name="id">
    Nhap ten <input type="text" name="name">
    Nhap email <input type="text" name="email">
    Nhap country <input type="text" name="country">
    <button type="submit">Gui</button>
</form>
</body>
</html>
