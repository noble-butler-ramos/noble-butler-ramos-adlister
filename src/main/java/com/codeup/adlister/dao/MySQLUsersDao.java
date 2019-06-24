package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users {
    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public List<User> all() {
        PreparedStatement stmt;
        try {
            stmt = connection.prepareStatement("Select * from users");
            ResultSet rs = stmt.executeQuery();
            return showUsersFromResults(rs);
        } catch (SQLException e) {
        throw new RuntimeException("Error retrieving all users.", e);
        }
    }

    @Override
    public void makeAdmin(Boolean admin, Long id){
        String query = "Update users set isAdmin = ? where id = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setBoolean(1, admin);
            stmt.setLong(2,id);
            stmt.executeUpdate();
        }  catch (SQLException e){
            throw new RuntimeException("Error making admin", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractUser(rs);
        } catch (SQLException e) {
            return null;
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }
    @Override
    public User findById(Long user_id) {
        String query = "SELECT * FROM users WHERE id = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, user_id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractUser(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public void deleteUsers(Long id) {
        try {
            String insertQuery = "Delete From users where id = ?";
            PreparedStatement ps = connection.prepareStatement(insertQuery);
            ps.setLong(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Unable to delete user", e);
        }
    }


    private User extractUser(ResultSet rs) throws SQLException {
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getBoolean("isAdmin")
        );
    }
    private List<User> showUsersFromResults(ResultSet rs) throws SQLException {
        List<User> users = new ArrayList<>();
        while (rs.next()) {
            users.add(extractUser(rs));
        }
        return users;
    }

}
