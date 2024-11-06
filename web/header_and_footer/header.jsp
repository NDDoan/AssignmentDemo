<%-- 
    Document   : header
    Created on : Oct 27, 2024, 10:55:56 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
        <%
            User user = (User) session.getAttribute("user");
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Hệ Thống Hỏi Đáp Trường Học</title>
        <link rel="stylesheet" href="css/styles.css">
    </head>
    <body>
        
        <header>

            <h1>Hệ Thống Hỏi Đáp Trường Học</h1>

            <nav>
                <a href="index.jsp">Trang Chủ</a>
                <a href="about.jsp">Về Chúng Tôi</a>
                <a href="feedback.jsp">Gửi Phản Hồi</a>
                <% if (user != null) { %>
                <span>Chào mừng, <%= user.getUsername() %>!</span>
                <a href="LogoutServlet">Đăng xuất</a>
                <% } else { %>
                <a href="login.jsp">Đăng nhập</a> | <a href="register.jsp">Đăng ký</a>
                <% } %>
            </nav>
        </header>
    </body>
</html>
