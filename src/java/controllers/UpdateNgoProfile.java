/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.DbConnection;
import dto.NGODaoImple;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
public class UpdateNgoProfile extends HttpServlet {

   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        String contact=req.getParameter("contact");
        String address=req.getParameter("address");
       
        HttpSession session=req.getSession(true);
        
        NGODaoImple nd=new NGODaoImple(DbConnection.getConnection());
        boolean f=nd.updateNgoProfile(email, password, contact, address);
         if(f)
        {
            session.setAttribute("message", "Updatetion Succesfully...");
            resp.sendRedirect("NGOHome.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "update SomeThing Wrong On Server..");
            resp.sendRedirect("NGOHome.jsp");
        }
    }
  
}
