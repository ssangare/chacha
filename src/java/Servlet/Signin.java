/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import JavaBeans.User;
import Service.UserDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sanoussysangary
 */
@WebServlet(name = "Signin", urlPatterns = {"/Signin"})
public class Signin extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        try {
            processRequest(request, response);
        } catch (Exception e) {
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        try {
            processRequest(request, response);
        } catch (Exception e) {
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException, SQLException {

        //    ServletContext context = this.getServletContext();
        //  String url=(String)context.getAttribute("currentURL");
        // url = url.replaceAll("[&][l][o][g][i][n][=][i][n][v][a][l][i][d]|[l][o][g][i][n][=][i][n][v][a][l][i][d]", "");
        Connection connection = (Connection) dataBaseController.getConnection();
        Statement st = null;
        ResultSet rs = null;
        String password = request.getParameter("password").trim();
        String email = request.getParameter("email").trim();
        PrintWriter out = response.getWriter();
        /* out.println(" username is "+ password);
         out.println(" Email is "+ userName);
         */


        if (password.equals("") || email.equals("")) {
            response.sendRedirect("signin.jsp");// invalid

            //  response.sendRedirect("");
            out.println("<h1> Empty password or userName </h1>");

        }
         if(UserDB.emailExists(email)){
        try {

            st = (Statement) connection.createStatement();
            rs = (ResultSet) st.executeQuery("SELECT password FROM user WHERE email = '" + email + "'");
            rs.next();
            String actualpassword = rs.getString(1);
            rs = (ResultSet) st.executeQuery("SELECT school FROM user WHERE email = '" + email + "'");
            rs.next();
            String school = rs.getString(1);
            rs = (ResultSet) st.executeQuery("SELECT userName FROM user WHERE email = '" + email + "'");
            rs.next();
            String userName = rs.getString(1);

            if (actualpassword.equals(password)) {

                HttpSession ss = request.getSession(true);
                User user = new User();

                user.setUserName(userName);
                user.setPassword(password);
                 user.setEmail(email);
                user.setSchool(school);
                ss.setAttribute("user", user);


                response.sendRedirect("profile.jsp");
            } else {
                response.sendRedirect("signin.jsp");
                out.println("<h3>invalide login</h3>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            rs.close();
            st.close();
            connection.close();
        }

    }
    
    else {
    response.sendRedirect("signin.jsp");
         }
}
}