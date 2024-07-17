<%-- 
    Document   : Adminnavbar
    Created on : Oct 18, 2023, 1:21:12 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="Style.css" %>
    </head>
    <body>
        <div class="container-fluide" style="height: 5px;background-color:teal "></div>
        <div class="container-fluide p-3" >
            <div class="row">
                <div class="col-md-12 text-success">
                    <h3>BAL-RAKSHAK</h3>
                </div>

            </div>
        </div>
        <nav class="navbar navbar-dark justify-content-between" style="background-color:teal ">
            <a class="navbar-brand text-white">Admin Home</a>
            
            <form class="form-inline">
                <button class="btn btn-outline-success text-white mx-2" type="submit"><a href="AdminHomePage.jsp" class="text-white"><i class="fa-solid fa-house"></i> Home</a></button>
                <button class="btn btn-outline-success text-white mx-2" type="submit"><a href="TotalNGO.jsp" class="text-white"><i class="fa-solid fa-house"></i> NGO</a></button>
                <button class="btn btn-outline-success text-white" type="submit"><a href="" class="text-white"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></button>
            </form>
        </nav>
    </body>
</html>
