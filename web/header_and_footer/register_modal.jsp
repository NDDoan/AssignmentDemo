<%-- 
    Document   : register_modal
    Created on : Oct 31, 2024, 6:30:08 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- register_modal.jsp -->
        <div id="registerModal" class="modal" style="display: none;">
            <div class="modal-content">
                <h2>Đăng ký tài khoản để tham gia!</h2>
                <img src="images/register-illustration.jpg" alt="Minh họa đăng ký" class="modal-image">
                <p>Vui lòng đăng ký tài khoản để có thể sử dụng các chức năng như đặt câu hỏi, phản hồi và nhiều hơn nữa.</p>
                <a href="register.jsp" class="btn btn-primary">Đăng ký</a>
                <p>Đã có tài khoản? <a href="login.jsp">Đăng nhập để cùng làm nào</a></p>
            </div>
            <!-- Gọi JavaScript để điều khiển modal -->
            <script src="js/show_register_modal.js"></script>
            <link rel="stylesheet" href="css/show_register_modal.css">
        </div>
    </body>
</html>
