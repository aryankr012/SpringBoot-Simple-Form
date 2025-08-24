<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<%@ page import="com.ashokIT.Entity.Registration" %>

<%
    Registration user = (Registration) request.getAttribute("user");
    if (user == null) {
        user = (Registration) session.getAttribute("user");
    }
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>User Profile & Tasks</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 40px;
            display: flex;
            gap: 40px;
            height: 100vh;
            box-sizing: border-box;
        }

        /* User Info Card */
        .profile-card {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            padding: 30px;
            width: 410px;
            display: flex;
            flex-direction: column;
            gap: 25px;
            position: relative;
        }

        .profile-header {
            display: flex;
            align-items: center;
            gap: 25px;
        }

        .profile-image img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
        }

        .profile-details {
            flex-grow: 1;
        }

        .profile-name {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 6px;
            color: #222;
        }

        .profile-email {
            font-size: 14px;
            color: #666;
        }

        .info-row {
            margin-bottom: 12px;
            font-size: 15px;
        }

        .info-label {
            color: #888;
            font-weight: 600;
            width: 130px;
            display: inline-block;
        }

        /* Logout button at bottom center */
        .logout-container {
            margin-top: 30px;
            text-align: center;
            width: 100%;
        }

        .logout-button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            padding: 10px 25px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .logout-button:hover {
            background-color: #0056b3;
        }


        /* Task Card on right */
        .task-container {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            padding: 30px;
            width: 500px;
            display: flex;
            flex-direction: column;
            gap: 15px;
            height: fit-content;
        }

        .task-container label {
            font-weight: 700;
            font-size: 18px;
            margin-bottom: 5px;
            color: #333;
            margin-left: 42%;
        }

        .task-container input[type="text"] {
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            width: 100%;
            margin-bottom:5px;
            box-sizing: border-box;
        }

        .task-container button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 0;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        .task-container button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<!-- User Info Card on LEFT -->
<div class="profile-card">
    <div class="profile-header">
        <div class="profile-image">
            <img src="https://i.ibb.co/NLbbd03/avatar.png" alt="User Avatar" />
        </div>

        <div class="profile-details">
            <div class="profile-name"><%= user.getName() %></div>
            <div class="profile-email"><%= user.getEmail() %></div>
        </div>
    </div>

    <div class="info-row"><span class="info-label">User ID:</span> <%= user.getId() %></div>
    <div class="info-row"><span class="info-label">Phone No:</span> <%= user.getPhoneNo() %></div>
    <div class="info-row"><span class="info-label">Password:</span> ****</div>

    <div class="logout-container">
        <form action="logout" method="get">
            <button type="submit" class="logout-button">Logout</button>
        </form>
    </div>
</div>

<!-- Task Card on RIGHT -->
<div class="task-container">
    <form action="addTask" method="post">
        <label for="taskId">Task ID</label>
        <input type="text" id="taskId" name="id" placeholder="Enter Task ID" required />

        <label for="taskName">Task Name</label>
        <input type="text" id="taskName" name="name" placeholder="Enter Task Name" required />

        <button type="submit">Add</button>
    </form>
</div>


</body>
</html>
