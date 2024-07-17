/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;


import db.DbConnection;
import dto.NGODaoImple;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import modle.NGOInfo;

/**
 *
 * @author asus
 */
@MultipartConfig
public class AddNgo extends HttpServlet {

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
       String name=request.getParameter("ngo_name");
       String email=request.getParameter("ngo_email");
       String password=request.getParameter("ngo_password");
       String contact=request.getParameter("ngo_contact");
       String location=request.getParameter("ngo_location");
       String city=request.getParameter("ngo_city");
       String state=request.getParameter("ngo_state");
       String zip=request.getParameter("ngo_pincode");
       
       String address=location+","+city+","+state+","+zip;
       
       Part part = request.getPart("bing");
       String fileName = part.getSubmittedFileName();
     
       NGOInfo ni=new NGOInfo(name,email,password,contact,address,fileName);
       
       NGODaoImple nd=new NGODaoImple(DbConnection.getConnection());
       
       boolean f=nd.addNgos(ni);
       
        HttpSession session = request.getSession();
        if (f) {
            String path = getServletContext().getRealPath("") + "img";

            File file1 = new File(path);
            part.write(path + File.separator + fileName);
            session.setAttribute("succMsg", "Book Add successfully..");
            response.sendRedirect("index.jsp");
        } else {
            //System.out.println("user register error...");
            session.setAttribute("faildMsg", "SomeThing Wrong On Server..");
            response.sendRedirect("index.jsp");
        }
   }

}
