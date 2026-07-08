<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style_584.css">
        <title>Login Pawsitive</title>
        
        <!-- GOOGLE FONT -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
        <!-- ICONS -->
        <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    </head>
    
    <body>

        <!-- Background glow effects -->
        <div class="bg-glow"></div>
        <div class="bg-glow2"></div>

        <div class="container">
            <!-- Sidebar -->
            <div class="sidebar">
                <div class="logo">My Dashboard</div>
                    <ul>
                        <li><a href="dashboard.html"><i class="fas fa-home"></i> Home</a></li>
                    </ul>
                </div>

            <!-- Main content -->
                <div class="main">
                    <div class="section">
                        <div class="section-title">
                            <h2>Sign in to Pawsitive</h2>
                        </div>

                        <form action="" method="post" id="login-form">
                            <label for="username">Username:</label>
                            <input type="text" id="username" placeholder="Enter username" required>

                            <label for="password">Password:</label>
                            <input type="password" id="password" placeholder="Enter password" required>

                            <div class="actions" style="margin-top:20px;">
                                <button class="login" type="submit">Login</button>
                            </div>
                        </form>
                    </div>

                    <footer>
                    © 2026 PAW-STIVE Dashboard
                    </footer>

                </div>
            </div>
        </div>
    </body>
</html>

