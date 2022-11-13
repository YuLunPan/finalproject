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

<!-- jQ -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
<jsp:include page="layout/navbar.jsp"></jsp:include>

 <!-- Page Header Start -->
    <div class="container-fluid mb-0 mt-0 text-center">
        <div class="align-items-center justify-content-center w-100" style="min-height: 100px; display: flex;">
            <h2 class="font-weight-semi-bold text-uppercase" style="">Notice
            </h2>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container-detail border-0 text-center mt-3">
        <blockquote class="wp-block-quote">
            <p class="align-items-center justify-content-center " style="color:rgb(167, 4, 4);margin-right: 1em">
                購物須知請大家先閱讀再購物避免爭議唷🔍</p>
        </blockquote>
        <p style="color:rgb(14, 94, 198)"><strong>[ 金流 ]</strong></p>
        <p><strong><mark style="background-color:rgba(0, 0, 0, 0)"
                    class="has-inline-color has-vivid-cyan-blue-color">1.線上刷卡(全額刷清)</mark></strong>:
            超取<strong>運費統一$60</strong>
        </p>
        <p><strong><mark style="background-color:rgba(0, 0, 0, 0)"
                    class="has-inline-color has-vivid-cyan-blue-color">2.匯款轉帳(部分訂金)</mark></strong>:
            搭配<strong>蝦皮免運</strong>活動下單🦐
        </p>
        <p class="has-text-align-justify">ex.
            訂單總金額$1000,<strong>尾款統一留$300</strong>,訂金即為$700,匯款後會給蝦皮連結下單尾款，<strong>可貨到付款</strong>，蝦皮免運可再下標👌</p>
        <p>匯款完成後 請至訂單留言備註或ig小盒子告知帳號末五碼，若要蝦皮下單也請告知蝦皮ID</p>
        <p style="color:rgb(14, 94, 198)"><strong>[ 物流 ]</strong></p>
        <p>1. 店到店: 711<br>2.蝦皮出貨</p>
        <p>商品皆會仔細檢查、包裝後按單寄出🚚&#8230;</p>
        <p style="color:rgb(14, 94, 198)"><strong>[ Notice ]</strong></p>
        <p>⭕️<strong>斷貨</strong>會為您退款/保留購物金</p>
        <p>⭕️<strong>瑕疵、寄錯商品</strong>會為協助寄回韓國更換，不退款（運費皆由賣方承擔）</p>
        <p class="has-vivid-red-color has-text-color">✔️不提供因個人因素理由問題退貨</p>
        <p>✔️若您收到錯的商品,&nbsp;請在收到商品後的24小時內聯繫我，會立即替您處理，退換貨麻煩在三天內寄回唷</p>
        <p>如果超過時間,&nbsp;則不得退換貨</p>
        <p>✔️線頭、輕微脫線、口袋未開扣（可自行剪開）、商品混線等皆為正常現象，髒污小於2公分 不屬於瑕疵認定範圍，<strong>建議拆封包裹時錄影</strong></p>
        <p id="SE-71042bd3-0b04-4d1f-aa38-2d98ad125153">​✔️大多商品皆有提供詳細尺寸（若沒有提供可先詢問板娘意見）<em>,</em>穿起來會因每個人身形的不同而有所差異</p>
        <p>（根據產品的測量方法，手工測量可能會有1-3公分誤差&nbsp;）</p>
        <p>✔️商品模特顏色可能會因光線或是螢幕顯影有些許差異，皆以實品為準♡</p>
        <p>Have a nice day(❛◡❛✿)!!</p>
    </div>


<!-- Footer Start -->
				<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>