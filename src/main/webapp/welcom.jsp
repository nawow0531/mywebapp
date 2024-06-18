<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String correctUsername = "admin";
    String correctPassword = "password123";

    if (correctUsername.equals(username) && correctPassword.equals(password)) {
%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }
        .welcome-container {
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #dddddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .welcome-container h1 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1>Welcome, <%= username %>!</h1>
        <p>You have successfully logged in.</p>
    </div>
</body>
</html>
<%
    } else {
        response.sendRedirect("error.jsp");
    }
%>

