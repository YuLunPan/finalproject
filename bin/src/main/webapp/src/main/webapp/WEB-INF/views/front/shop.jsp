
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
	<!-- category start -->
	<jsp:include page="layout/category.jsp"></jsp:include>
	<br>
	<!-- accounce start -->
	<jsp:include page="layout/announce.jsp"></jsp:include>
	<br>


	<!-- Shop Start -->
		
	 <div class="container-products align-items-center">
        <ul class="pros-ul justify-content-around align-items-center">
            <!-- Shop Product Start -->
             
          <div class="row px-xl-5 pb-3">
            <c:forEach var="products" items="${page.content}">
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="card product-item border-0 mb-4">
                        <div
                            class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            
                           
                            <img class="img-fluid w-300" src="img/product\A14 (10).jpeg" alt="">
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <a href=""><h6 class="text-truncate mb-3">${products.name}</h6></a>
                            <div class="d-flex justify-content-center">
                                <h6 id="saleprice">${products.price}</h6>
                                <h6 class="text-muted ml-2"><del>$1150</del></h6>


                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fa fa-heart text-primary
                                mr-1"></i>Wishlist</a>
                            <a href="${contextRoot}/shop/addToCart?id=${products.productId}" class="btn btn-sm text-dark p-0"><i
                                    class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                        </div>
                    </div>
                </div>
              </c:forEach>
            </div>      
       </ul>
   </div>
   
<!-- footer頁面 -->
	<jsp:include page="layout/footer.jsp"></jsp:include>



</body>

</html>