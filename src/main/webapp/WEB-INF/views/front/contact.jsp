 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" /> 
   
    
    
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
<title>Chezmoi</title>
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
<!-- jQ -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<jsp:include page="layout/navbar.jsp"></jsp:include>
	<!-- Page Header Start -->
<%--	<div class="container-fluid mb-0 mt-0">--%>
<%--		<div class="margin:auto align-items-center justify-content-center"--%>
<%--			style="min-height: 100px;display: flex;">--%>
<%--			<h2 class="font-weight-medium mr-2">Contact</h2>--%>
<%--		</div>--%>
<%--	</div>--%>
	<!-- Page Header End -->
	<div class="container-fluid mb-0 mt-0 text-center">
		<div class="align-items-center justify-content-center w-100" style="min-height: 100px; display: flex;">
			<h2 class="font-weight-semi-bold text-uppercase" style="">Contact
			</h2>
		</div>
	</div>
	<div>
		<img style="margin: auto; display: block; width:600px" class="w-35"
			src="https://img.onl/pt23FT" alt="">
	</div>

	<!-- Cart Start -->
	<div class="container-fluid border-0 w-100">
		<div class="row px-xl-5 justify-content-center">
			<div class="col-lg-5 border-secondary border-0 mb-5"
				style="margin: 20px; padding-left: 0; padding-right: 0;">

				<div class="card-body bordernocolor">
					<div class="d-flex pt-1 mb-2">
						<h6 class=" font-weight-medium mr-2">
							<img src="https://img.onl/yrK3CD" width="20" height="20"> Instagram:
						</h6>
						<a class="a" href="https://www.instagram.com/chezmoiiiiiii/"
							target="_blank"> chezmoiiiiiii</a>
					</div>
					<div class="d-flex pt-1 mb-2">
						<h6 class=" font-weight-medium mr-2">
							<img src="https://img.onl/WHMaGD" width="20" height="20"> Facebook:
						</h6>
						<a class="a" href="https://www.facebook.com/chezmoiiiiiii"
							target="_blank"> chezmoiiiiiii</a>
					</div>
					<div class="d-flex pt-1 mb-2">
						<h6 class=" font-weight-medium mr-2">
							<img src="https://img.onl/u5bfBN" width="20" height="20"> Shopee:
						</h6>
						<a class="a" href="https://shopee.tw/shine2570" target="_blank">
							chezmoiiiiiii</a>
					</div>
					<div class="d-flex pt-1 mb-2">
						<h6 class=" font-weight-medium mr-2">
							<img src="https://img.onl/PBtKjd" width="20" height="20"> Email:
						</h6>
						<a class="a"> chezmoiiiiiii@gmail.com</a>
					</div>
				</div>
			</div>
		</div>
	</div>

				<!-- Footer Start -->
				<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>