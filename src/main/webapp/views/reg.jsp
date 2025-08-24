<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #43cea2, #185a9d);
            color: #fff;
            text-align: center;
            padding-top: 50px;
        }
        h2 {
            margin-bottom: 30px;
        }
        form {
            background: #ffffff;
            color: #333;
            display: inline-block;
            padding: 25px 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.3);
        }
        label {
            display: block;
            margin-top: 12px;
            text-align: left;
        }
        input {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        button {
            margin-top: 20px;
            padding: 12px 20px;
            width: 100%;
            background-color: #185a9d;
            color: #fff;
            border: none;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }
        button:hover {
            background-color: #43cea2;
        }
    </style>
</head>
<body>
    <h2>User Registration</h2>
    <form action="registerUser" method="post">
        <label for="name">Full Name</label>
        <input type="text" name="name" id="name" required>

        <label for="email">Email Address</label>
        <input type="email" name="email" id="email" required>

        <label for="password">Password</label>
        <input type="password" name="password" id="password" required>

        <label for="phoneNo">Phone Number</label>
        <input type="text" name="phoneNo" id="phoneNo">

        <button type="submit">Register</button>
    </form>
</body>
</html>
