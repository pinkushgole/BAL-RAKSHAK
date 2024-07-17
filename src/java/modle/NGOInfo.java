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
public class NGOInfo {
    private int ngo_id;
    private String ngo_name;
    private String ngo_email;
    private String ngo_password;
    private String ngo_conatct;
    private String ngo_address;
    private String ngo_img;
    
    public NGOInfo()
    {
        
    }

    public NGOInfo( String ngo_name, String ngo_email, String ngo_password, String ngo_conatct, String ngo_address, String  ngo_img) {
    
        this.ngo_name = ngo_name;
        this.ngo_email = ngo_email;
        this.ngo_password = ngo_password;
        this.ngo_conatct = ngo_conatct;
        this.ngo_address = ngo_address;
        this. ngo_img =  ngo_img;
    }

    public int getNgo_id() {
        return ngo_id;
    }

    public void setNgo_id(int ngo_id) {
        this.ngo_id = ngo_id;
    }

    public String getNgo_name() {
        return ngo_name;
    }

    public void setNgo_name(String ngo_name) {
        this.ngo_name = ngo_name;
    }

    public String getNgo_email() {
        return ngo_email;
    }

    public void setNgo_email(String ngo_email) {
        this.ngo_email = ngo_email;
    }

    public String getNgo_password() {
        return ngo_password;
    }

    public void setNgo_password(String ngo_password) {
        this.ngo_password = ngo_password;
    }

    public String getNgo_conatct() {
        return ngo_conatct;
    }

    public void setNgo_conatct(String ngo_conatct) {
        this.ngo_conatct = ngo_conatct;
    }

    public String getNgo_address() {
        return ngo_address;
    }

    public void setNgo_address(String ngo_address) {
        this.ngo_address = ngo_address;
    }

    public String getNgo_img() {
        return  ngo_img;
    }

    public void setNgo_img(String ngo_img) {
        this. ngo_img = ngo_img;
    }

    @Override
    public String toString() {
        return "NGOInfo{" + "ngo_id=" + ngo_id + ", ngo_name=" + ngo_name + ", ngo_email=" + ngo_email + ", ngo_password=" + ngo_password + ", ngo_conatct=" + ngo_conatct + ", ngo_address=" + ngo_address + ",  ngo_img=" +  ngo_img + '}';
    }

  
    
}
