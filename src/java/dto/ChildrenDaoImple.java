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

/**
 *
 * @author asus
 */
public class ChildrenDaoImple implements ChildrenDao {
    private Connection conn;

    public ChildrenDaoImple(Connection conn) {
        super();
        this.conn = conn;
    }

   
    public boolean addChildren(ChildrenInfo ci) {
        boolean f=false;
        try {
            String sql = "INSERT INTO children(c_img,c_address,c_details,c_pname,c_pcontact) VALUES( ?,?,?, ?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, ci.getC_img());
            ps.setString(2, ci.getC_address());
            ps.setString(3, ci.getC_details());
            ps.setString(4, ci.getC_pname());
            ps.setString(5, ci.getC_pcontact());
         
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return f;
    }

   
    public List<ChildrenInfo> getAllChildren() {
         List<ChildrenInfo> list = new ArrayList<ChildrenInfo>();
         ChildrenInfo ci=null;
         try {
            String sql = "select * from children";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ci = new ChildrenInfo();
                ci.setC_id(rs.getInt(1));
                ci.setC_img(rs.getString(2));
                ci.setC_address(rs.getString(3));
                ci.setC_details(rs.getString(4));
                ci.setC_pname(rs.getString(5));
                ci.setC_pcontact(rs.getString(6));
                list.add(ci);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
         return list;
    }

  
    public boolean deleteChildrenInfo(int id) {
        boolean f = false;
        try {
            String sql = "delete from children where c_id=?";
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
    
    
}
