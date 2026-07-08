<%-- 
    Document   : manageProduct
    Created on : Jun 26, 2026, 9:27:22 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Products</title>
    </head>
    <body>
        <h1>Manage Products</h1>
        <a href="dashboard.jsp">Back to Dashboard</a>
        <hr>
        <h3>Add Product</h3>
        <form>
            Name
            <input type="text">
            Price
            <input type="text">
            Stock
            <input type="text">
            Category
            <input type="text">
            
            <input type="submit" value="Add Product">
        </form>
        <hr>
        <h3>Product List</h3>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Action</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Dog Food</td>
                <td>25.00</td>
                <td>20</td>
                <td><button>Edit</button><button>Delete</button></td>
            </tr>
        </table>
    </body>
</html>
