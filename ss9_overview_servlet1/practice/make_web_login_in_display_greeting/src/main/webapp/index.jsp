<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Make-web-login</title>
    <style type="text/css">
        .login {
            height: 180px;
            width: 230px;
            margin: 0;
            padding: 10px;
            border: 1px #CCC solid;
        }

        .login input {
            padding: 5px;
            margin: 5px;
        }
    </style>
</head>
<body>
<form method="post" action="LoginServlet">
    <div class="login">
        <h2>Login</h2>
        <input type="text" name="username" size="25" placeholder="username"/>
        <input type="password" name="password" size="25" placeholder="password"/>
        <input type="submit" value="Sign in"/>
    </div>
</form>
</body>
</html>