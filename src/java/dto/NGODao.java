/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.List;
import modle.NGOInfo;

/**
 *
 * @author asus
 */
public interface NGODao {
    
    public boolean addNgos(NGOInfo ni);
    
    public List<NGOInfo> getAllNgo();
    
    public boolean deleteNGOInfo(int id);
    
    public NGOInfo ngoLogin(String email,String password);
    
    public boolean updateNgoProfile(String email,String password,String contact,String address);
}
