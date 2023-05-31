<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/1/2023
  Time: 4:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/Product?action=create">
    <button type="submit">AddProduct</button>
</a>
<%--int id, String name, double priceProduct, String discribe, String producer--%>
<table>
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>priceProduct</th>
        <th>Discribe</th>
        <th>Producer</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>
                <c:out value="${product.id}"/>
            </td>
            <td>
                <c:out value="${product.name}"/>
            </td>
            <td>
                <c:out value="${product.priceProduct}"/>
            </td>
            <td>
                <c:out value="${product.discribe}"/>
            </td>
            <td>
                <c:out value="${product.producer}"/>
            </td>
            <td>
                <a href="/Product?action=edit&id=${product.id}">
                    <button type="submit">Edit</button>
                </a>
            </td>
            <td>
                <a href="/Product?action=delete&id=${product.id}">
                    <button type="submit">Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
