<%-- 
    Document   : NGOHome
    Created on : Oct 17, 2023, 5:30:08 PM
    Author     : asus
--%>

<%@page import="modle.NGOInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NGO Home</title>
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
            
                        </div>
                    </div>
                  
                  <div class="col-md-6 mt-3">
                      <div class="card">
                <div class="card-body">
                   
                     <form >
                        <div class="form-row">
                            
                                <label for="inputcollagename">Name  </label>
                                <input type="text" disabled  value="<%=ni.getNgo_name()%>" class="form-control" id="inputEmail4" placeholder="" required>
                        
                        </div>
                          <div class="form-row">
                               
                                <label for="inputcollagename">Email </label>
                                <input type="text"class="form-control" disabled id="inputEmail4" placeholder="First Name" value="<%=ni.getNgo_email()%>">
                            
                             </div>
                         <div class="form-row">
                            
                                <label for="inputcollagename">Password </label>
                                <input type="text" disabled value="<%=ni.getNgo_password()%>" class="form-control" id="inputEmail4"  required>
                           </div>
                            <div class="form-row">
                      
                                <label for="inputcollagename">Contact</label>
                                <input type="text" disabled value="<%=ni.getNgo_conatct()%>" class="form-control" id="inputEmail4"  required>
           
                        </div>
                        
                        <div class="form-row">
                           
                                <label for="totalAmt">Address</label>
                                <input type="text" disabled value="<%=ni.getNgo_address()%>" class="form-control" step="0.01" id="totalAmt" placeholder="CGPA" required>
                          
                        </div>
                        <a href="EditNgoProfile.jsp" class="btn btn-primary text-white mt-3">Edit</a>
                     
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
