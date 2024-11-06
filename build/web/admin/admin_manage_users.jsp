<%-- 
    Document   : admin_manage_users
    Created on : Nov 4, 2024, 9:56:06 PM
    Author     : LENOVO
--%>
<%@ page import="model.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DAO.UserDAO" %>
<%
    UserDAO userDAO = new UserDAO();
    ArrayList<User> users = userDAO.getUsers(); // Lấy danh sách người dùng
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Users</title>
        <link rel="stylesheet" type="text/css" href="css/admin_styles.css">
    </head>
    <h1>Quản lý Người dùng</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Role</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>user1</td>
                <td>user1@example.com</td>
                <td>Admin</td>
                <td>Active</td>
                <td>
                    <button onclick="editUser()">Edit</button>
                    <button onclick="deleteUser()">Delete</button>
                    <button onclick="toggleLock()">Lock/Unlock</button>
                </td>
            </tr>
            <!-- Additional rows -->
        </tbody>
    </table>
    <button onclick="addUser()">Add User</button>
</body>
</html>
