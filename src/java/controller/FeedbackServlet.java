/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.FeedbackDAO;
import DAO.UserDAO;
import model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Feedback;

/**
 *
 * @author LENOVO
 */
public class FeedbackServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FeedbackServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FeedbackServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = (String) request.getSession().getAttribute("userId");
        // Kiểm tra xem người dùng có đăng nhập hay không
        boolean isLoggedIn = (userId != null);
        request.setAttribute("isLoggedIn", isLoggedIn);

        FeedbackDAO feedbackDAO = new FeedbackDAO();
        List<Feedback> feedbackList = feedbackDAO.getAllFeedback();

        request.setAttribute("feedbackList", feedbackList);
        request.getRequestDispatcher("feedback.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String content = request.getParameter("message");
        String userId = (String) request.getSession().getAttribute("userId");

        // If the user is not logged in, show the register modal
        if (userId == null) {
            request.setAttribute("showRegisterModal", true);
            request.getRequestDispatcher("feedback.jsp").forward(request, response);
            return;
        }

        // Use the logged-in user's ID for feedback submission
        Feedback feedback = new Feedback(null, userId, content, null);
        FeedbackDAO feedbackDAO = new FeedbackDAO();

        if (feedbackDAO.addFeedback(feedback)) {
            response.sendRedirect("feedback.jsp?message=Feedback added successfully.");
        } else {
            request.setAttribute("error", "Failed to add feedback, please try again.");
            request.getRequestDispatcher("feedback.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
