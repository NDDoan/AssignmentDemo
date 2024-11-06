<%-- 
    Document   : manager_dashboard
    Created on : Oct 27, 2024, 10:39:23 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager</title>
        <link rel="stylesheet" href="css/manager_styles.css">
    </head>
    <body>

        <div class="container">
            <h2>Bảng Quản Lý Manager</h2>

            <!-- Duyệt các bình luận chưa xác thực -->
            <section id="comments-moderation">
                <h3>Duyệt Bình Luận</h3>
                <c:forEach var="comment" items="${unapprovedComments}">
                    <div class="comment-item">
                        <p>Bình luận: ${comment.content} - Bởi ${comment.username}</p>
                        <form action="ManagerCommentServlet" method="post">
                            <input type="hidden" name="commentId" value="${comment.id}">
                            <button type="submit" name="approve" value="true">Duyệt</button>
                            <button type="submit" name="approve" value="false">Xóa</button>
                        </form>
                    </div>
                </c:forEach>
            </section>
        </div>

    </body>
</html>
