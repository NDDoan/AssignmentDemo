/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import model.Report;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class ReportDAO extends DBContext {
    
    public boolean addReport(Report report) {
        String sql = "INSERT INTO Reports(commentId, reporterId, reportReason) VALUES (?, ?, ?)";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setInt(1, Integer.parseInt(report.getCommentId()));
            stm.setInt(2, Integer.parseInt(report.getReporterId()));
            stm.setString(3, report.getReportReason());
            stm.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
