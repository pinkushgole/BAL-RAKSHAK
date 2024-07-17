<%-- 
    Document   : childrenForm
    Created on : Oct 18, 2023, 12:36:34 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information Page</title><%@include file="Style.css" %>
    </head>
    <body>
        <%@include file="mainnavbar.html" %>
        <div class="container-fluide" >

            <div class="container mt-3">
                <h3 class="text-center text-success">Submit Children Information</h3>
                <div class="row ">
                    <div class="col-md-6 mt-3">
                        <div class="card crd-ho" >
                            <div class="card-body text-center">
                                <img alt="#" src="img/child1.jpg"
                                     style="width: 300px; height: 200px" class="img-thunblin">
                            </div> 

                        </div>
                    </div>

                    <div class="col-md-6 mt-3">
                        <div class="card">
                            <div class="card-body">

                                <form action="AddChildren" method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label for="exampleFormControlFile1">Upload Children Photo</label>
                                        <input  name="bing" type="file" class="form-control-file"
                                            id="exampleFormControlFile1">
                                    </div>
                                    <div class="form-group">

                                        <label for="totalAmt">Children Address</label>
                                        <input type="text"  name="c_address" class="form-control" step="0.01" id="totalAmt" placeholder="" required>

                                    </div>
                                     <div class="form-group">
                                          <label for="totalAmt">More Information About Children</label>
                                        <textarea class="form-control" name="c_details" id="exampleFormControlTextarea1"  rows="3" placeholder="" required></textarea>
                                     </div>
                                    <div class="form-group">
                                        <label for="inputcollagename">Person Name  </label>
                                        <input type="text"   name="p_name" class="form-control" id="inputEmail4" placeholder="" required>
                                    </div>
                                   
                                    <div class="form-group">
                                        <label for="inputcollagename">Person Contact</label>
                                        <input type="text"  name="p_contact" class="form-control" id="inputEmail4"  required>
                                    </div>
                                    <button type="submit" class="btn btn-primary mt-3">Submit Information</button>
                                    <a href="index.jsp" class="btn btn-primary text-white mt-3">Back</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          <%-- end Contact  page --%>
        <%@include file="footer.jsp" %>
    </body>
</html>
