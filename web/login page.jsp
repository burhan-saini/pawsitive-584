<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>LocalShop Login</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial, Helvetica, sans-serif;
        }

        body{
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background:url("images/store.jpg") no-repeat center center;
            background-size:cover;
        }

        .container{
            width:900px;
            height:600px;
            background:#fff;
            border-radius:30px;
            overflow:hidden;
            display:flex;
            box-shadow:0 10px 30px rgba(0,0,0,0.3);
        }

        .left-panel{
            width:50%;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
            background:#f8f8f8;
        }

        .left-panel h1{
            color:#5a35b5;
            margin-bottom:40px;
        }

        .form-group{
            width:280px;
            margin-bottom:25px;
        }

        .form-group label{
            display:block;
            font-size:13px;
            font-weight:bold;
            margin-bottom:8px;
        }

        .form-group input{
            width:100%;
            padding:12px;
            border:none;
            border-radius:6px;
            background:#eaeaea;
        }

        .login-btn{
            width:110px;
            padding:12px;
            border:none;
            border-radius:6px;
            background:#5a35b5;
            color:white;
            font-weight:bold;
            cursor:pointer;
            margin-top:15px;
        }

        .login-btn:hover{
            background:#47279a;
        }

        .forgot-link{
            margin-top:15px;
            font-size:13px;
        }

        .forgot-link a{
            color:#5a35b5;
            text-decoration:none;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
            text-align: center;
        }

        .right-panel{
            width:50%;
            background:#5a35b5;
            color:white;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
            text-align:center;
            border-top-left-radius:120px;
            border-bottom-left-radius:120px;
        }

        .right-panel h1{
            margin-bottom:20px;
            font-size:36px;
        }

        .right-panel p{
            width:75%;
            line-height:1.6;
            margin-bottom:30px;
        }

        .register-btn{
            padding:12px 40px;
            border:2px solid white;
            background:transparent;
            color:white;
            border-radius:6px;
            font-weight:bold;
            cursor:pointer;
        }

        .register-btn:hover{
            background:white;
            color:#5a35b5;
        }
    </style>
</head>

<body>

<%
    String phoneNumber = request.getParameter("PHONE_NUMBER");
    String password = request.getParameter("PASSWORD");
    String errorMessage = null;
    
    if (phoneNumber != null && !phoneNumber.trim().isEmpty() && password != null) {
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            // Load Derby driver
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            
            // Connect to YOUR database: lokalshop
            conn = DriverManager.getConnection(
                "jdbc:derby://localhost:1527/lokalshop",  // ← CHANGED to your database
                "app",  // username
                "app"   // password
            );
            
            // Convert phone number to integer (since your table uses INTEGER)
            int phoneInt = Integer.parseInt(phoneNumber.trim());
            
            // Query the User table (make sure the table exists in lokalshop)
            String sql = "SELECT * FROM \"APP\".\"User\" WHERE PHONE_NUMBER = ? AND PASSWORD = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, phoneInt);
            pstmt.setString(2, password);
            
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                // Login successful
                session.setAttribute("username", phoneNumber);
                session.setAttribute("name", rs.getString("Name"));
                session.setAttribute("isSeller", rs.getBoolean("Seller"));
                response.sendRedirect("homepage.jsp");
                return;
            } else {
                errorMessage = "Invalid phone number or password. Please try again.";
            }
            
        } catch (NumberFormatException e) {
            errorMessage = "Phone number must be numeric only!";
        } catch (ClassNotFoundException e) {
            errorMessage = "Database driver not found. Please add Java DB library to project.";
            e.printStackTrace();
        } catch (SQLException e) {
            errorMessage = "Database error: " + e.getMessage();
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) {}
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) {}
            try { if (conn != null) conn.close(); } catch (SQLException e) {}
        }
    }
%>

<div class="container">
    <div class="left-panel">
        <h1>Login User</h1>
        
        <form action="login page.jsp" method="post">
            <div class="form-group">
                <label>Phone Number:</label>
                <input type="text" name="PHONE_NUMBER" placeholder="Phone number" 
                       value="<%= phoneNumber != null ? phoneNumber : "" %>">
            </div>

            <div class="form-group">
                <label>Password:</label>
                <input type="password" name="PASSWORD" placeholder="Password">
            </div>

            <button type="submit" class="login-btn">LOGIN</button>
        </form>
        
        <% if (errorMessage != null) { %>
            <div class="error-message"><%= errorMessage %></div>
        <% } %>
        
        <div class="forgot-link">
            <a href="register.jsp">Don't have an account?</a>
        </div>
    </div>

    <div class="right-panel">
        <h1>Welcome to<br>LocalShop Online<br>Platform!</h1>
        <p>Register with your personal details to see more about us.</p>
        <button class="register-btn" onclick="window.location.href='register.jsp'">
            REGISTER
        </button>
    </div>
</div>

</body>
</html>