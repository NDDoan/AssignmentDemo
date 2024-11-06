/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import model.Comment;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class CommentDAO extends DBContext {

    public boolean addComment(Comment comment) {
        String sql = "INSERT INTO Comments(answerId, userId, content) VALUES (?, ?, ?)";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setInt(1, Integer.parseInt(comment.getAnswerId()));
            stm.setInt(2, Integer.parseInt(comment.getUserId()));
            stm.setString(3, comment.getContent());
            stm.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Comment> getCommentsByAnswerId(String answerId) {
        List<Comment> comments = new ArrayList<>();
        String sql = "SELECT * FROM Comments WHERE answerId = ? AND isDeleted = 0";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setInt(1, Integer.parseInt(answerId));
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    String id = String.valueOf(rs.getInt("id"));
                    String userId = String.valueOf(rs.getInt("userId"));
                    String content = String.valueOf(rs.getString("content"));
                    String createdAt = String.valueOf(rs.getString("createdAt"));
                    String isDeleted = String.valueOf(rs.getBoolean("isDeleted"));
                    Comment comment = new Comment(id, answerId, userId, content, createdAt, isDeleted);
                    comments.add(comment);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }
}
