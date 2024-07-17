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
public class DeleteNgos extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       int id=Integer.parseInt(req.getParameter("id"));
        NGODaoImple nd=new NGODaoImple(DbConnection.getConnection());
        
        boolean f=nd.deleteNGOInfo(id);
        
        HttpSession session = req.getSession();
        
        if(f)
        {
        session.setAttribute("succMsg", "Children Information Delete Successful....");
          resp.sendRedirect("TotalNGO.jsp");
        }else{
        session.setAttribute("faildMsg", "Something Wrong On Server....");
          resp.sendRedirect("TotalNGO.jsp");
        }
    }
}
