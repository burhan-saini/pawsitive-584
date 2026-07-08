<%-- 
    Document   : Login
    Created on : Jun 26, 2026, 8:43:09 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Login</title>
    </head>
    <body>
        <h1>Customer Login</h1>
        <form action="LoginServlet" method="post">
            Email<br>
            <input type="email" name="email" required><br><br>
            Password<br>
            <input type="password" name="password" required><br><br>
            <input type="submit" value="Login">
        </form>>
        
        <a href="register.jsp">Register Here</a>
    </body>
</html>
