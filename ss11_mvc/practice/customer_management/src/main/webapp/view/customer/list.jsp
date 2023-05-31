<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 5/31/2023
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="customer?action=create"><button type="submit">AddCustomer</button></a>
<table border="1" cellspacing="0">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>
                <c:out value="${customer.id}"/>
            </td>
            <td>
                <c:out value="${customer.name}"/>
            </td>
            <td>
                <c:out value="${customer.email}"/>
            </td>
            <td>
                <c:out value="${customer.address}"/>
            </td>
            <td>
                <a href="/customer?action=edit&id=${customer.id}"><button type="submit">Edit</button></a>
            </td>
            <td>
                <a href="/customer?action=delete&id=${customer.id}"><button type="submit">Delete</button></a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
