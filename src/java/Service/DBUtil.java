/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import java.sql.*;

/**
 *
 * @author sanoussy sangare
 */
public class DBUtil {
    
    public static void closeStatement(Statement s)
    {
        try{
            if(s!=null)
                s.close();
        }
        catch( SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    public static void closePrepareStatement(Statement ps)
    {
        try{
            if (ps!=null)
                ps.close();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
   
    public static void closeResultSet(ResultSet rs)
    {
        try
        {
            if (rs!=null)
                rs.close();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    public static void freeConnection(Connection c){
        try {
            c.close();
        }
        catch(SQLException sqle)
        {
            sqle.printStackTrace();
        }
    }
}
