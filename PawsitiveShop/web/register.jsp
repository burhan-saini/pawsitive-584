<%-- 
    Document   : register
    Created on : Jun 26, 2026, 8:48:24 PM
    Author     : Ryq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Create Account</h1>
        <form action="RegisterServlet" method="post">
            Name<br>
            <input type="text" name="name"><br><br>
            Email<br>
            <input type="email" name="email"><br><br>
            Password<br>
            <input type="password" name="password"><br><br>
            Phone<br>
            <input type="text" name="phone"><br><br>
            Address<br>
            <textarea name="address"></textarea><br><br>
            
            <input type="submit" name="Register">
        </form>
    </body>
</html>
