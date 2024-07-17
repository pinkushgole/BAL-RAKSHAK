/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author asus
 */
public class ContactDaoImple implements ContactDao {
     private Connection conn;

    public ContactDaoImple(Connection conn) {
        super();
        this.conn = conn;}

    @Override
    public boolean ContactAdmin(String name, String email, String contact, String message) {
       boolean f=false;
      try {  
        String query="insert into contact values(?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, name);
        ps.setString(2,email);
        ps.setString(3,contact);
        ps.setString(4,message);
        int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
            } catch (SQLException e) {
            System.out.println(e);
        }

        return f;
    }
        
   
}
