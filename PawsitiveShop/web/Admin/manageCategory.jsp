<%-- 
    Document   : manageCategory
    Created on : Jun 26, 2026, 9:27:36 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Categories</title>
    </head>
    <body>
        <h1>Manage Categories</h1>
        <a href="dashboard.jsp">Back to Dashboard</a>
        <hr>
        <form>
            Category Name
            <input type="text">
            <input type="submit" value="Add Category">
        </form>
        <hr>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Category</th>
                <th>Action</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Food</td>
                <td><button>Edit</button><button>Delete</button></td>
            </tr>
        </table>
    </body>
</html>
