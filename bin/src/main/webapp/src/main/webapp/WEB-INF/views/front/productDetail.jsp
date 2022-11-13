
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

<!-- productDetail start -->
    <div class="container-detail container ">
        <!-- title -->



        <!-- product descript start-->
        <div class="detailArea border-b1">
            <div class="detail-img-box ">
                <div class="detail-img" >
                    <img src="${contextRoot}\img\product\A07 (1).jpeg" alt="">
                </div>
            </div>
            <div class="detail-info">
                <div class="info-inner">
                    <div class="page-index align-items-center justify-content-center">
                        <a href="${contextRoot}/index" class="align-items-center justify-content-center">Home</a><span> ></span>
                        <a href="${contextRoot}/shop" class="align-items-center justify-content-center">All</a>
                        <span>> </span><a href="shop_TOP.html">Top</a>
                    </div>
                    <h4 class="detail-name" name="product_name">回歸！熱銷鬆餅格紋針織</h4>
                    <!-- price -->
                    <div class="detail-price border-b1">
                        <span class="salePrice" name="salePrice">1580</span>
                        <!-- dis price -->
                        <span class="dis-price" name="discountPrice" login_status="T" discount="F"> 1610
                        </span>
                        <!-- addfavorite  -->
                        <span class="add-wish"><img src="img/icon/addFav_detailpage.png" alt=""></span>
                    </div>

                    <!-- payment & deliver -->
                    <ul class="info-ul border-b1">
                        <li class="info-li"><img src="img/icon/creditcard-icon-.png" alt="">銀行轉帳/ATM</li>
                        <li class="info-li"><img src="img/icon/deliver.png" alt=""> 711店到店</li>
                        <li class="info-li"><img src="" alt=""> 廠商今年大漲價，限定本次連線期間折扣！</li>
                    </ul>
                    <div class="color border-b1">
                        <span>color</span>
                        <span class="color-select">
                            <button class="sele-btn" type="button">cream</button>
                            <button class="sele-btn" type="button">sora</button>
                            <button class="sele-btn" type="button">navy</button>
                        </span>
                    </div>
                    <div class="size border-b1">
                        <span>size</span>
                        <span class="size-select">
                            <button class="sele-btn" type="button">F</button>
                        </span>
                        <span>肩49/胸53/長46</span>
                    </div>
                    <div class="c">
                        <span class="qua-inner">
                            <button class="qua-btn" name="reduce">
                                -
                            </button>
                            <span class="qualitity" >1</span>
                            <button class="qua-btn " name="add">
                                +
                            </button>
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
            <div>
                <span class="detail-desc " id="descript">
                    去年賣最好的針織今年再度回歸，
                </span>
            </div>
            <div>
                <span class="detail-desc " id="descript">
                    如果你想找件超保暖、cp值超高的針織外套，請買吧：）！！
                </span>
            </div>
            <div>
                <span class="detail-desc " id="descript">
                    它可以單穿也可以當外套都非常適合，去年賣到斷貨很多人沒有買到，
                </span>
            </div>
            <div>
                <span class="detail-desc " id="descript">
                    今年早點卡位吧各位～！！
            </div>
            <div>
                <span class="detail-desc " id="descript">
                    黑色最熱銷，棕色特別適合秋天，藍色特別顯白，
            </div>
            <div>
                <span class="detail-desc " id="descript">
                    很多客人去年包色😻
            </div>
            <ul class="detail-img-ul">
                <li>
                    <div class="pro-deta-img">
                        <img src="img/product/0921/A11 (1).JPG" alt="">
                    </div>
                </li>
                <div class="pro-deta-img">
                    <img src="img/product/0921/A11 (2).JPG" alt="">
                </div>
                </li>
                <li>
                    <div class="pro-deta-img">
                        <img src="img/product/0921/A11 (3).JPG" alt="">
                    </div>
                </li>
            </ul>
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