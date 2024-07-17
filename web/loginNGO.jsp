<%-- 
    Document   : loginNGO
    Created on : Oct 17, 2023, 5:19:08 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NGO Login</title>
         <%@include file="Style.css" %>
    </head>
    <body>
        <%@include file="mainnavbar.html" %>
         <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">
           
         </div>
        <h2 class="text-success text-center">Login for NGO</h2>
        <div class="container mt-2" style="height: 63vh">
            <div class="card">
                <div class="card-body">
                    <form  action="LoginNgos" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" name="ngo_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="ngo_password" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
                        </div>
                       
                        <button type="submit" class="btn btn-primary">Login</button> 
                        <a href="index.jsp" class="btn btn-primary text-white mx-2">Back</a>
                        <a href="ngoregistration.jsp"> <P>Create an Account.?</P></a>
                       
                    </form>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
