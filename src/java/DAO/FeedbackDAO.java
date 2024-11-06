/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import model.Feedback;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LENOVO
 */
public class FeedbackDAO extends DBContext {
    
    // Lấy danh sách phản hồi
    public List<Feedback> getAllFeedback() {
        List<Feedback> data = new ArrayList<>();
        String sql = "SELECT * FROM Feedback";
        try (PreparedStatement stm = connection.prepareStatement(sql);
             ResultSet rs = stm.executeQuery()) {

            while (rs.next()) {
                String id = String.valueOf(rs.getInt("id"));
                String userId = String.valueOf(rs.getInt("userId"));
                String content = rs.getString("content");
                String createdAt = String.valueOf(rs.getTimestamp("createdAt"));
                Feedback f = new Feedback(id, userId, content, createdAt);
                data.add(f);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return data;
    }
    
    // Thêm phản hồi mới
    public boolean addFeedback(Feedback feedback) {
        String sql = "INSERT INTO Feedback (userId, content, createdAt) VALUES (?, ?, CURRENT_TIMESTAMP)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setInt(1, Integer.parseInt(feedback.getUserId()));
            stmt.setString(2, feedback.getContent());
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }
}
