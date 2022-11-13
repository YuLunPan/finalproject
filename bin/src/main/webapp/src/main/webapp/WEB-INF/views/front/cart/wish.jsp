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
                    <a href="index.html" class="nav-item nav-link active"><img src="img/logo.jpg" width="50"
                            height="50">
                    </a>
                    <a href="shop.html" class="nav-item nav-link">Shop</a>
                    <a href="detail.html" class="nav-item nav-link">Notice</a>
                    <a href="https://www.instagram.com/chezmoiiiiiii/?hl=en" class="nav-item nav-link"
                        target="_blank">Instagram</a>
                    <a href="contact.html" class="nav-item nav-link">Contact</a>
                </div>
                <div class="navbar-nav ml-auto py-0">
                    <a href="Product_set.html" class="nav-item nav-link"><img src="img/set.png" width="20"
                            height="20"></a>
                    <a href="wish.html" class="nav-item nav-link"><img src="img/wish.png" width="20" height="20"></a>
                    <a href="cart.html" class="nav-item nav-link"><img src="img/cart.png" width="20" height="20"></a>
                    <a href="member.html" class="nav-item nav-link"><img src="img/user.png" width="20" height="20"></a>
                </div>
              </div>
        </nav>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->

    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid  mb-0 mt-0">
        <div class="align-items-center justify-content-center" style="min-height: 200px; display: flex;">
            <h2 class="font-weight-semi-bold text-uppercase" style="margin-right: 1em;">我的收藏
            </h2>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Cart Start -->
    <div class="container-fluid">
        <div class="row px-xl-5 table-responsive mb-5">
            <table class="table table-bordered text-center mb-0">
                <thead class="bg-secondary text-dark">
                    <tr>
                        <th>產品編號</th>
                        <th>產品名稱</th>
                        <th>顏色</th>
                        <th>尺寸</th>
                        <th>剩餘庫存</th>
                        <th>單價</th>
                        <th>加入購物車</th>
                        <th>刪除</th>
                    </tr>
                </thead>
                <tbody class="align-middle">
                    <tr>
                        <td class="align-middle">100000</td>
                        <td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful
                            Stylish Shirt</td>
                        <td class="align-middle">黑</td>
                        <td class="align-middle">S</td>
                        <td class="align-middle">1</td>
                        <td class="align-middle">$150</td>
                        <td class="align-middle"><button class="btn btn-sm btn-primary"><i
                                    class="fa fa-times"></i></button>
                        </td>
                        <td class="align-middle"><button class="btn btn-sm btn-primary"><i
                                    class="fa fa-times"></i></button>
                        </td>
                    </tr>

                </tbody>
            </table>
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