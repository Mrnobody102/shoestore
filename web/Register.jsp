<%-- 
    Document   : Register
    Created on : May 26, 2022, 8:53:35 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="include/Head.jsp" %>
        <script type="text/javascript">
            function Show() {
                if (document.getElementById('myform').style.display === "none") {
                    document.getElementById('myform').style.display = "block";
                } else {
                    document.getElementById('myform').style.display = "none";
                }
            }
        </script>
    </head>
    <body>
        <%@include file="include/Header.jsp" %>
        <!-- Start Banner Area -->
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Register</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="category.html">Login/Register</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <section class="login_box_area section_gap">
            <div class="container">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="login_form_inner">      
                                <h3>Register</h3>
                                <form class="row login_form" action="Register" method="post" id="contactForm" novalidate="novalidate">
                                    <div class="col-md-12 form-group">
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Name'" value="${name}">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="text" class="form-control" id="name" name="username" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'" value="${usernamerg}">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="password" class="form-control" id="name" name="pass" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"value = ${pass}>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="text" class="form-control" id="name" name="phone" placeholder="Phone Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone Number'" value = "${phone}">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="text" class="form-control" id="name" name="email" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" value = "${email}">
                                    </div>
                                    <div class="col-md-12">
                                        <div class="creat_account d-flex" >
                                            <input type="checkbox" id="f-option2" name="selector" class="mt-1 mr-2">
                                                                                        <p onclick="Show()"  for="f-option2">I agree to the 
                                                                                            <a href="">terms of service </a>and<a href="" > privacy policy </a></p>
<!--                                            <h7 style="color: red" onclick="Show()" >I a gree to the terms of servive</h7>-->




                                        </div>
                                        <h7 id="myform" style="display:none"> 1.1 Trước khi trở thành Người Sử Dụng của Trang ShoeStore, bạn cần đọc và chấp nhận mọi điều khoản và điều kiện được quy định trong, và dẫn chiếu đến, Điều Khoản Dịch Vụ này và Chính Sách Bảo Mật được dẫn chiếu theo đây.<br>


                                            1.2 ShoeStore bảo lưu quyền thay đổi, chỉnh sửa, tạm ngưng hoặc chấm dứt tất cả hoặc bất kỳ phần nào của Trang ShoStore hoặc Dịch Vụ vào bất cứ thời điểm nào theo quy định pháp luật. Phiên Bản thử nghiệm của Dịch Vụ hoặc tính năng của Dịch Vụ có thể không hoàn toàn giống với phiên bản cuối cùng.<br>

                                            1.3 ShoStore bảo lưu quyền từ chối yêu cầu mở Tài Khoản hoặc các truy cập của bạn tới Trang ShoeStore hoặc Dịch Vụ theo quy định pháp luật và Điều khoản dịch vụ.</h7>
                                    </div>
                                    <div class="col-md-12 form-group text-danger">${message1}</div>
                                    <div class="col-md-12 form-group">
                                        <button type="submit" value="submit" class="primary-btn">Create an account</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="login_box_img">
                                <img class="img-fluid" src="img/SC_Curry-9_Sager-Strong_1-1024x707.jpg" alt="">
                                <div class="hover">
                                    <h4>You already have an account?</h4>
                                    <p>Put your dreams on your feet to guide them into reality.</p>
                                    <a class="primary-btn" href="Login">LOGIN</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <%@include file="include/Footer.jsp" %>
    </body>
</html>
