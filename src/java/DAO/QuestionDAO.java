/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import model.Question;
import java.sql.*;
import java.util.*;
import java.util.logging.*;
import model.Question;

/**
 *
 * @author LENOVO
 */
public class QuestionDAO extends DBContext {

    public List<Question> getAllQuestions() {
        List<Question> questions = new ArrayList<>();
        String sql = "SELECT * FROM Questions";

        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery()) {

            while (rs.next()) {
                String id = String.valueOf(rs.getInt("id"));
                String userId = String.valueOf(rs.getInt("userId"));
                String title = rs.getString("title");
                String content = rs.getString("content");
                String createdAt = String.valueOf(rs.getTimestamp("createdAt"));

                Question question = new Question(id, userId, title, content, createdAt);
                questions.add(question);
            }

        } catch (SQLException e) {
            Logger.getLogger(QuestionDAO.class.getName()).log(Level.SEVERE, null, e);
        }

        return questions;
    }

    public void addQuestion(Question question) {
        String sql = "INSERT INTO Questions(userId, title, content) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, Integer.parseInt(question.getUserId()));
            stmt.setString(2, question.getTitle());
            stmt.setString(3, question.getContent());
            stmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(QuestionDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public boolean deleteQuestion(String id) {
        String sql = "DELETE FROM Questions WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            Logger.getLogger(QuestionDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }
}
