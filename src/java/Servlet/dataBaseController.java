/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.sql.*;

/**
 *
 * @author sanoussysangary
 */
public class dataBaseController {

    private static String url = "jdbc:mysql://localhost:3306/campus";
    private static String user = "root";
    private static String password = "password";
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");

        con = (Connection) DriverManager.getConnection(url, user, password);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }

        return con;
    }
}
