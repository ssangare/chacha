/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

//import JavaBeans.TextBook;
import JavaBeans.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sanoussysangary
 */
public class UserDB {

    public static boolean insertUser(User user) {
        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        String query = "INSERT INTO user(fullname,email,password,username,school) VALUES(?,?,?,?,?)";

        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getFullName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getUserName());
            ps.setString(5, user.getSchool());
             ps.executeUpdate();
             return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }
    
  

    public static int updateUser(User user) {
        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        String query = "UPDATE user SET "
                + "fullname=?,"
                + "username=?,"
                + "school= ?,"
                + "WHERE email=?";


        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getFullName());
            ps.setString(2, user.getUserName());
            ps.setString(3, user.getSchool());
            ps.setString(4, user.getEmail());

            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }

    public static int changePassword(User user) {
        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        String query = "UPDATE user SET password =? WHERE email= ?";


        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getPassword());
            ps.setString(2, user.getEmail());

            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }
    
    public static int changeSchool(User user) {
        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        String query = "UPDATE user SET school =? WHERE email= ?";


        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getSchool());
            ps.setString(2, user.getEmail());

            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }
   
     
    public static int changeEmail(User user) {
        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        String query = "UPDATE user SET email =? WHERE username= ?";


        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getUserName());

            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }

    
    public static int lastLogin(User user) {
        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        String query = "UPDATE user SET lastlogin  WHERE username= ?";


        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getUserName());
          //  ps.setString(2, user.getUserName());

            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }


    public static boolean emailExists(String email) {

        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT email FROM user WHERE email=?";
        try {
            ps = connection.prepareCall(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }

    public static boolean userNameExist(String username) {

        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT username FROM user WHERE username=?";
        try {
            ps = connection.prepareCall(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }
     public static User getEmailByUserName(String username) {

        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT email FROM user WHERE username=?";
        try {
            ps = connection.prepareCall(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            User user=null;
            if ( rs.next()){
                user= new User();
                user.setEmail(rs.getString("email"));
                
            }
            return user;
          
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }

    
     public static User getPasswordByEmail(String email) {

        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT password FROM user WHERE email=?";
        try {
            ps = connection.prepareCall(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            User user=null;
            if ( rs.next()){
                user= new User();
                user.setPassword(rs.getString("password"));
                
            }
            return user;
          
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }

     
    public static User selectUser(String username) {
        Connection connection = Servlet.dataBaseController.getConnection();

        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM user WHERE username=?";

        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User();
                user.setFullName(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setUserName(rs.getString("username"));
                user.setSchool(rs.getString("school"));

            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }

    public static int deleteUser(User user) {

        Connection connection = Servlet.dataBaseController.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "DELETE FROM user WHERE email=?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getEmail());

            return ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            DBUtil.freeConnection(connection);
        }

    }
}
