<%-- 
    Document   : index
    Created on : Oct 27, 2024, 11:02:16 AM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .feature {
                margin: 15px; /* Khoảng cách giữa các tính năng */
                flex: 1 1 calc(33.33% - 30px); /* Tạo 3 cột, trừ đi khoảng cách margin */
            }
            .feature-image {
                max-width: 100%; /* Đảm bảo hình ảnh không vượt quá chiều rộng của phần tử */
                height: auto; /* Giữ tỉ lệ hình ảnh */
            }
        </style>
        <title>Home Page 👑</title>
    </head>
    <body>
        <%@ include file="header_and_footer/header.jsp" %>

        <div class="intro-container">
            <section class="hero-section" style="background-image: url('images/background.jpg');">
                <div class="hero-content">
                    <h1>Chào Mừng Đến Hệ Thống Hỏi Đáp Trường Học</h1>
                    <p>Nơi học sinh và giáo viên có thể trao đổi và chia sẻ kiến thức trong môi trường học tập thân thiện và chuyên nghiệp.</p>
                    <a href="questions.jsp" class="cta-button">Bắt Đầu Khám Phá</a>
                </div>
            </section>

            <section class="about-section">
                <h2>Về Chúng Tôi</h2>
                <div class="about-content">
                    <img src="images/about-us.jpg" alt="Về Chúng Tôi" class="about-image">
                    <p>
                        Hệ thống Hỏi Đáp Trường Học của chúng tôi được thiết kế để tạo ra một môi trường học tập tương tác và hỗ trợ giữa học sinh và giáo viên. Tại đây, mọi thắc mắc của bạn sẽ được giải đáp nhanh chóng, tạo động lực học tập và khám phá kiến thức mới.
                    </p>
                </div>
            </section>

            <section class="features-section">
                <h2>Các Tính Năng Nổi Bật</h2>
                <div class="feature">
                    <img src="images/feature-1.jpg" alt="Tính năng" class="feature-image">
                    <div class="feature-description">
                        <h3>Hỏi & Đáp</h3>
                        <p>Đăng câu hỏi, trả lời và thảo luận cùng các bạn học và giáo viên, giúp bạn tiếp cận kiến thức một cách hiệu quả và sáng tạo.</p>
                    </div>
                </div>
                <div class="feature">
                    <img src="images/feature-2.jpg" alt="Tính năng" class="feature-image">
                    <div class="feature-description">
                        <h3>Phản Hồi & Báo Cáo</h3>
                        <p>Hệ thống phản hồi và báo cáo giúp duy trì môi trường học tập tích cực và văn minh, nơi mọi ý kiến được tôn trọng.</p>
                    </div>
                </div>
                <div class="feature">
                    <img src="images/feature-3.jpg" alt="Tính năng" class="feature-image">
                    <div class="feature-description">
                        <h3>Thích & Bình Luận</h3>
                        <p>Bạn có thể thích, không thích và bình luận về các câu trả lời. Mọi phản hồi của bạn đều góp phần tạo nên môi trường học tập phong phú.</p>
                    </div>
                </div>
            </section>

            <section class="contact-section">
                <h2>Liên Hệ Với Chúng Tôi</h2>
                <p>Bạn có câu hỏi hoặc cần hỗ trợ? Liên hệ với chúng tôi để được giải đáp!</p>
                <a href="feedback.jsp" class="cta-button">Gửi Phản Hồi</a>
            </section>
        </div>

        <%@ include file="header_and_footer/footer.jsp" %>

    </body>
</html>
