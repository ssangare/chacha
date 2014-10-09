/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Service.UserDB;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author sanoussysangary
 */
@WebServlet(name = "Signup", urlPatterns = {"/Signup"})
public class Signup extends HttpServlet {

   // private boolean duplicateID = true;
   // private boolean duplicateEmail = false;

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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        request.setAttribute("duplicateid","");
        request.setAttribute("duplicateEmail","");
        
        JavaBeans.User user = new JavaBeans.User();
        user.setFullName(request.getParameter("fullname"));
        user.setEmail(request.getParameter("email"));
         user.setPassword(request.getParameter("password"));
        user.setUserName("alpha");
        user.setSchool("Stony Brook");
       /* user.setConfirmPassword(request.getParameter("confirm_password"));*/
        request.setAttribute("user", user);
       
      /*  
       if(user.getPassword().equals(user.getConfirmPassword())){
            request.setAttribute("passwordmissmatch", "invalid password");
        }*/
       if(user.isValid()){
           if(!UserDB.emailExists(user.getEmail()))// check here if user is email or usernameis not duplicated in the database
           {
               //    if(duplicateID)
                    //   request.setAttribute("duplicateid", "Error! Your id number has already been registered!");
                  // if(duplicateEmail)
                      // request.setAttribute("duplicateEmail", "Error! Your email number has already been registered!");

                 if(UserDB.insertUser(user)){
                  //   sendEmail(user.getUserName(),user.getFullName(),user.getEmail());
                   HttpSession session = request.getSession(true);
                   session.setAttribute("user", user);
                   response.sendRedirect("selection.jsp");
                 } else{
                     response.sendRedirect("signup.jsp");//invalid
                 }
             }
         else {
             response.sendRedirect("signup.jsp");//invalid
            
            }
       }else{
          // if no valid format this will be printout 
           //out.print("<h1> hey</h1>");
          response.sendRedirect("signup.jsp");
       }
       
    
   }

      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
    
    
  
     private final static String DEFAULT_SERVER = "smtp.gmail.com";

    private class SMTPAuthenticator extends javax.mail.Authenticator
    {
        private PasswordAuthentication authentication;

        public SMTPAuthenticator(String login, String password)
        {
            authentication = new PasswordAuthentication(login, password);
        }
        protected PasswordAuthentication getPasswordAuthentication()
        {
            return authentication;
        }
    }

    public void sendEmail(String userName,String fullname, String email)
    {
        String host = DEFAULT_SERVER;
        String to = email;
        String from = "campusepage@gmail.com";
        String subject = " Welcome to CampusEpage Your account has been successfully registered at Campus.";
        String messageContent = "<html><meta content='text/html' />"
                + "<title>CampusEpage</title>"
                + "<body><table width='100%' border='0'>"
                + "<tr><td>"
                + "<img src='http://www.campusepage.com/img/logo.jpg' "
                + "alt='Campusepage logo'></td></tr><tr><td><p> Dear  " + fullname +",</p>"
                + "<p><strong>Congratulations!!!</strong></p>"
                + "<p>Thank you for your interest in CampusEpage. "
                + "Your account has been created. Click <a href='http://www.campusepage.com/signin.jsp'>here</a> to log in to your account.</p>"
                + "<p><strong>Username :  " + userName + "</strong></p>"
                + "<p><strong>Note: </strong> This is an automated message. Do not reply to this message since reponses are not monitored. If you have any questions, please contacts us at campusEpage@gmail.com.</p>"
                + "</td></tr></table></body></html>";
        Properties props = System.getProperties();
        props.put("mail.smtp.host", host);
        props.put("mail.transport.protocol.", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp", "true");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.socketFactory.fallback", "false");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        Authenticator auth = new Signup.SMTPAuthenticator("campusepage@gmail.com", "licence2");

        Session mailSession = Session.getInstance(props, auth);

        MimeMessage msg = new MimeMessage(mailSession);
        try {
            msg.setText(messageContent);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            msg.setContent(messageContent, "text/html"); // use setText if you want to send text or just leave it like this
            Transport.send(msg);
        }
        catch (MessagingException ex)
        {
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
    
     


