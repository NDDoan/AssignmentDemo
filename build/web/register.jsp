<%-- 
    Document   : register
    Created on : Oct 27, 2024, 12:06:50 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <%@ include file="header_and_footer/header_login.jsp" %>
        <div class="modal" style="background-image: url('images/register-background.jpg');">
            <main>
                <h2>Đăng Ký Tài Khoản</h2>
                <form action="RegisterServlet" method="post">
                    <label for="username">Tên Đăng Nhập:</label>
                    <input type="text" name="username" required><br>
                    <label for="email">Email:</label>
                    <input type="email" name="email" required><br>
                    <label for="password">Mật Khẩu:</label>
                    <input type="password" name="password" required><br>
                    <button type="submit">Đăng Ký</button>
                </form>

                <!-- Liên kết để quay lại đăng nhập -->
                <p>Đã có tài khoản? <a href="login.jsp">Đăng nhập</a></p>
            </main>
        </div>
        <%@ include file="header_and_footer/footer_login.jsp" %>

    </body>
</html>
