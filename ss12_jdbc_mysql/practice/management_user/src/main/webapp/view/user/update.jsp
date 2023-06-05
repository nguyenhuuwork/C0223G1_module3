<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/1/2023
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/user-servlet?action=update&id=${user.getId()}">
<%--    action="/user-servlet?action=update"--%>
    <table border="1" cellpadding="0">
        <tr>
            <td>Sua ten</td>
            <td><input type="text" name="name" value="${user.getName()}"/></td>
        </tr>
        <tr>
            <td>Sua email</td>
            <td><input type="text" name="email" value="${user.getEmail()}"/></td>
        </tr>
        <tr>
            <td>Sua ten dat nuoc</td>
            <td><input type="text" name="country" value="${user.getCountry()}"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update user"/></td>
        </tr>
    </table>
</form>
</body>
</html>
