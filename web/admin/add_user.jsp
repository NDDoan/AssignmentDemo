<%-- 
    Document   : add_user
    Created on : Nov 4, 2024, 10:30:52 PM
    Author     : LENOVO
--%>

<%@ page import="model.User" %>
<%@ page import="DAO.UserDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User</title>
    </head>
    <body>
        <h1>Add User</h1>
        <form action="AddUserServlet" method="post">
            Username: <input type="text" name="username" required><br>
            Password: <input type="password" name="password" required><br>
            Email: <input type="email" name="email" required><br>
            Role: 
            <select name="role">
                <option value="2">Teacher</option>
                <option value="3">Manager</option>
                <option value="4">Admin</option>
            </select><br>
            <input type="submit" value="Add User">
        </form>
    </body>
</html>
