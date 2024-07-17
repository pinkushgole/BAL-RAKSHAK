/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modle.ChildrenInfo;
import modle.NGOInfo;

/**
 *
 * @author asus
 */
public class NGODaoImple implements NGODao {
    private Connection conn;

    public NGODaoImple(Connection conn) {
          super();
        this.conn = conn;
    }

    
    public boolean addNgos(NGOInfo ni) {
       boolean f=false;
       try {
            String sql = "INSERT INTO ngos(ngo_name,ngo_email,ngo_password,ngo_contact,ngo_address,ngo_img) VALUES( ?,  ?,  ?,  ?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,ni.getNgo_name());
            ps.setString(2, ni.getNgo_email());
            ps.setString(3, ni.getNgo_password());
            ps.setString(4, ni.getNgo_conatct());
            ps.setString(5, ni.getNgo_address());
            ps.setString(6, ni.getNgo_img());
           
           int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
       return f;
    }

    
    public List<NGOInfo> getAllNgo() {
        List<NGOInfo> list=new ArrayList<NGOInfo>();
        NGOInfo ni=null;
          try {
            String sql = "select * from ngos";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ni = new NGOInfo();
                ni.setNgo_id(rs.getInt(1));
                ni.setNgo_name(rs.getString(2));
                ni.setNgo_email(rs.getString(3));
                ni.setNgo_password(rs.getString(4));
                ni.setNgo_conatct(rs.getString(5));
                ni.setNgo_address(rs.getString(6));
                ni.setNgo_img(rs.getString(7));
                list.add(ni);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public boolean deleteNGOInfo(int id) {
       boolean f = false;
        try {
            String sql = "delete from ngos where ngo_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return f;
    }

  
    public NGOInfo ngoLogin(String email, String password) {
       NGOInfo ni=null;
       try {
            String sql = "select * from ngos where ngo_email=? and ngo_password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
             ps.setString(1, email);
              ps.setString(2, password);
             ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ni=new NGOInfo();
                ni.setNgo_id(rs.getInt(1));
                ni.setNgo_name(rs.getString(2));
                ni.setNgo_email(rs.getString(3));
                ni.setNgo_password(rs.getString(4));
                ni.setNgo_conatct(rs.getString(5));
                ni.setNgo_address(rs.getString(6));
                ni.setNgo_img(rs.getString(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
       return ni;
    }

    
    public boolean updateNgoProfile(String email, String password, String contact, String address) {
        boolean f=false;
        try {
            String sql = "Update ngos set ngo_password=? , ngo_contact=?,ngo_address=? where ngo_email=?";
           PreparedStatement ps = conn.prepareStatement(sql); 
           ps.setString(1, password);
           ps.setString(2, contact);
           ps.setString(3, address);
           ps.setString(4, email);
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
