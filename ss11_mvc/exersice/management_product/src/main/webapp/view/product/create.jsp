<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/1/2023
  Time: 5:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Thêm mới sản phẩm</h2>
<form method="post" action="/product?action=create">
    Nhập ID <input type="text" name="id">
    Nhập Tên <input type="text" name="name">
    Nhập giá <input type="text" name="price">
    Nhập mô tả <input type="text" name="discribe">
    Nhập nhà sản xuất <input type="text" name="producer">
    <button type="submit">Gửi</button>
</form>
</body>
</html>
