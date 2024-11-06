/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import model.LikeDislike;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class LikeDislikeDAO extends DBContext {
    
    public boolean addLikeDislike(LikeDislike likeDislike) {
        String sql = "INSERT INTO LikeDislike(answerId, userId, isLike) VALUES (?, ?, ?)";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setInt(1, Integer.parseInt(likeDislike.getAnswerId()));
            stm.setInt(2, Integer.parseInt(likeDislike.getUserId()));
            stm.setBoolean(3, Boolean.parseBoolean(likeDislike.getIsLike()));
            stm.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
