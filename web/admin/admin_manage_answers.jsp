<%-- 
    Document   : admin_manage_answer
    Created on : Nov 5, 2024, 9:16:34 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý Trả lời</title>
        <link rel="stylesheet" type="text/css" href="css/admin_styles.css">
        <script src="js/admin_show_register_modal.js"></script>
    </head>
    <body>
        <h1>Quản lý Trả lời</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Answer</th>
                    <th>Question</th>
                    <th>User</th>
                    <th>Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Answer Content</td>
                    <td>Question Title</td>
                    <td>User1</td>
                    <td>2024-11-05</td>
                    <td>
                        <button onclick="editAnswer()">Edit</button>
                        <button onclick="deleteAnswer()">Delete</button>
                    </td>
                </tr>
                <!-- Additional rows -->
            </tbody>
        </table>
        <button onclick="addAnswer()">Add Answer</button>
    </body>
</html>
