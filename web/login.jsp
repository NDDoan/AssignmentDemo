<%-- 
    Document   : login
    Created on : Oct 27, 2024, 12:02:51 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%@ include file="header_and_footer/header_login.jsp" %>
        <div class="modal" style="background-image: url('images/register-background.jpg');">
            <main>
                <h2>Đăng Nhập</h2>
                <form action="LoginServlet" method="post">
                    <label for="username">Tên Đăng Nhập:</label>
                    <input type="text" name="username" required><br>
                    <label for="password">Mật Khẩu:</label>
                    <input type="password" name="password" required><br>
                    <button type="submit">Đăng Nhập</button>
                </form>

                <p>Hoặc đăng nhập bằng:</p>
                <a href="GoogleLoginServlet" class="google-login-btn">Đăng nhập với Google</a>

                <p><a href="forgot_password.jsp">Quên mật khẩu?</a></p>
                <p>Chưa có tài khoản? <a href="register.jsp">Đăng ký ngay</a></p>
            </main>

            <%@ include file="header_and_footer/footer_login.jsp" %>
        </div>
    </body>
</html>
