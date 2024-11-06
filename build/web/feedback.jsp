<%-- 
    Document   : feedback
    Created on : Oct 27, 2024, 4:02:49 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback ❓❓</title>
        <link rel="stylesheet" href="css/show_register_modal.css">
        <script src="js/show_register_modal.js"></script>
    </head>
    <body>
        <%@ include file="header_and_footer/register_modal.jsp" %>
        <script>
            // Set login status from server
            var showRegisterModal = <%= request.getAttribute("showRegisterModal") != null ? (Boolean) request.getAttribute("showRegisterModal") : false %>;
            var isLoggedIn = <%= request.getAttribute("isLoggedIn") != null ? (Boolean) request.getAttribute("isLoggefalsedIn") : false %>;

            // Show modal if showRegisterModal is true
            if (showRegisterModal) {
                openModal();
            }
        </script>
        <%@ include file="header_and_footer/header.jsp" %>

        <div class="container">
            <section id="feedback">
                <h2>Gửi Phản Hồi</h2>
                <form id="feedbackForm" action="FeedbackServlet" method="post">
                    <label for="name">Tên của bạn:</label>
                    <input type="text" id="name" name="name" required><br>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required><br>

                    <label for="message">Phản hồi:</label>
                    <textarea id="message" name="message" rows="4" required></textarea><br>

                    <button id="sendFeedbackButton" type="button" class="btn btn-primary" onclick="handleFeedbackClick()">Gửi Phản Hồi</button>

                </form>
            </section>
        </div>


        <%@ include file="header_and_footer/footer.jsp" %>

    </body>
</html>
