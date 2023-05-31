<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 5/31/2023
  Time: 12:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/customer?action=create">
    Nhập ID <input type="number" name="ID">
    Nhập Tên <input type="text" name ="name">
    Nhập email <input type="text" name="email">
    Nhập address <input type="text" name="address">
    <button type="submit">Gửi</button>
</form>
</body>
</html>
