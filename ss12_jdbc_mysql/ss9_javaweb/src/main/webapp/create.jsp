<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 30/5/2023
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/StudentServlet?action=create" method="post">
    Tên: <input type="name" name="name"><br>
    Giới tính: <input type="radio" name="gender" value="nam">Nam
    <input type="radio" name="gender" value="nu">Nu<br>
    Điểm: <input type="number" name="point"><br>
    Mã lớp học: <input type="number" name="classId"><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
