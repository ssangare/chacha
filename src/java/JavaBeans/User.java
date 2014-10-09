/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaBeans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author sanoussysangary
 */
public class User implements Serializable {
    
    private String fullName;
    private String firstName;
    private String lastName;
    private String  userName;
    private String email;
    private String password;
    private String confirmPassword;
    private Date userCreated;
    private String school;
    private String about;
   // private ArrayList<Integer> listing;
    private char status;

     public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String LastName) {
        this.lastName = LastName;
    }
     public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public Date getUserCreated() {
        return userCreated;
    }

    public void setUserCreated(Date userCreated) {
        this.userCreated = userCreated;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public char getStatus() {
        return status;
    }

    public void setStatus(char status) {
        this.status = status;
    }
     public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }
    
    /*public boolean isValidUserName(){
        if((userName.length()<5)||userName.length()>30)
        return false;
        Pattern pattern;
        Matcher matcher;
        String con= "([A-Za-z0-9]++)";
        pattern = Pattern.compile(con);
        matcher= pattern.matcher(userName);
        return matcher.matches();
    }
    */
    
    public boolean isValidEmail() {
     if(email.length()>30)
     return false;
     String EMAIL_PATTERN = 
		"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
  
     Pattern pattern;
     Matcher matcher;
     pattern = Pattern.compile(EMAIL_PATTERN);
     matcher = pattern.matcher(email);
       
     return matcher.matches();
    
    
}
    public boolean isValidPassword()
    {
        Pattern pattern;
	Matcher matcher;
      ///  if (password.length()>15||confirmPassword.length()>15)
     /* if (password.length()>15)
           
            return false;
       
        try{
                String b="((?=.*\\d)(?=.*[a-z]).{8,15})";
                pattern = Pattern.compile(b);
                matcher = pattern.matcher(password);

                return matcher.matches();
        }
        catch (Exception e)
        {
            return false;
        }*/
        if((password.length()>=5)&&password.length()<=30)
        return true;
        else 
            return false;
        
    }
/* check if all the   sign up input are valid 
     */
        public boolean isValid()
    {
        if (isValidEmail() &&isValidPassword())
            return true;
        return false;
    }
}


