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
		</head>

		<body>
			<div class="px-xl-5">
				<ul id="menubar" style="padding-left: 105px;">
					<li class="dropbtn dropdown"><a href="${contextRoot}/shop/top" class="shop-page ">Top</a>
<!-- 						<div class="dropdown-content"> -->
<!-- 							<a href="#" target="_block">tee</a> <a href="#" target="_block">blouse -->
<!-- 								& shirt</a> <a href="#" target="_block">knit & cardigan</a> -->
<!-- 						</div> -->
					</li>
					<li class="dropbtn dropdown"><a href="${contextRoot}/shop/bottom" class="shop-page">Bottom</a>
<!-- 						<div class="dropdown-content" style="padding-left: 70px"> -->
<!-- 							<a href=" #" target="_block">shorts & skirt</a> <a href="#" target="_block">pants</a> -->

<!-- 						</div> -->
					</li>
					<li><a href="${contextRoot}/shop/outer" class="shop-page">Outer</a></li>
					<li><a href="${contextRoot}/shop/dress" class="shop-page">Dress</a></li>
					<li><a href="${contextRoot}/shop/acc" class="shop-page">Accessories</a></li>
				</ul>
			</div>
		</body>

		</html>