<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="${contextRoot}/img/logo.jpg" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">

    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css"
          rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextRoot}/css/style.css" rel="stylesheet">
</head>
<body>
<!-- Topbar Start -->
<div class="px-xl-5">
    <nav
            class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">

        <div class="collapse navbar-collapse  justify-content-between"
             id="navbarCollapse">
            <div class="navbar-nav mr-auto align-items-center py-0">
                <a href="${contextRoot}/index" class="nav-item nav-link active"><img
                        src="https://i.imgur.com/11vzfsu.jpg" width="50" height="50"> </a>
                <a href="${contextRoot}/shop" class="nav-item nav-link">Shop</a> <a
                    href="${contextRoot}/notice" class="nav-item nav-link">Notice</a> <a
                    href="https://www.instagram.com/chezmoiiiiiii/?hl=en"
                    class="nav-item nav-link" target="_blank">Instagram</a> <a
                    href="${contextRoot}/contact" class="nav-item nav-link">Contact</a>
            </div>
            <div class="navbar-nav ml-auto py-0">
                <a href="Product_set.html" class="nav-item nav-link">
                    <img src="${contextRoot}/img/set.png" width="20" height="20"></a>
                <a href="wish.html" class="nav-item nav-link">
                    <img src="${contextRoot}/img/wish.png" width="20" height="20"></a>
                <a href="${contextRoot}/cartAll" class="nav-item nav-link">
                    <img src="${contextRoot}/img/cart.png" width="20" height="20"></a>
                <a href="member.html" class="nav-item nav-link">
                    <img src="${contextRoot}/img/user.png" width="20" height="20"></a>
            </div>
        </div>
    </nav>
</div>
</body>
</html>