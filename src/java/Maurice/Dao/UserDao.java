package Maurice.Dao;

/**
 *
 * @author maurice
 */

import Maurice.mosel.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Mucyo
 */
public class UserDao {
    private String INSERT_USERS_SQL="INSERT INTO users(firstname,lastname,email,birthday,password,repassword)VALUES(?,?,?,?,?,?)";
    private String SELECT_USER="SELECT * FROM users where email=? and password=?";
    
     public void insertUser(User user) throws SQLException, ClassNotFoundException {
        // try-with-resource statement will auto close the connection.
        try{
            Connection connection =Database.DatabaseUtil();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
            preparedStatement.setString(1, user.getFname());
            preparedStatement.setString(2, user.getLname());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getDob());
            preparedStatement.setString(5, user.getPwd());
            preparedStatement.setString(6, user.getPwdd());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
    }
     
      public boolean selectUser(String email, String pwd) throws ClassNotFoundException {
        boolean validUser=false;
        // Establishing a Connection
        try{
            Connection connection =Database.DatabaseUtil();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, pwd);
            ResultSet rs=preparedStatement.executeQuery();
            if(rs.next()){
                validUser=true;
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return validUser;
    }
    
}

