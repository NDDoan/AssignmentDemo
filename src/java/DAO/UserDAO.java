package DAO;

import dal.DBContext;
import java.util.logging.*;
import java.sql.*;
import java.util.ArrayList;
import model.User;

public class UserDAO extends DBContext {

    public ArrayList<User> getUsers() {
        ArrayList<User> data = new ArrayList<>();
        String strSQL = "SELECT * FROM Users";

        try (PreparedStatement stm = connection.prepareStatement(strSQL); ResultSet rs = stm.executeQuery()) {

            while (rs.next()) {
                String id = rs.getString("id");
                String account = rs.getString("username");
                String password = rs.getString("password");
                String email = rs.getString("email");
                String role = rs.getString("role");
                String createdAt = String.valueOf(rs.getTimestamp("createdAt"));

                User u = new User(id, account, password, email, role, createdAt);
                data.add(u);
            }

        } catch (SQLException e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }

        return data;
    }

    public boolean authenticate(String username, String password) {
        String sql = "SELECT * FROM Users WHERE username = ? AND password = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public boolean addUser(User user) {
        String sql = "INSERT INTO Users(username, password, email, role) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getRole());
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public User authenticateUser(String username, String password) {
        String query = "SELECT * FROM Users WHERE username = ? AND password = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(
                        String.valueOf(rs.getInt("id")),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        String.valueOf(rs.getInt("roleId")), // Assuming roleId is an integer referencing a role
                        String.valueOf(rs.getTimestamp("createdAt"))
                );
            }
        } catch (SQLException e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public User registerUser(String username, String password, String email) {
        // Thêm người dùng mới vào cơ sở dữ liệu và trả về đối tượng User
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO Users (username, password, email, roleId) VALUES (?, ?, ?, 1)", Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return new User(username, password, email, "");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean checkUsernameExists(String username) {
        // Kiểm tra xem username đã tồn tại chưa
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM Users WHERE username = ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteUser(String id) {
        String sql = "DELETE FROM Users WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

}
