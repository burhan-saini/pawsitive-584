<%-- 
    Document   : dashboard
    Created on : Jun 26, 2026, 9:27:03 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
    </head>
    <body>
        <h1>Pet Store Admin Dashboard</h1>
        <hr>
            <a href="dashboard.jsp">Dashboard</a>|
            <a href="manageProduct.jsp">Products</a>|
            <a href="manageCategory.jsp">Categories</a>|
            <a href="manageUser.jsp">Users</a>|
            <a href="manageOrder.jsp">Orders</a>|
            <a href="../logout.jsp">Logout</a>
        <hr>
        <h2>System Summary</h2>
        <table border="1" cellpadding="10">
            <tr>
                <th>Total Products</th>
                <th>Total Categories</th>
                <th>Total User</th>
                <th>Total Orders</th>
            </tr>
            <tr>
                <td>20</td>
                <td>5</td>
                <td>30</td>
                <td>15</td>
            </tr>
        </table>
    </body>
</html>
