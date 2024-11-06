<%-- 
    Document   : admin_manage_questions
    Created on : Nov 4, 2024, 9:57:06 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý Câu hỏi</title>
        <link rel="stylesheet" type="text/css" href="css/admin_styles.css">
        <script src="js/admin_show_register_modal.js"></script>
    </head>
    <body>
        <h1>Quản lý Câu hỏi</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Tiêu đề</th>
                    <th>Người đặt</th>
                    <th>Ngày tạo</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Câu hỏi 1</td>
                    <td>user1</td>
                    <td>2024-11-05</td>
                    <td>
                        <button onclick="editQuestion()">Edit</button>
                        <button onclick="deleteQuestion()">Delete</button>
                    </td>
                </tr>
                <!-- Additional rows -->
            </tbody>
        </table>
        <button onclick="addQuestion()">Add Question</button>
    </body>
</html>
