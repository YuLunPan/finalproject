<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>Chezmoi 韓國女裝</title>
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

                <!-- Font Awesome -->
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                    rel="stylesheet">

                <!-- Libraries Stylesheet -->
                <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

                <!-- Customized Bootstrap Stylesheet -->
                <link href="${contextRoot}/css/style.css" rel="stylesheet">
                <!-- jQ -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <!--JavaScript & Jquery-->
                <script src="https://code.jquery.com/jquery-3.6.1.js"
                        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
                <script src="${contextRoot}/lib/easing/easing.min.js"></script>
                <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

            </head>

            <body>
              <!-- Topbar Start -->
			<jsp:include page="../layout/navbar.jsp"></jsp:include>
			<!-- Topbar End -->

            
                <!-- Page Header Start -->
                <div class="container-fluid  mb-0 mt-5">
       			 <div class="align-items-center justify-content-center" style="min-height: 500px; display: flex;">
                        <div class="row">
                         <div class="col-lg-12 text-center">
                                <h1 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">
                                    Chezmoi心理測驗小遊戲</h1>
                            </div>
                            <div class="col-lg-12 text-center">
                                <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">
                                    妳是哪一種風格的韓系美女?</h2>
                            </div>
                            <div class="col-lg-12 text-center">
                                <h4 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">
                                    測出最適合妳的風格，並獲得優惠折扣碼</h4>
                            </div>
                            <div class="col-lg-12 text-center">
                                <a style="text-decoration: none;" href="${contextRoot}/wishTest/question">
                                    <h2 class="text-primary font-weight-semi-bold text-uppercase mb-3"
                                        style="margin-right: 1em;">
                                        按此開始測驗</h2>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Page Header End -->




                <!-- Footer Start -->
                <jsp:include page="../layout/footer.jsp"></jsp:include>
                <!-- Footer End -->


                <!-- Back to Top -->

                <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

                <!--JavaScript & Jquery-->
                <script src="https://code.jquery.com/jquery-3.6.1.js"
                    integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
                <script src="${contextRoot}/lib/easing/easing.min.js"></script>
                <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Template Javascript -->
                <script src="${contextRoot}/js/main.js" type="text/javascript"></script>

                <!-- Contact Jquery File -->
                <script src="${contextRoot}/js/jquery-3.6.1.min.js" type="text/javascript"></script>

                <!-- Contact Javascript File -->
                <script src="${contextRoot}/mail/jqBootstrapValidation.min.js" type="text/javascript"></script>
                <script src="${contextRoot}/mail/contact.js" type="text/javascript"></script>

            </body>

            </html>