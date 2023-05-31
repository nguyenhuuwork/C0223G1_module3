<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 5/30/2023
  Time: 10:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" cellspacing="0">
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa Chỉ</th>
        <th>Hình Ảnh</th>
    </tr>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>
                <c:out value="${customer.name}"/>
            </td>
            <td>
                <c:out value="${customer.dateOfBirth}"/>
            </td>
            <td>
                <c:out value="${customer.address}"/>
            </td>
            <td>
                <img height="200px" width="200px" src="  <c:out value="${customer.picture}"/>"/>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
