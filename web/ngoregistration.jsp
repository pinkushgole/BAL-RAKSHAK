<%-- 
    Document   : ngoregistration
    Created on : Oct 17, 2023, 4:45:22 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NGO Registration</title>
        <%@include file="Style.css" %>
    </head>
    <body>
        <%@include file="mainnavbar.html" %>
        <div class="container p-3">
            <h3 class="text-center text-primary">Sign Up for NGO's</h3>
            <form action="AddNgo" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <div class="form-group ">
                        <div class="form-group">
                            <label for="inputAddress">NGO's Name</label>
                            <input type="text" name="ngo_name" class="form-control" id="inputAddress" placeholder="Enter College Name" required>
                        </div>
                   </div>
                </div>
                <div class="form-row ">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Email</label>
                        <input type="email" name="ngo_email" class="form-control" id="inputEmail4" placeholder="Enter Email" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Password</label>
                        <input type="password" name="ngo_password" class="form-control" id="inputPassword4" placeholder="Enter Password" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Contact Number</label>
                    <input type="text" name="ngo_contact" id="inputAddress" class="form-control" placeholder="Enter Contact number" required>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Location</label>
                    <input type="text" name="ngo_location" class="form-control" id="inputAddress" placeholder="Enter College Location" required>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" name="ngo_city" class="form-control" id="inputCity" placeholder="Enter City Name" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">State</label>
                        <input type="text" name="ngo_state" class="form-control" id="inputAddress" placeholder="Enter State Name" required>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">Pin Code</label>
                        <input type="text" name="ngo_pincode" placeholder="Enter Area Code" class="form-control" id="inputZip" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlFile1">Upload Photo</label><input
                        name="bing" type="file" class="form-control-file"
                        id="exampleFormControlFile1">
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
<!--                <a href="index.jsp" class="btn btn-primary text-white mx-2">Back</a>-->
            </form>
        </div>
         <%@include file="footer.jsp" %>
    </body>
</html>
