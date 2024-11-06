<%-- 
    Document   : admin_dashboard
    Created on : Oct 27, 2024, 10:38:51 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard</title>
        <link rel="stylesheet" type="text/css" href="css/admin_styles.css">
        <script src="js/admin_show_register_modal.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="js/admin_toggle_sidebar.js"></script>
    </head>
    <body>
        <%@ include file="admin_header.jsp" %>
        <div class="dashboard-container">
            <h1>Admin Dashboard</h1>
            <div class="stats">
                <div class="stat">
                    <h2>Total Users</h2>
                    <p>120</p>
                </div>
                <div class="stat">
                    <h2>Total Questions</h2>
                    <p>450</p>
                </div>
                <div class="stat">
                    <h2>Total Answers</h2>
                    <p>1,200</p>
                </div>
                <div class="stat">
                    <h2>Total Reports</h2>
                    <p>15</p>
                </div>
            </div>

            <div class="charts">
                <div class="chart-container">
                    <canvas id="userChart"></canvas>
                </div>
                <div class="chart-container">
                    <canvas id="questionChart"></canvas>
                </div>
            </div>
        </div>

        <script>
            // Sample data for user chart
            const userCtx = document.getElementById('userChart').getContext('2d');
            const userChart = new Chart(userCtx, {
                type: 'bar',
                data: {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                    datasets: [{
                            label: 'New Users',
                            data: [10, 20, 15, 25, 30, 40],
                            backgroundColor: 'rgba(75, 192, 192, 0.2)',
                            borderColor: 'rgba(75, 192, 192, 1)',
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

            // Sample data for question chart
            const questionCtx = document.getElementById('questionChart').getContext('2d');
            const questionChart = new Chart(questionCtx, {
                type: 'line',
                data: {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                    datasets: [{
                            label: 'Questions Asked',
                            data: [50, 60, 70, 90, 100, 120],
                            backgroundColor: 'rgba(153, 102, 255, 0.2)',
                            borderColor: 'rgba(153, 102, 255, 1)',
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>
        <%@ include file="admin_footer.jsp" %>
    </body>
</html>