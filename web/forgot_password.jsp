<%-- 
    Document   : fotgot_password
    Created on : Oct 27, 2024, 12:08:48 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot password 🔥</title>
    </head>
    <body>
        <%@ include file="header_and_footer/header_login.jsp" %>

        <main>
            <h2>Quên Mật Khẩu</h2>
            <p>Nhập email của bạn để khôi phục mật khẩu:</p>
            <form action="ForgotPasswordServlet" method="post">
                <label for="email">Email:</label>
                <input type="email" name="email" required><br>
                <button type="submit">Gửi liên kết khôi phục mật khẩu</button>
            </form>
            <p><a href="login.jsp">Quay lại đăng nhập</a></p>
        </main>

        <%@ include file="header_and_footer/footer_login.jsp" %>

    </body>
</html>
