/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.DbConnection;
import dto.ChildrenDaoImple;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import modle.ChildrenInfo;

/**
 *
 * @author asus
 */
@MultipartConfig
public class AddChildren extends HttpServlet {

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
     
       String address=request.getParameter("c_address");
       String details=request.getParameter("c_details");
       String p_name=request.getParameter("p_name");
       String p_contact=request.getParameter("p_contact");
       Part part = request.getPart("bing");
       String fileName = part.getSubmittedFileName();
       ChildrenInfo ci=new ChildrenInfo(fileName,address,details,p_name,p_contact);
       System.out.println(address);
       ChildrenDaoImple cdao=new ChildrenDaoImple(DbConnection.getConnection());
       
       boolean f=cdao.addChildren(ci);
       
       HttpSession session = request.getSession();
        if (f) {
            String path = getServletContext().getRealPath("") + "img";

            File file = new File(path);
            part.write(path + File.separator + fileName);
            session.setAttribute("succMsg", "Children information successfully Add..");
            response.sendRedirect("index.jsp");
        } else {
            //System.out.println("user register error...");
            session.setAttribute("faildMsg", "SomeThing Wrong On Server..");
           response.sendRedirect("index.jsp");
        }
   }
}
