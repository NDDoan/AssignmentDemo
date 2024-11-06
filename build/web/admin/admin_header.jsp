<%-- 
    Document   : admin_header
    Created on : Nov 4, 2024, 8:59:26 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/admin_styles.css">
        <script src="js/admin_toggle_sidebar.js"></script>
    </head>
    <body>
        <%@ page import="model.User" %>
        <%
            User user = (User) session.getAttribute("user");
        %>
        <div class="header">
            <div class="menu-toggle" onclick="toggleSidebar()">☰</div>
            <h2>Welcome, <%=  user.getUsername()%>!</h2>
        </div>
        <div class="sidebar" id="sidebar">
            <nav>
                <ul>
                    <li><a href="admin_dashboard.jsp">Dashboard</a></li>
                    <li><a href="admin_manage_users.jsp">Users</a></li>
                    <li><a href="admin_manage_questions.jsp">Questions</a></li>
                    <li><a href="admin_manage_answers.jsp">Answers</a></li>
                    <li><a href="admin_manage_comments.jsp">Comments</a></li>
                    <!-- Add more links as necessary -->
                </ul>
            </nav>
        </div>
    </body>
</html>
