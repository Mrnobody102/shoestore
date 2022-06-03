<%-- 
    Document   : Login
    Created on : May 24, 2022, 9:40:39 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="include/Head.jsp" %>
    </head>
    <body>
        <%@include file="include/Header.jsp" %>
        <!-- Start Banner Area -->
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Login</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.html">Login<span class="lnr lnr-arrow-right"></span></a>
                            <a href="category.html">Home</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Banner Area -->

        <!--================Login Box Area =================-->
        <section class="login_box_area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="login_box_img">
                            <img class="img-fluid" src="img/SC_Curry-9_Sager-Strong_1-1024x707.jpg" style="height: 400px" alt="">
                            <div class="hover">
                                <h4>Do not have an account?</h4>
                                <p>Put your dreams on your feet to guide them into reality.</p>
                                <a class="primary-btn" href="Register">Create an Account</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="login_form_inner">
                            <h3>Log in</h3>                       
                            <form class="row login_form" action="Login" method="post" id="contactForm" novalidate="novalidate">
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'" value="${username}" required="required" >
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="name" name="pass" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" value="${password}" required>
                                </div>
                                <div class="col-md-6 form-group">
                                    <div class="creat_account">
                                        <input type="checkbox" id="f-option2" name="selector">
                                        <label for="f-option2">Remember me</label>
                                    </div>
                                </div>
                                <div class="col-md-12 form-group">
                                    <button type="submit" value="submit" class="primary-btn" style="border-radius: 50px;">Log In</button>
                                      <a href="#">Forgot Password</a>
                                </div>
                                <div class="col-md-6 form-group">   
                                    <a href="https://www.facebook.com/dialog/oauth?client_id=693294385112739&redirect_uri=http://localhost:8080/ShoeStore2/FacebookLogin" class="connect facebook" style="background-color: #0069d9;padding: 10px;border-radius: 50px "> 
                                        <div class="connect__context" style="color: white">
                                            <i class="fa fa-facebook" style="color: white"></i>
                                            <span>&emsp;<strong>Facebook</strong></span>
                                        </div></a>    
                                </div>
                                <div class="col-md-6 form-group">
                                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/ShoeStore2/GoogleLogin&response_type=code&client_id=505680417765-5q4uh21on7m3rgp2ld0k873ku2rkuv3s.apps.googleusercontent.com&approval_prompt=force" class="connect googleplus" style="background-color: #ED4335;padding: 10px;border-radius: 50px">
                                        <div  class="connect__context" style="color: white">
                                            <i class="fa fa-google-plus" style="color: white"></i>
                                            <span>&emsp;<strong>Google+</strong></span>
                                        </div></a>  
                                </div>

                                <div class="col-md-12 form-group text-danger">${message}</div>
                            </form>    
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Login Box Area =================-->

        <%@include file="include/Footer.jsp" %>

    </body>
</html>
