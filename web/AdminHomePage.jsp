<%-- 
    Document   : AdminHomePage
    Created on : Oct 18, 2023, 1:19:57 PM
    Author     : asus
--%>

<%@page import="java.util.List"%>
<%@page import="modle.ChildrenInfo"%>
<%@page import="dto.ChildrenDaoImple"%>
<%@page import="db.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Admin Home</title>
         <%@include file="Style.css" %>
    </head>
    <body>
      <%@include file="Adminnavbar.jsp" %>
      <div class="container ">
            <h3 class="text-center text-success mt-2">Children Information</h3>
            <hr>
            <div class="row">
               <%
                ChildrenDaoImple cdao=new ChildrenDaoImple(DbConnection.getConnection());
                List<ChildrenInfo> list=cdao.getAllChildren();
                for (ChildrenInfo b : list){
               %>
                <div class="col-md-3">
                    <div class="card crd-ho" >
                        <div class="card-body text-center">
                            <img alt="#" src="img/<%=b.getC_img()%>"
                                 style="width: 150px; height: 200px" class="img-thunblin">
                            <p class="mt-2">Address : <%=b.getC_address()%></p>
                            <p>Details : <%=b.getC_details()%></p>
                            <p>Person Name : <%=b.getC_pname()%></p>
                             <p>Person Contact : <%=b.getC_pcontact()%></p>
                             <a href="./Deletechildren?id=<%=b.getC_id()%>" class="btn btn-primary  ml-1">Delete</a>
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
