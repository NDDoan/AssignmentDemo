<%-- 
    Document   : questions
    Created on : Oct 27, 2024, 5:20:16 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question</title>
    </head>
    <body>
        <%@ include file="header_and_footer/register_modal.jsp" %>
        <script>
            var showRegisterModal = <%= request.getAttribute("showRegisterModal") != null && (Boolean) request.getAttribute("showRegisterModal") %>;
            var isLoggedIn = <%= request.getAttribute("isLoggedIn") != null && (Boolean) request.getAttribute("isLoggedIn") %>;
        </script>
        <%@ include file="header_and_footer/header.jsp" %>

        <div class="container">
            <!-- Phần hiển thị chi tiết câu hỏi -->
            <section id="question-details">
                <h2>${question.title}</h2>
                <p>Đăng bởi: ${question.username} vào lúc ${question.createdAt}</p>
                <p>${question.content}</p>
            </section>

            <!-- Phần hiển thị danh sách câu trả lời -->
            <section id="answers">
                <h3>Câu Trả Lời</h3>
                <c:forEach var="answer" items="${answers}">
                    <div class="answer-item">
                        <p>${answer.content}</p>
                        <p>Đăng bởi: ${answer.username} vào lúc ${answer.createdAt}</p>

                        <!-- Thích/Không thích câu trả lời -->
                        <form action="LikeDislikeServlet" method="post">
                            <input type="hidden" name="answerId" value="${answer.id}">
                            <button type="submit" name="like" value="true">👍 Thích</button>
                            <button type="submit" name="like" value="false">👎 Không thích</button>
                        </form>

                        <!-- Bình luận cho câu trả lời -->
                        <form action="CommentServlet" method="post">
                            <input type="hidden" name="answerId" value="${answer.id}">
                            <label for="comment">Bình luận:</label>
                            <textarea name="content" rows="2" required></textarea>
                            <button type="submit">Gửi</button>
                        </form>

                        <!-- Hiển thị danh sách bình luận -->
                        <c:forEach var="comment" items="${answer.comments}">
                            <div class="comment-item">
                                <p>${comment.content} - <small>${comment.username} vào lúc ${comment.createdAt}</small></p>

                                <!-- Báo cáo bình luận -->
                                <form action="ReportServlet" method="post">
                                    <input type="hidden" name="commentId" value="${comment.id}">
                                    <label for="reportReason">Lý do báo cáo:</label>
                                    <input type="text" name="reportReason" required>
                                    <button type="submit">Báo cáo</button>
                                </form>
                            </div>
                        </c:forEach>
                    </div>
                </c:forEach>
            </section>

            <!-- Thêm câu trả lời -->
            <section id="add-answer">
                <h3>Trả Lời Câu Hỏi</h3>
                <form action="AnswerServlet" method="post">
                    <input type="hidden" name="questionId" value="${question.id}">
                    <label for="content">Nội dung trả lời:</label>
                    <textarea name="content" rows="4" required></textarea>
                    <button type="button" onclick="handleActionButtonClick()">Gửi Câu Trả Lời</button>
                </form>
            </section>
        </div>

        <%@ include file="header_and_footer/footer.jsp" %>

    </body>
</html>
