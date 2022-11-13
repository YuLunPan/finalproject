<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
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
    <link href="${contextRoot}/img/logo.jpg" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextRoot}/css/style.css" rel="stylesheet">

</head>

<body>

    <!-- Topbar Start -->
    <div class="px-xl-5 border">
        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
            <div class="collapse navbar-collapse  justify-content-between" id="navbarCollapse">
                <div class="navbar-nav mr-auto align-items-center py-0">
                    <a href="index.html" class="nav-item nav-link active"><img src="${contextRoot}/img/logo.jpg" width="50"
                            height="50">
                    </a>
                    <a href="shop.html" class="nav-item nav-link">Shop</a>
                    <a href="detail.html" class="nav-item nav-link">Notice</a>
                    <a href="https://www.instagram.com/chezmoiiiiiii/?hl=en" class="nav-item nav-link"
                        target="_blank">Instagram</a>
                    <a href="contact.html" class="nav-item nav-link">Contact</a>
                </div>
                <div class="navbar-nav ml-auto py-0">
                    <a href="Product_set.html" class="nav-item nav-link"><img src="${contextRoot}/img/set.png" width="20"
                            height="20"></a>
                    <a href="wish.html" class="nav-item nav-link"><img src="${contextRoot}/img/wish.png" width="20" height="20"></a>
                    <a href="cart.html" class="nav-item nav-link"><img src="${contextRoot}/img/cart.png" width="20" height="20"></a>
                    <a href="member.html" class="nav-item nav-link"><img src="${contextRoot}/img/user.png" width="20" height="20"></a>
                </div>
               </div>
        </nav>
    </div>
    <!-- Topbar End -->



    <!-- Navbar Start -->
    <div class="container-fluid">
        <div class="row  px-xl-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span
                                class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="member.html" class="nav-item nav-link">會員資料查詢</a>
                            <a href="order.html" class="nav-item nav-link">訂單查詢</a>
                            <a href="messages.html" class="nav-item nav-link">留言板</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->



    <!-- Member Start -->
    <div class="container-fluid pt-1">
        <div class="row px-xl-5 table-responsive mb-5">
            <table class="table table-bordered text-center mb-5">
                <thead class="bg-secondary text-dark">
                    <tr>
                        <th>訂單編號</th>
                        <th>訂單日期</th>
                        <th>訂單狀態</th>
                        <th>付款方式</th>
                        <th>運送方式</th>
                        <th>出貨日期</th>
                        <th>出貨編號</th>
                        <th>備註</th>

                    </tr>
                </thead>
                <tbody class="align-middle">
                	<c:forEach items="${Orders}" var="o">
                    <tr>
                        <td class="align-middle"><a class="text-primary font-weight-medium" href="orderDetail.html">${o.orderId}</a></td>
                        <td class="align-middle">${o.orderDate}</td>
                        <td class="align-middle">${o.orderState}</td>
                        <td class="align-middle">${o.shipping}</td>
                        <td class="align-middle">${o.payment}</td>
                        <td class="align-middle">${o.shipping}</td>
                        <td class="align-middle">${o.shippingCode}</td>
                        <td class="align-middle">${o.notes}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
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
    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top" style="margin-right: 0px"><i class="fa fa-angle-double-up"></i></a>

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