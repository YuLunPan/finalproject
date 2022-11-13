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
    <div class="px-xl-5">
        <nav class=" fixed-top navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0 border">
            <div class="collapse navbar-collapse  justify-content-between border" id="navbarCollapse">
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
                    <a href="<c:url value='/cartAll' />" class="nav-item nav-link"><img src="${contextRoot}/img/cart.png" width="20" height="20"></a>
                    <a href="member.html" class="nav-item nav-link"><img src="${contextRoot}/img/user.png" width="20" height="20"></a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Topbar End -->



    <!-- Navbar Start -->

    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid  mb-0 mt-5">
        <div class="align-items-center justify-content-center" style="min-height: 200px; display: flex;">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">01</h1>
            <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">確認訂購明細
            </h2>
            <h1 class="font-weight-semi-bold text-uppercase mb-3">02</h1>
            <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">填寫訂購資料</h2>
            <h1 class="font-weight-semi-bold text-uppercase mb-3 text-primary">03</h1>
            <h2 class="font-weight-semi-bold text-uppercase mb-3 text-primary" style="margin-right: 1em;">完成訂購</h2>


        </div>
    </div>
    <!-- Page Header End -->


    <!-- Cart Start -->
    <div class="container-fluid pt-3">

        <div class="row px-xl-5 table-responsive mb-5">

            <div class=" px-xl-5 border-0">
                <h3 class="font-weight-semi-bold mb-2">您的訂單已成立</h3>
            </div>
            <div class="row px-xl-5">


                <div class="col-lg-8 border-secondary  border mb-2" style="padding-left: 0; padding-right:0;">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">訂單資料</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between pt-1 mb-2">
                            <h6 class=" font-weight-medium">訂單編號:<c:out value="${Orders.orderId}"/></h6>
                        </div>
                        <div class="d-flex justify-content-between pt-1 mb-2">
                            <h6 class=" font-weight-medium">下單時間:<c:out value="${Orders.orderDate}"/></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card border-secondary border mb-2">
                        <div class="card-header bg-secondary border-0">
                            <h4 class="font-weight-semi-bold m-0">訂單備註</h4>
                        </div>
                        <div class="card-body">
                        <div class="d-flex justify-content-between pt-1 mb-2">
                            <h6 class=" font-weight-medium"><c:out value="${Orders.notes}"/></h6>
                        </div>
                        </div>
                    </div>
                </div>
                <div class=" border-0">
                    <h5 class="font-weight-medium pt-1 mb-2">我們已發送訂單明細至您的電子信箱:</h5>
                    <div class="d-flex justify-content-between pt-1 mb-2">
                        <h6 class=" font-weight-medium">將於確認您的款項後出貨,出貨進度可至<a class="text-primary font-weight-medium"
                                href="orderDetail.html" target="_blank">訂單明細</a></h6>

                        <h6 class="font-weight-medium">查詢</h6>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->
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


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>