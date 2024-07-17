<%-- 
    Document   : EditNgoProfile
    Created on : Nov 5, 2023, 3:08:08 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>NGO's Profile</title>
        <%@include file="Style.css" %>
    </head>
    <body>
         <%@include file="NGOnavbar.jsp" %>
         <div class="container-fluide" >
             <%
             NGOInfo ni = (NGOInfo)session.getAttribute("ngoobj");
         %>
         <div class="container mt-3">
             <h3 class="text-center text-success">Your Profile</h3>
             <div class="row ">
                <div class="col-md-6 mt-3">
                       <div class="card crd-ho" >
                        <div class="card-body text-center">
                            <img alt="#" src="img/<%=ni.getNgo_img()%>"
                                 style="width: 300px; height: 300px" class="img-thunblin">
                         </div> 
                        <small id="emailHelp" class="form-text text-muted text-center">( Don't change in Photo)</small>
                        </div>
                    </div>
                  
                  <div class="col-md-6 mt-3">
                      <div class="card">
                <div class="card-body">
                   
                     <form action="UpdateNgoProfile" method="post">
                        <div class="form-row">
                            <input type="hidden" name="id" value="<%=ni.getNgo_id()%>">
                                <label for="inputcollagename">Name  </label>
                                <input type="text" class="form-control" disabled  value="<%=ni.getNgo_name()%>" id="inputEmail4" placeholder="" required>
                                <small id="emailHelp" class="form-text text-muted">( Don't change in Name)</small>
                        </div>
                          <div class="form-row">
                               
                                <label for="inputcollagename">Email </label>
                                <input type="text"  class="form-control" disabled id="inputEmail4" placeholder="First Name" value="<%=ni.getNgo_email()%>">
                               <small id="emailHelp" class="form-text text-muted">( Don't change in Email)</small>
                             </div>
                         <div class="form-row">
                            
                                <label for="inputcollagename">Password </label>
                                <input type="password" name="password" value="<%=ni.getNgo_password()%>" class="form-control" id="inputEmail4"  required>
                           </div>
                            <div class="form-row">
                      
                                <label for="inputcollagename">Contact</label>
                                <input type="text" name="contact" value="<%=ni.getNgo_conatct()%>" class="form-control" id="inputEmail4"  required>
           
                        </div>
                        
                        <div class="form-row">
                           
                                <label for="totalAmt">Address</label>
                                <input type="text" name="address" value="<%=ni.getNgo_address()%>" class="form-control" step="0.01" id="totalAmt" required>
                          
                        </div>
                        <button type="submit" class="btn btn-primary mt-3">Update</button>
                     <a href="NGOHome.jsp" class="btn btn-primary text-white mt-3">Back</a>
                    </form>
                </div>
            </div>
                  </div>
                 </div>
             </div>
         </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
