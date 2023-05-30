<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form method="post" action="/calculate-discount">
    <input type="text" name="productDescription" >
    <input type="text" name="listPrice" placeholder="priceProduct">
    <input type="text" name="discountPercent" placeholder="discountPercent">
    <button type="submit">Submit</button>
</form>
</body>
</html>