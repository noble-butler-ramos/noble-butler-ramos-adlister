package mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

import com.mysql.cj.jdbc.Driver;

public class MySQLLecture {

    public static void main(String[] args) {

        try {
            DriverManager.registerDriver(new Driver());
            Config config = new Config();
            Connection connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );

            Statement statement = connection.createStatement();

            String query = "select artist, id  from albums";
            ResultSet rs = statement.executeQuery(query);

            while(rs.next()){
                System.out.println("id = " + rs.getInt("id"));
                System.out.println("id = " + rs.getInt(1));
                System.out.println("artist = " + rs.getString("artist"));
                System.out.println("sales = " + rs.getDouble("sales"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
