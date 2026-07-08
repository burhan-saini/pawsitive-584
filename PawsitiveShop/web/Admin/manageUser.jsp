<%-- 
    Document   : manageUser
    Created on : Jun 26, 2026, 9:27:49 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Users</title>
    </head>
    <body>
        <h1>Manage Users</h1>
        <a href="dashboard.jsp">Back to Dashboard</a>
        <hr>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Ali</td>
                <td>ali@gmail.com</td>
                <td>Customer</td>
                <td><button>Edit</button><button>Delete</button></td>
            </tr>
        </table>
    </body>
</html>
