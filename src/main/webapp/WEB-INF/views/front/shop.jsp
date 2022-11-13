<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
          rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextRoot}/css/style.css" rel="stylesheet">

    <!-- jQ -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
<!-- Topbar Start -->
<jsp:include page="layout/navbar.jsp"></jsp:include>

<br>
<!-- accounce start -->
<%--<jsp:include page="layout/announce.jsp"></jsp:include>--%>
<br>

<!-- Shop Product Start -->
<div class="container-products align-items-center">
    <ul class="pros-ul justify-content-around align-items-center">


        <div class="row px-xl-5 pb-3" id="tbody">
            <c:forEach var="products" items="${page.content}">
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1" style="padding-left: 20px; padding-right: 20px">
                    <div class="card product-item border-0 mb-4 align-items-center">
                        <div
                                class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-300"
                                 src="http://localhost:8080/Chezmoi/getMainPic/${products.photo.photoId}"

                                 style="width: 500px;height:auto" alt="">
                        </div>
                        <div
                                class="card-body border-left border-right text-center p-0 pt-4 pb-3 w-100" style="display:inline;">
                            <div style="height: 3rem">
                                <a class="h6" href="${contextRoot}/shop/productDetail?series=${products.series}">
                                        ${products.name}
                                </a>
                            </div>

                            <div
                                    class="d-flex justify-content-center" style="margin-top: 1rem">
                                <h6 id="saleprice">
                                    $${products.price}</h6>
                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>

        </div>
    </ul>
</div>

<!-- 換頁功能-->
<div class="pageNumberhover" id="pageNumber">
    <c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
        <c:choose>
            <c:when test="${page.number !=pageNumber-1}">
                <a href="${contextRoot}/shop?p=${pageNumber}">${pageNumber}</a>

            </c:when>
            <c:otherwise>${pageNumber}</c:otherwise>

        </c:choose>

    </c:forEach>
</div>

<!-- footer頁面 -->
<jsp:include page="layout/footer.jsp"></jsp:include>

<!-- Template Javascript -->
<%--<script src="${contextRoot}/js/shopAjax.js"></script>--%>

</body>

</html>