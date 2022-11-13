
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<!-- Favicon -->
<link href="https://img.onl/fUrHvw" rel="icon">

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
	<jsp:include page="layout/navbar.jsp"></jsp:include>
	<br>
	<!-- 	<!-- category start -->
	<%-- 	<jsp:include page="layout/category.jsp"></jsp:include> --%>
	<!-- 	<br> -->
	<!-- accounce start -->
	<jsp:include page="layout/announce.jsp"></jsp:include>
	<br>

	<!-- category start -->
	<jsp:include page="layout/category.jsp"></jsp:include>
	<br>
	<!-- productDetail start -->

	<div class="container-detail container-detailproduct " > 

		<!-- title -->
		<!-- product descript start-->
		<div class="detailArea border-b1" style="width:900px; padding-bottom:70px; margin:auto">
			<div class="detail-img-box ">
				<div class="detail-img" ">
					<img src="http://localhost:8080/Chezmoi/getMainPic/${Product.photo.photoId}" alt="" style="margin:auto;style="height: 350px; weight:auto">
				</div>
			</div>
			<div class="detail-info">
				<div class="info-inner">
					<div class="page-index align-items-center justify-content-center">
						<a href="${contextRoot}/index"
							class="align-items-center justify-content-center">Home</a><span>
							></span> <a href="${contextRoot}/shop"
							class="align-items-center justify-content-center">All</a> <span>>
						</span><a href="${contextRoot}/shop/${Product.category}">${Product.category}</a>
					</div>
					<h4 class="detail-name" name="product_name">${Product.name}</h4>
					<!-- price -->
					<div class="detail-price border-b1">
						<span class="salePrice" name="salePrice">${Product.price}</span>
						<!-- dis price -->
						<!-- 						<span class="dis-price" name="discountPrice" login_status="T" -->
						<!-- 							discount="F"> 1610 </span> -->
						<!-- addfavorite  -->
<!-- 						<span class="add-wish"><img -->
<!-- 							src="img/icon/addFav_detailpage.png" alt=""></span> -->
					</div>

					<!-- payment & deliver -->
					<!--                     <ul class="info-ul border-b1"> -->
					<!--                         <li class="info-li"><img src="img/icon/creditcard-icon-.png" alt="">銀行轉帳/ATM</li> -->
					<!--                         <li class="info-li"><img src="img/icon/deliver.png" alt=""> 711店到店</li> -->
					<!--                         <li class="info-li"><img src="" alt=""> 廠商今年大漲價，限定本次連線期間折扣！</li> -->
					<!--                     </ul> -->
					<div class="color border-b1">

						<span>color</span>
													<c:forEach var="Product" items="${productSeries}">
						<span class="color-select">
							<button class="sele-btn" type="button">${Product.color}</button>
							<!-- 							<button class="sele-btn" type="button">sora</button> -->
							<!-- 							<button class="sele-btn" type="button">navy</button> -->
						</span>
												</c:forEach>
					</div>
					<div class="size border-b1">

						<span>size</span>
						<c:forEach var="Product" items="${productSeries}">
							<span class="size-select">
								<button class="sele-btn" type="button">${Product.size}</button>
								<!-- 														</span> <span>肩49/胸53/長46</span> -->
							</span>
						</c:forEach>
					</div>
					<div class="c">
						<span class="qua-inner">
							<button class="qua-btn" name="reduce">-</button> <span
							class="qualitity">1</span>
							<button class="qua-btn " name="add">+</button>
						</span>

					</div>
					<div class="addTo">
						<div class="add-inner">
							<button class="add-btn1 add-btn-text">Add Cart</button>
							<button class="add-btn2 add-btn-text">BUY NOW</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="pro-detail justify-content-center">
			<div class="pro-deta-title">
				<span>Product Details</span>
			</div>
			<div style="width:650px; text-align; margin:auto">
				<span class="detail-desc " id="descript">
					${Product.descript.text} </span>
			</div>
			<div>
			<p>
				<img class="img-fluid w-300" style="width:60%; text-align; margin:auto"
					src="http://localhost:8080/Chezmoi/getPic1/${Product.photo.photoId}"></p>
					<br>
			<p>

				<img class="img-fluid w-300" style="width:60%; text-align; margin:auto"
					src="http://localhost:8080/Chezmoi/getPic2/${Product.photo.photoId}"></p>
					<br>
			<p>
				<img class="img-fluid w-300"
					src="http://localhost:8080/Chezmoi/getPic3/${Product.photo.photoId}"></p>
					<br>
			<p>
				<img class="img-fluid w-300"
					src="http://localhost:8080/Chezmoi/getPic4/${Product.photo.photoId}"></p>
					<br>
			</div>


			
		</div>


		<!-- product descript end-->



		<!-- product picture and more strat -->

		<!-- product picture and more end -->




	</div>

	<!-- productDetail end -->


	<!-- Footer Start -->
	<jsp:include page="layout/footer.jsp"></jsp:include>

</body>
</html>