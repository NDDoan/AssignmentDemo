<%-- 
    Document   : admin_manage_comment
    Created on : Nov 5, 2024, 9:31:28 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý Bình luận</title>
        <link rel="stylesheet" type="text/css" href="css/admin_styles.css">
        <script src="js/admin_show_register_modal.js"></script>
    </head>
    <body>
        <h1>Quản lý Bình luận</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Comment</th>
                    <th>Answer</th>
                    <th>User</th>
                    <th>Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Comment Content</td>
                    <td>Answer Content</td>
                    <td>User1</td>
                    <td>2024-11-05</td>
                    <td>
                        <button onclick="editComment()">Edit</button>
                        <button onclick="deleteComment()">Delete</button>
                        <button onclick="reportComment()">Report</button>
                    </td>
                </tr>
                <!-- Additional rows -->
            </tbody>
        </table>
    </body>
</html>
