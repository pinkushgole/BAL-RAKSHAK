/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.List;
import modle.ChildrenInfo;

/**
 *
 * @author asus
 */
public interface ChildrenDao {
    
    public boolean addChildren(ChildrenInfo ci);
    
    public List<ChildrenInfo> getAllChildren();
    
    public boolean deleteChildrenInfo(int id);
}
