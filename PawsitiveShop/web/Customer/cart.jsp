<%-- 
    Document   : cart
    Created on : Jun 26, 2026, 8:56:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>
        <h1>My Cart</h1>
        <table border="1">
            <tr>
                <th>Product</th> 
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
            <tr>
                <td>Dog Food</td>
                <td>25.00</td>
                <td>2</td>
                <td>50.00</td>
            </tr>
        </table>
        <br>
        Total: RM50.00<br><br>
        <a href="checkout.jsp">Proceed to Checkout</a>
    </body>
</html>
