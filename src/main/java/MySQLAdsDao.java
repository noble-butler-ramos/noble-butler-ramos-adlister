import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {
    private List<Ad> ads;
    Connection connection;

    public MySQLAdsDao() {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    Config.getUrl(),
                    Config.getUser(),
                    Config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Ad> all() {
        ads = new ArrayList<>();

        String selectQuery = "SELECT * FROM ads";
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(selectQuery);
            while(rs.next()){
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return ads;
    }

    public Long insert(Ad ad) {

        String query = String.format("INSERT INTO ads (user_id, title, description) values(%d, '%s', '%s')", ad.getUserId(), ad.getTitle(), ad.getDescription());

        System.out.println("query = " + query);

        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                return rs.getLong(1);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0L;
    }
}
