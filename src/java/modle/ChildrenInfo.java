/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modle;

/**
 *
 * @author asus
 */
public class ChildrenInfo {
    private int c_id;
    private String c_img;
    private String c_address;
    private String c_details;
    private String c_pname;
    private String c_pcontact;

    public ChildrenInfo()
    {
        
    }
    
    public ChildrenInfo( String c_img, String c_address, String c_details, String c_pname, String c_pcontact) {
        this.c_img = c_img;
        this.c_address = c_address;
        this.c_details = c_details;
        this.c_pname = c_pname;
        this.c_pcontact = c_pcontact;
    }

    
    
    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getC_img() {
        return c_img;
    }

    public void setC_img(String c_img) {
        this.c_img = c_img;
    }

    public String getC_address() {
        return c_address;
    }

    public void setC_address(String c_address) {
        this.c_address = c_address;
    }

    public String getC_details() {
        return c_details;
    }

    public void setC_details(String c_details) {
        this.c_details = c_details;
    }

    public String getC_pname() {
        return c_pname;
    }

    public void setC_pname(String c_pname) {
        this.c_pname = c_pname;
    }

    public String getC_pcontact() {
        return c_pcontact;
    }

    public void setC_pcontact(String c_pcontact) {
        this.c_pcontact = c_pcontact;
    }

    @Override
    public String toString() {
        return "ChildrenInfo{" + "c_id=" + c_id + ", c_img=" + c_img + ", c_address=" + c_address + ", c_details=" + c_details + ", c_pname=" + c_pname + ", c_pcontact=" + c_pcontact + '}';
    }
    
    
}
