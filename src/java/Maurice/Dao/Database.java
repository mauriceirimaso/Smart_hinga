
/**
 *
 * @author maurice
 */

package Maurice.Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Mucyo
 */
public class Database {
    
    private static String URL="jdbc:mysql://localhost/smarthinga";
    private static String USERNAME="root";
    private static String PWD="";
    private static Connection con=null;
    public static Connection DatabaseUtil() throws ClassNotFoundException{
        try {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection(URL,USERNAME,PWD);            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
}

