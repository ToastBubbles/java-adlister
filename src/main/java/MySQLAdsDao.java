import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Executor;
//import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads{

    private Statement stmt;
    private Connection connection;
    public MySQLAdsDao(Config config){
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    public List<Ad> all(){
        try {
            List<Ad> newList = new ArrayList<>();
            String query = "select * from ads";
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
//                System.out.println(rs.getLong(1));
                newList.add(
                        new Ad(
                                rs.getInt("id"),
                                1,
                                rs.getString("title"),
                                rs.getString("description")
                        )
                );
            }
            return newList;
        }
        catch (Exception e){
            System.out.println(e);
        }
        return null;
    }

    public Long insert(Ad ad){
        try {
            String insertQuery = String.format("INSERT INTO ads (user_id, title, description) VALUES ('%d','%s', '%s')",
                    1,
                    ad.getTitle(),
                    ad.getDescription()
            );
            stmt = connection.createStatement();
            System.out.println(insertQuery);

            return (long) stmt.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
        }
        catch (Exception e){
            System.out.println(e);
        }
        return null;
    }
}
