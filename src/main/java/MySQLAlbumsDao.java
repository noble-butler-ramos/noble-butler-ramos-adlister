import com.mysql.cj.jdbc.Driver;
import mysql.Config;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAlbumsDao implements Albums {

    private List<Album> albums;
    private Connection connection;

    public MySQLAlbumsDao(){

        try {
            DriverManager.registerDriver(new Driver());
            Config config = new Config();
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public long save(Album album) {

        String query = "INSERT INTO albums(artist, sales, name, release_date, genre) VALUES ('"+album.getArtist()+"', "+album.getSales()+", 'null', 1990, 'fer')";

        System.out.println("query = " + query);

        Statement stmt = null;
        try {
            stmt = connection.createStatement();
            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
//                System.out.println("Inserted a new record! New id: " + rs.getLong(1));
                return rs.getLong(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }

    @Override
    public List<Album> findAll() {
        albums = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();

            String query = "select artist, id, sales from albums";
            ResultSet rs = statement.executeQuery(query);
            while(rs.next()){
// Factory of objects
                albums.add(
                new Album(rs.getInt("id"), rs.getString("artist"), rs.getDouble("sales")));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return albums;
    }
}
