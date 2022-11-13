<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">


                <title>Chezmoi 會員資料</title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport">
                <meta content="Free HTML Templates" name="keywords">
                <meta content="Free HTML Templates" name="description">

                <!-- Favicon -->
                <link href="https://img.onl/fUrHvw" rel="icon">

                <!-- Google Web Fonts -->
                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link
                    href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
                    rel="stylesheet">
                <script src="https://code.jquery.com/jquery-3.6.1.js"
                        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
                <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
                <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
                  <link href="${pageContext.request.contextPath}/datePick/css/bootstrap-datepicker3.standalone.css"
                rel="stylesheet">

                <!-- Font Awesome -->
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                    rel="stylesheet">

                <!-- Libraries Stylesheet -->
                <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

                <!-- Customized Bootstrap Stylesheet -->
                <link href="${contextRoot}/css/register.css" rel="stylesheet">
                <!-- Customized Bootstrap Stylesheet -->
                <link href="${contextRoot}/css/style.css" rel="stylesheet">
            </head>
            <body>

            <!-- Topbar Start -->
            <jsp:include page="../layout/navbar.jsp"></jsp:include>
            <!-- Topbar End -->


            <!-- Navbar Start -->
            <div class="container-fluid">
                <div class="row  px-xl-5">
                    <div class="col-lg-9">
                        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
<%--                            <a href="" class="text-decoration-none d-block d-lg-none">--%>
<%--                                <h1 class="m-0 display-5 font-weight-semi-bold"><span--%>
<%--                                        class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>--%>
<%--                            </a>--%>
                            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                                <div class="navbar-nav mr-auto py-0">
                                    <a href="${contextRoot}/member" class="nav-item nav-link ">會員資料查詢</a>
                                    <a href="${contextRoot}/member/order" class="nav-item nav-link">訂單查詢</a>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Navbar End -->


                <!-- Member Start -->
                <div class="container-fluid pt-1">

                    <div class="row px-xl-5">
                        <div class="col-lg-8 border-secondary  border mb-5" style="padding-left: 0; padding-right:0;">
                            <form:form  method="post" modelAttribute="usersubmit">
                                <form:input path="memberId" type="hidden" />
                                <form:input path="password" type="hidden" />

                                <div class="card-header bg-secondary border-0">
                                    <h4 class="font-weight-semi-bold m-0">會員資料</h4>
                                    <span class="Msg">${Msg}</span>
                                </div>

                                <div class="card-body">
                                    <div class="d-flex justify-content-between pt-1 mb-2">
                                        <h6 class=" font-weight-medium">Email</h6>
                                    </div>
                                    <div class="input-group">
                                        <form:input type="text" class="form-control p-4 mb-2" name="email" path="email"
                                            id="email" inputmode="email" autocorrect="off"
                                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required="required"
                                            oninput="setCustomValidity('');"
                                            oninvalid="setCustomValidity('請輸入正確的email 例：abc@gmail.com')" />
                                    </div>
                                    <div class="d-flex justify-content-between pt-1 mb-2">
                                        <h6 class=" font-weight-medium">會員姓名</h6>
                                    </div>
                                    <div class="input-group">
                                        <form:input type="text" class="form-control p-4 mb-2" name="memberName"
                                            path="memberName" id="name" minlength="2" required="required" />
                                    </div>
                                    <div class="d-flex justify-content-between pt-1 mb-2">
                                        <h6 class=" font-weight-medium">會員生日</h6>
                                    </div>
                                     
                                
                                    <div class="" id="sandbox-container">
                                        <form:input type="text" class="form-control p-4 mb-2" placeholder="出生日期" name="birthday"
                                            id="birthday" path="birthday" required="required" inputmode="none" />
                      
                                	</div>
                            
                           
                                    <div class="d-flex justify-content-between pt-1 mb-2">
                                        <h6 class=" font-weight-medium">手機號碼</h6>
                                    </div>
                                    <div class="input-group">
                                        <form:input type="text" class="form-control p-4 mb-4" name="phone" path="phone"
                                            id="phone" inputmode="tel" autocorrect="off" required="required"
                                            maxlength="10" pattern="09\d{2}\d{6}" oninput="setCustomValidity('');"
                                            oninvalid="setCustomValidity('請輸入正確的手機號碼格式：09xxxxxxxx');" />
                                    </div>
                                    <div class="input-group-append">
                                        <input type="submit" class="btn btn-primary" value="送出修改">
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>

                <!-- Member End -->


                <!-- Footer Start -->
                <div class="container-fluid  text-dark mt-5 pt-5 border-top-1">
                    <p class="text-center"><span
                            style="color: rgb(86, 84, 84); font-size: 12px;">Email：chezmoiiiiiii@gmail.com</span></p>

                    <p class="text-center"><span style="color: rgb(86, 84, 84); font-size: 12px;">Service time：Mon - Sun
                            10:00-22:00</span></p>
                </div>
                <div>
                    <!-- Back to Top -->
                    <a href="#" class="btn btn-primary back-to-top" style="margin-right: 0px"><i
                            class="fa fa-angle-double-up"></i></a>
                </div>

                <!-- Footer End -->


                <!-- Back to Top -->
                <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


                <!-- JavaScript Libraries -->
                <!--     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
                <script src="lib/easing/easing.min.js"></script>
                <script src="lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Contact Javascript File -->
                <script src="${contextRoot}/mail/jqBootstrapValidation.min.js"></script>
                <script src="${contextRoot}/mail/contact.js"></script>

                <!-- Template Javascript -->
                <script type="text/javascript" src="${contextRoot}/js/main.js"></script>
                <script type="text/javascript" src="${contextRoot}/js/register.js"></script>
                <script type="text/javascript"
                src="${pageContext.request.contextPath}/datePick/js/bootstrap-datepicker.js"></script>
            <script type="text/javascript"
                src="${pageContext.request.contextPath}/datePick/js/bootstrap-datepicker.zh-TW.min.js"></script>
            <script>
                $('#sandbox-container input').datepicker({
                    format: "yyyy-mm-dd",
                    todayBtn: 'linked',
                    language: "zh-TW",
                    autoclose: true,
                    startDate:"-80y",
                    endDate:"1"
                });
            </script>
            </body>

            </html>