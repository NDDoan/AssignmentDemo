/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import model.Answer;
import java.sql.*;
import java.util.*;
import java.util.logging.*;
import model.Answer;

/**
 *
 * @author LENOVO
 */
public class AnswerDAO extends DBContext {

    public List<Answer> getAnswersByQuestionId(String questionId) {
        List<Answer> answers = new ArrayList<>();
        String sql = "SELECT * FROM Answers WHERE questionId = ?";

        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setInt(1, Integer.parseInt(questionId));

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    String id = String.valueOf(rs.getInt("id"));
                    String userId = String.valueOf(rs.getInt("userId"));
                    String content = rs.getString("content");
                    String createdAt = String.valueOf(rs.getTimestamp("createdAt"));

                    Answer answer = new Answer(id, questionId, userId, content, createdAt);
                    answers.add(answer);
                }
            }

        } catch (SQLException e) {
            Logger.getLogger(AnswerDAO.class.getName()).log(Level.SEVERE, null, e);
        }

        return answers;
    }

    public boolean addAnswer(Answer answer) {
        String sql = "INSERT INTO Answers(questionId, userId, content) VALUES (?, ?, ?)";

        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setInt(1, Integer.parseInt(answer.getQuestionId()));
            stm.setInt(2, Integer.parseInt(answer.getUserId()));
            stm.setString(3, answer.getContent());
            stm.executeUpdate();
            return true;

        } catch (SQLException e) {
            Logger.getLogger(AnswerDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }
}
