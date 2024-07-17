/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.DbConnection;
import dto.ContactDaoImple;
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
public class Contact extends HttpServlet {

   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String fname=req.getParameter("fname");
       String lname=req.getParameter("lname");
       String email=req.getParameter("email");
       String contact=req.getParameter("phoneno");
       String message=req.getParameter("message");
       String name=fname+" "+lname;
       HttpSession session=req.getSession(true);
       ContactDaoImple fd=new ContactDaoImple(DbConnection.getConnection());
       boolean f=fd.ContactAdmin(name, email, contact, message);
       if(f)
        {
            session.setAttribute("message", "Your Request send is Succesfully...");
            resp.sendRedirect("contact.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("contact.jsp");
        }
   }
}
