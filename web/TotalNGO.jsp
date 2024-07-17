<%-- 
    Document   : TotalNGO
    Created on : Oct 18, 2023, 1:41:47 PM
    Author     : asus
--%>

<%@page import="dto.NGODaoImple"%>
<%@page import="java.util.List"%>
<%@page import="modle.NGOInfo"%>
<%@page import="db.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Admin Home</title><%@include file="Style.css" %>
    </head>
    <body>
         <%@include file="Adminnavbar.jsp" %>
         <div class="container ">
            <h3 class="text-center text-success mt-2">NGO's Information</h3>
            <hr>
            <div class="row">
               <%
                NGODaoImple cdao=new NGODaoImple(DbConnection.getConnection());
                List<NGOInfo> list=cdao.getAllNgo();
                for (NGOInfo b : list){
               %>
                <div class="col-md-4 mt-2">
                    
                   
                    <div class="card crd-ho" >
                        <div class="card-body text-center">
                            <img alt="#" src="img/<%=b.getNgo_img()%>"
                                 style="width: 200px; height: 250px" class="img-thunblin">
                            <p class="mt-2">Name : <%=b.getNgo_name()%></p>
                            <p>Email : <%=b.getNgo_email()%></p>
                            <p>Password : <%=b.getNgo_password()%></p>
                             <p>Contact : <%=b.getNgo_conatct()%></p>
                             <p>Contact : <%=b.getNgo_address()%></p>
                             <a href="./DeleteNgos?id=<%=b.getNgo_id()%>" class="btn btn-primary  ml-1">Delete</a>
                        </div>
                    </div>
               
                 
                    </div>
                  <%
                    }
                %>

            </div>
        </div>
                 <div class="container-fluide "><%@include file="footer.jsp" %></div>
    </body>
</html>
