/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.vaccine;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author gallenz
 */
public class VacinHand extends SimpleTagSupport {
    
   private final String driver = "com.mysql.jdbc.Driver";

   private final String database_type = "mysql";

   private final String database_url = "\"jdbc:mysql://localhost:3306/vaccine\"";

   private final String database_username = "root";

   private final String database_password = "";
   private String vaccine;
   private String number;
   private String table;
   public void setTable(String table){
       this.table = table;
    }
    public void setVaccine(String vaccine) {
        this.vaccine = vaccine;
    }

    public void setNumber(String number) {
        this.number = number;
    }
    

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
         Statement stmt = null;
        try{ 
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root","");
           stmt = conn.createStatement();
           
           String sql = "INSERT INTO "+ table +"(vaccine,number)"
                   + " VALUES('"+vaccine+"','"+number+"')";
           stmt.executeUpdate(sql);
           
           System.out.print("Inserted records");
       
       }catch(ClassNotFoundException | SQLException e){
                out.println(e);
       
   }
        
        out.println("Registration successful! Register Another!");
        out.println("<form action=\"http://localhost:8080/VaccinationInventoryModule\" method=\"post\">");
        out.println("<br><button type=\"submit\" >Register</button><br><br>");
        out.println("</form>");
                 
                 
        out.println("View Vaccine Lists from here!");
        out.println("<form action=\"http://localhost:8080/VaccinationInventoryModule/DisplayVaccine.jsp\" method=\"post\">");
        out.println("<br><button type=\"submit\" >Vaccines</button><br><br>");
        out.println("</form>");

    }
    }

   
    

