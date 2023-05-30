<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form method="post" action="CalculatorServlet">
    <h2>Calculator</h2>
    <label>First operand</label>
    <input type="text" name="FirstOperand">
    <label>Operator</label>
    <select name="operator">
        <option value="addition">+</option>
        <option value="subtraction">-</option>
        <option value="division">/</option>
        <option value="multiplication">*</option>
    </select>
    <label>Second operand</label>
    <input type="text" name="SecondOperand">
    <button type="submit">Submit</button>
</form>
</body>
</html>