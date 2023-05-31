<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/1/2023
  Time: 6:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method=post>
    <table border="1" cellpadding="0">
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="${product.getName()}"></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="text" name="price" value="${product.getPrice}"></td>
        </tr>
        <tr>
            <td>Discribe:</td>
            <td><input type="text" name="discribe" value="${product.getDiscribe()}"></td>
        </tr>
        <tr>
            <td>Producer:</td>
            <td><input type="text" name="producer" value="${product.getProducer()}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update product"></td>
        </tr>
    </table>
</form>
</body>
</html>
