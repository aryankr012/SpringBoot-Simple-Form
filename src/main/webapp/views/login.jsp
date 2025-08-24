<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #2ecc71, #2980b9); /* same gradient */
        }
        .login-container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            width: 350px;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .login-container label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
            color: #555;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        .login-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            border: none;
            border-radius: 8px;
            background: #1a73e8;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .login-container input[type="submit"]:hover {
            background: #0b59c5;
        }
        .login-container .links {
            text-align: center;
            margin-top: 15px;
        }
        .login-container .links a {
            color: #1a73e8;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>User Login</h2>
    <form action="checkLogin" method="post">
        <label for="email">Email Address</label>
        <input type="text" id="email" name="email" placeholder="Enter Email" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter Password" required>

        <input type="submit" value="Login">
    </form>
    <div class="links">
        <p>Don’t have an account? <a href="register.jsp">Register</a></p>
    </div>
</div>
</body>
</html>
