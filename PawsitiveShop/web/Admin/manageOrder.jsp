<%-- 
    Document   : manageOrder
    Created on : Jun 26, 2026, 9:28:00 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Orders</title>
    </head>
    <body>
        <h1>Manage Orders</h1>
        <a href="dashboard.jsp">Back to Dashboard</a>
        <hr>
        <table border="1">
            <tr>
                <th>Order ID</th>
                <th>Customer</th>
                <th>Total</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <tr>
                <td>1001</td>
                <td>John</td>
                <td>50.00</td>
                <td>Processing</td>
                <td><button>Update</button><button>Delete</button></td>
            </tr>
        </table>
    </body>
</html>
