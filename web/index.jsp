<%-- 
    Document   : index
    Created on : Jul 1, 2023, 8:27:15 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%@include file="Style.css" %>
        <style>
            *{
                font-family: 'Baloo 2', sans-serif;
                font-family: 'Open Sans', sans-serif;

            }
        </style>
    </head>
    <body>
        <%@include file="mainnavbar.html" %>
        <div class="container-fluide" style="background: url(img/ch1.jpg); height: 80vh; width: 100% ;background-repeat: no-repeat; background-size: cover">

        </div>
    </div>
     <hr style="border:1px solid #cfedc2">

    <%-- Start About page --%>

    <div class="container-fluide p-3" id="About_Us">

        <div class="row">
            <div class="col-md-6">
                <div class=" p-3" style="background:url(img/ab1.avif);height: 60vh ; background-repeat: no-repeat;background-image: cover">
                </div>
            </div>
            <div class="col-md-6">
                <h2 class="text-success" >About Us</h2>
                <p id="ab" class="mt-3" style="font-size: 25px;" >Here , Our website is for providing an interface between students seeking for  job opportunities
                    and companies Willing to hierarchy new freshers for their company in respective fields.Hereby our
                    website is providing you all the information of students of different colleges searching for placement 
                    opportunities and also it is providing the information of companies seeking for new employees.
                    <br>
                    You can search about the qualifications and interests of the candidates and also about the qualities and
                    facilities of the company.</p>
            </div>
        </div>
    </div>
    <%-- end About page --%>
     <hr style="border:1px solid #cfedc2">

    <%--start card page--%>
    <div class="container mt-3">
        <h2 class="text-success text-center">WHAT WE DO TO SAVE CHILDREN</h2>

        <hr>
        <div class="row">
            <div class="col-md-4 mt-2">


                <div class="card crd-ho" >
                    <div class="card-body text-center">
                        <a href="medical.jsp"> 
                        <img alt="#" src="img/E1.jpg"
                             style="width: 200px; height: 150px" class="img-thunblin">
                        <p class="mt-2"><b>Emergency Medical Support</b></p>    <hr style="border:1px solid yellow"></a>
                        <p> Committed to saving lives of ill children across the nation and laying foundation for good health. 1631 Children Saved till March 2021.  </p>
                        <a href="medical.jsp" class="btn btn-primary btn-sm ml-5">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mt-2">


                <div class="card crd-ho" >
                    <div class="card-body text-center">
                        <a href="education.jsp"> 
                        <img alt="#" src="img/E2.jpg"
                             style="width: 200px; height: 150px" class="img-thunblin">
                        <p class="mt-2"><b>Education</b></p>    <hr style="border:1px solid yellow"></a>
                        <p>BAL RAKSHAK Foundation Champions the cause of Quality Education which is free and accessible for all the Children. 464216 Children Impacted till March 2021.</p>
                                            <a href="education.jsp" class="btn btn-primary btn-sm ml-5">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mt-2">


                <div class="card crd-ho" >
                    <div class="card-body text-center">
                        <a href="zero.jsp"> 
                        <img alt="#" src="img/E3.jpg"
                             style="width: 200px; height: 150px" class="img-thunblin">
                        <p class="mt-2"><b>Zero Hunger</b></p>    <hr style="border:1px solid yellow"></a>
                        <p>BAL RAKSHAK Foundation ensures no child dies of starvation and we there fighting malnutrition in most affected tribal pockets.</p>
                                            <a href="zero.jsp" class="btn btn-primary btn-sm ml-5">Read More</a>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <%-- end card page --%>
    <hr style="border:1px solid #cfedc2">
    <%--start TESTIMONIALS page--%>
    <div class="container-fluide p-3">
        <h2 class="text-success text-center">TESTIMONIALS</h2>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>

            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" width="800px" height="600px" src="img/f3.png" alt="First slide">

                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" width="800px" height="600px" src="img/f2.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" width="800px" height="600px" src="img/f1.png" alt="Second slide">
                </div>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon text-success" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>        
    </div>
    <%-- end TESTIMONIALS page --%>

     <hr style="border:1px solid #cfedc2">

    <%--start contact page--%>
    <div class="container-fluide p-3" id="Contact" style="background-color: #2b281e">
        <div class="row p-5">
            <div class="col-md-4">
                <h4 class="text-center text-white">BAL-RAKSHAK FOUNDATION</h4>
                <p class="text-white text-center">Address :  Indore</p>

            </div>   


            <div class="col-md-4">
                <h4 class="text-white">Quick Links</h4>
                <br>
                <ul class="">
                    <a href="index.jsp" class="text-white"><li>Home</li></a>
                    <a href="Helpline.jsp" class="text-white"><li>Help Line</li></a>
                    <a href="childrenForm.jsp" class="text-white"><li>Submit Children Information </li></a>
                    <a href="ngoregistration.jsp" class="text-white"><li>NGO Registration</li></a>
                    <a href="loginNGO.jsp" class="text-white"><li>NGO Login</li></a>
                    <a href="MissionVission.jsp" class="text-white"><li>Mission & Vission</li></a>
                    <a href="FAQS.jsp" class="text-white"><li>FAQS</li></a>
                    <a href="contact.jsp" class="text-white"><li>Contact</li></a>
                </ul>
            </div>
            <div class="col-md-4">
                <a href="" > <i class="fa-brands fa-square-facebook fa-2x text-primary p-3"></i></a>
                <a href=""><i class="fa-brands fa-instagram fa-2x text-danger p-3"></i></a>
                <a href=""> <i class="fa-brands fa-twitter fa-2x text-primary p-3"></i></a>
                <a href=""><i class="fa-brands fa-whatsapp fa-2x text-success  p-3"></i></a>
            </div>
        </div>
    </div>
    <%-- end Contact  page --%>
    <%@include file="footer.jsp" %>
</body>
</html>
