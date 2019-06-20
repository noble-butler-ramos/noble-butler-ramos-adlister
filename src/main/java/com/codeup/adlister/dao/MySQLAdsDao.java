package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }
    @Override
    public List<Ad> findAdByTitle(String title){
        String query = "Select * from ads where title = ?";
        try{
            System.out.println(title);
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, title);
            ResultSet rs = preparedStatement.executeQuery();
            return createAdsFromResults(rs);
        }catch (SQLException e){
            throw new RuntimeException("Error finding a ad by title", e);
        }

    }

    @Override
    public Ad findAdById(Long id){
        String query = "Select * from ads where id = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setLong(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            rs.next();
            return extractAd(rs);
        }catch (SQLException e){
            throw new RuntimeException("Error finding a ad by title", e);
        }

    }



    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
    @Override
    public void deleteAds(Long id) {
        try {
            String insertQuery = "DELETE FROM ads WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(insertQuery);
            ps.setLong(1, id);
            ps.executeUpdate();
        }catch (SQLException e){
            throw new RuntimeException("Unable to delete ad", e);
        }
    }

    @Override
    public void updateAds(Long id, String title, String description) {
        try{
            String query = "Update ads set title = ?, description = ? where id = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1,title);
            ps.setString(2,description);
            ps.setLong(3,id);
            ps.executeUpdate();
        }catch (SQLException e){
            throw new RuntimeException("Unable to edit ad, e");
        }
    }
    @Override
    public List<Ad> findbyuser_id(Long user_id){
        String query = "Select * from ads where user_id = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setLong(1, user_id);
            ResultSet rs = preparedStatement.executeQuery();
            rs.next();
            return createAdsFromResults(rs);
        }catch (SQLException e){
            throw new RuntimeException("Error finding a ad by title", e);
        }

    }
}
