<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
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
			<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

			<!-- Libraries Stylesheet -->
			<link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

			<!-- Customized Bootstrap Stylesheet -->
			<link href="${contextRoot}/css/style.css" rel="stylesheet">
			<style>
				.cartQuantity {
					background-color: black;
					width: 1em;
					height: 1em;
					border-radius: 50%;
					display: flex;
					justify-content: center;
					align-items: center;
					right: -9px;
					top: -9px;
				}

				.relative1 {
					position: relative;
				}

				.relative2 {
					position: relative;
					top: 10px;
					left: -18px;
				}
			</style>
		</head>

		<body>
			<!-- Topbar Start -->
			<div class="px-xl-5 border-secondary border-bottom">
				<nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">

					<div class="collapse navbar-collapse  justify-content-between" id="navbarCollapse">
						<div class="navbar-nav mr-auto align-items-center py-0" style="padding-top: 5px">
							<a href="${contextRoot}/" class="nav-item nav-link active"><img src="https://img.onl/fUrHvw"
									width="50" height="50"> </a> <a href="${contextRoot}/shop"
								class="nav-item nav-link">Shop</a> <a href="${contextRoot}/notice"
								class="nav-item nav-link">Notice</a> <a
								href="https://www.instagram.com/chezmoiiiiiii/?hl=en" class="nav-item nav-link"
								target="_blank">Instagram</a> <a href="${contextRoot}/contact"
								class="nav-item nav-link">Contact</a>
						</div>
						<div class="navbar-nav ml-auto py-0">
							<a href="Product_set.html" class="nav-item nav-link"><img src="https://img.onl/QpBCS"
									width="20" height="20"></a> 
							<a href="${contextRoot}/wishTest" class="nav-item nav-link"><img
									src="https://img.onl/n7YQO0" width="20" height="20"></a>
							<a href="${contextRoot}/cartAll" class="nav-item nav-link relative1"><img
									src="https://img.onl/Vzb1us" width="20" height="20"></a>
							<span class="cartQuantity text-white relative2">0</span>
							<a href="member.html" class="nav-item nav-link"><img src="https://img.onl/NzNslP" width="20"
									height="20"></a>
						</div>
					</div>
				</nav>
			</div>
		</body>

		</html>