<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>LocalShop Register</title>
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
            width:1000px;
            height:auto;
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
            padding:30px 20px;
        }

        .left-panel h1{
            color:#5a35b5;
            margin-bottom:30px;
        }

        .form-group{
            width:280px;
            margin-bottom:20px;
        }

        .form-group label{
            display:block;
            font-size:13px;
            font-weight:bold;
            margin-bottom:8px;
            color:#333;
        }

        .form-group input{
            width:100%;
            padding:12px;
            border:none;
            border-radius:6px;
            background:#eaeaea;
        }

        .form-group select{
            width:100%;
            padding:12px;
            border:none;
            border-radius:6px;
            background:#eaeaea;
        }

        .form-group textarea{
            width:100%;
            padding:12px;
            border:none;
            border-radius:6px;
            background:#eaeaea;
            font-family:Arial, Helvetica, sans-serif;
            resize:vertical;
        }

        .register-btn{
            width:110px;
            padding:12px;
            border:none;
            border-radius:6px;
            background:#5a35b5;
            color:white;
            font-weight:bold;
            cursor:pointer;
            margin-top:10px;
        }

        .register-btn:hover{
            background:#47279a;
        }

        .login-link{
            margin-top:20px;
            font-size:13px;
        }

        .login-link a{
            color:#5a35b5;
            text-decoration:none;
        }

        .error-message {
            color: red;
            font-size: 13px;
            margin-top: 10px;
            text-align: center;
            background:#ffe6e6;
            padding:8px;
            border-radius:5px;
            width:280px;
        }

        .success-message {
            color: green;
            font-size: 13px;
            margin-top: 10px;
            text-align: center;
            background:#e6ffe6;
            padding:8px;
            border-radius:5px;
            width:280px;
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
            padding:40px 20px;
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

        .login-btn{
            padding:12px 40px;
            border:2px solid white;
            background:transparent;
            color:white;
            border-radius:6px;
            font-weight:bold;
            cursor:pointer;
        }

        .login-btn:hover{
            background:white;
            color:#5a35b5;
        }
    </style>
</head>

<body>

<%
    String name = request.getParameter("NAME");
    String phoneNumber = request.getParameter("PHONE_NUMBER");
    String password = request.getParameter("PASSWORD");
    String confirmPassword = request.getParameter("CONFIRM_PASSWORD");
    String address = request.getParameter("ADDRESS");
    String sellerStr = request.getParameter("SELLER");
    String errorMessage = null;
    String successMessage = null;
    
    if (name != null && phoneNumber != null && password != null) {
        
        if (name.trim().isEmpty()) {
            errorMessage = "Please enter your full name.";
        } else if (phoneNumber.trim().isEmpty()) {
            errorMessage = "Please enter your phone number.";
        } else if (password.trim().isEmpty()) {
            errorMessage = "Please enter a password.";
        } else if (password.length() < 4) {
            errorMessage = "Password must be at least 4 characters long.";
        } else if (!password.equals(confirmPassword)) {
            errorMessage = "Passwords do not match.";
        } else {
            
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                
                conn = DriverManager.getConnection(
                    "jdbc:derby://localhost:1527/lokalshop", 
                    "app", 
                    "app"
                );
                
                // NO conversion - keep as String directly
                String phoneStr = phoneNumber.trim();
                
                // Check if phone number exists
                String checkSql = "SELECT * FROM \"APP\".\"User\" WHERE PHONE_NUMBER = ?";
                pstmt = conn.prepareStatement(checkSql);
                pstmt.setString(1, phoneStr);  // Direct string, no conversion
                rs = pstmt.executeQuery();
                
                if (rs.next()) {
                    errorMessage = "This phone number is already registered. Please login instead.";
                } else {
                    // Insert new user
                    boolean isSeller = "on".equals(sellerStr) || "true".equals(sellerStr);
                    
                    String insertSql = "INSERT INTO \"APP\".\"User\" (NAME, PHONE_NUMBER, PASSWORD, SELLER, ADDRESS) VALUES (?, ?, ?, ?, ?)";
                    pstmt = conn.prepareStatement(insertSql);
                    pstmt.setString(1, name.trim());
                    pstmt.setString(2, phoneStr);  // Direct string
                    pstmt.setString(3, password);
                    pstmt.setBoolean(4, isSeller);
                    pstmt.setString(5, address != null ? address.trim() : "");
                    
                    int rowsAffected = pstmt.executeUpdate();
                    
                    if (rowsAffected > 0) {
                        successMessage = "Registration successful! Please login with your credentials.";
                        // Clear form
                        name = null;
                        phoneNumber = null;
                        password = null;
                        confirmPassword = null;
                        address = null;
                    } else {
                        errorMessage = "Registration failed. Please try again.";
                    }
                }
                
            } catch (ClassNotFoundException e) {
                errorMessage = "Database driver not found. Please add Java DB library.";
            } catch (SQLException e) {
                errorMessage = "Database error: " + e.getMessage();
                System.out.println("SQL Error: " + e.getMessage());
                e.printStackTrace();
            } finally {
                try { if (rs != null) rs.close(); } catch (SQLException e) {}
                try { if (pstmt != null) pstmt.close(); } catch (SQLException e) {}
                try { if (conn != null) conn.close(); } catch (SQLException e) {}
            }
        }
    }
%>

<div class="container">
    <div class="left-panel">
        <h1>Create Account</h1>
        
        <form action="register.jsp" method="post">
            <div class="form-group">
                <label>Full Name:</label>
                <input type="text" name="NAME" placeholder="Enter your full name" 
                       value="<%= name != null ? name : "" %>" required>
            </div>
            
            <div class="form-group">
                <label>Phone Number:</label>
                <input type="text" name="PHONE_NUMBER" placeholder="Enter phone number" 
                       value="<%= phoneNumber != null ? phoneNumber : "" %>" 
                       maxlength="50" required>
                <small style="color:#666; font-size:11px;">Any length supported (no dashes or spaces)</small>
            </div>
            
            <div class="form-group">
                <label>Address:</label>
                <textarea name="ADDRESS" rows="3" placeholder="Enter your full address"><%= address != null ? address : "" %></textarea>
            </div>
            
            <div class="form-group">
                <label>Password:</label>
                <input type="password" name="PASSWORD" placeholder="Create a password" required>
                <small style="color:#666; font-size:11px;">Minimum 4 characters</small>
            </div>
            
            <div class="form-group">
                <label>Confirm Password:</label>
                <input type="password" name="CONFIRM_PASSWORD" placeholder="Confirm your password" required>
            </div>
            
            <div class="form-group">
                <label>Account Type:</label>
                <select name="SELLER">
                    <option value="false">Buyer (Regular Customer)</option>
                    <option value="true">Seller (I want to sell products)</option>
                </select>
            </div>
            
            <button type="submit" class="register-btn">REGISTER</button>
        </form>
        
        <% if (errorMessage != null) { %>
            <div class="error-message"><%= errorMessage %></div>
        <% } %>
        
        <% if (successMessage != null) { %>
            <div class="success-message"><%= successMessage %></div>
        <% } %>
        
        <div class="login-link">
            Already have an account? <a href="login page.jsp">Login here</a>
        </div>
    </div>

    <div class="right-panel">
        <h1>Welcome to<br>LocalShop Online<br>Platform!</h1>
        <p>
            Join our community! Register now to start shopping or selling 
            products on our platform.
        </p>
        <button class="login-btn" onclick="window.location.href='login page.jsp'">
            LOGIN
        </button>
    </div>
</div>

</body>
</html>