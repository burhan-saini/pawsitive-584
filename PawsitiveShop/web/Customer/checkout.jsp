<%-- 
    Document   : checkout
    Created on : Jun 26, 2026, 8:56:57 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
    </head>
    <body>
        <h1>Checkout</h1>
        <form action="CheckoutServlet" method="post">
            Delivery Address <br>
            <textarea name="address"></textarea><br><br>
            Payment Method <br>
            <select name="payment">
                <option>Online Banking</option>
                <option>Debit Card</option>
                <option>Credit Card</option>
                <option>Cash</option>
            </select><br><br>
            <input type="submit" value="Place Order">
        </form>
    </body>
</html>
