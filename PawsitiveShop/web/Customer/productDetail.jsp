<%-- 
    Document   : productDetail
    Created on : Jun 26, 2026, 8:56:31 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Details</title>
    </head>
    <body>
        <h1>Dog Food</h1>
        <p>Price : RM25.00</p>
        <p>Stock : 20</p>
        <p>Description :  Premium dog food.</p>
        
        <form action="cartServlet" method="post">
            Quantity
            <input type="number" name="quantity" value="1">
            <input type="hidden" name="productID" value="1">
            <br><br>
            <input type="submit" name="Add to Cart">
        </form>
    </body>
</html>
