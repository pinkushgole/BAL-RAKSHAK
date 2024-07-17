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
import modle.NGOInfo;

/**
 *
 * @author asus
 */
public class LoginNgos extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("lginNGO.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ngo_email = req.getParameter("ngo_email");
        String ngo_password = req.getParameter("ngo_password");
        NGODaoImple nd=new NGODaoImple(DbConnection.getConnection());
        HttpSession session = req.getSession(true);

        if ("pinkush@gmail.com".equals(ngo_email) && "12345".equals(ngo_password)) {
         resp.sendRedirect("AdminHomePage.jsp");
        } else {
            NGOInfo ngo =nd.ngoLogin(ngo_email, ngo_password);
            if (ngo != null) {
                session.setAttribute("ngoobj", ngo);
                 session.setAttribute("message", "login succesfully...");
                resp.sendRedirect("NGOHome.jsp");
            } else {
                session.setAttribute("message", "Email & password Invaild....");
                resp.sendRedirect("loginNGO.jsp");
            }

        }
    }
}
