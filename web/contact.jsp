<%-- 
    Document   : contact
    Created on : Nov 4, 2023, 8:19:19 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title> <%@include file="Style.css" %>
    </head>
    <body>
         <%@include file="mainnavbar.html" %>
         <h1 class="text-center text-success mt-2">Contact Us</h1>
         <div class="container p-5">
            <form action="Contact" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">First Name : </label>
                        <input type="text" name="fname" class="form-control" id="inputCity" required>
                        <small>First Name</small>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Last Name : </label>
                        <input type="text" name="lname" class="form-control" id="inputAddress" >
                        <small>Last Name</small>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="inputEmail4">Email :</label>
                    <input type="email" name="email" class="form-control" id="inputEmail4" placeholder="Email" required>
                </div>
                <div class="form-group ">
                    <label for="inputAddress">Contact Number :</label>
                    <input type="tel" id="inputAddress" name="phoneno" class="form-control"  required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Message:</label>
                    <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3" required></textarea>
                </div>
                 <button type="submit" class="btn btn-primary">Submit</button>
                   <a href="index.jsp" class="btn btn-primary text-white mx-2">Back</a>
            </form>
        </div>
    </body>
</html>
