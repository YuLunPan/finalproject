<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

            <!-- Libraries Stylesheet -->
            <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

            <!-- Customized Bootstrap Stylesheet -->
            <link href="${contextRoot}/css/style.css" rel="stylesheet">
            </script>

            <!-- jQ -->
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
            </script>


            <style type="text/css">
                #popWindow {
                    width: 508px;
                    height: 508px;
                    background: url(popWindow.png) no-repeat;
                    box-shadow: 5px 5px 10px black;
                    border: 2px gray solid;
                    border-radius: 20px;
                    position: fixed;
                }
            </style>

        </head>

        <body>

            <!-- Topbar Start -->
            <jsp:include page="layout/navbar.jsp"></jsp:include>
            <!-- Topbar End -->

            <div class="col-lg-9 " style="padding-right:0px; padding-left:0px; position: relative ;max-width:auto">
                <div id="header-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="img-fluid" src="${contextRoot}/img/1.jpg" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3 rwdtxt" style="max-width: 100%;">
                                    <h4 class="text-light text-uppercase font-weight-medium "
                                        style="font-size:4em; font-family:Georgia, serif">Look Book
                                    </h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold "
                                        style="font-size:2em; font-family:Georgia, serif;font-style:italic">All from
                                        Korea</h3>
                                    <a href="${contextRoot}/shop" class="btn btn-light py-2 px-3">Shop Now</a>
                                </div>
                            </div>
                        </div>
                        h
                        <div class="carousel-item">
                            <img class="img-fluid" src="${contextRoot}/img/2.jpg" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3 rwdtxt" style="max-width: 100%;">
                                    <h4 class="text-light text-uppercase font-weight-medium "
                                        style="font-size:4em; font-family:Georgia, serif; margin:auto">Look Book
                                    </h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold "
                                        style="font-size:2em; font-family:Georgia, serif;font-style:italic">All from
                                        Korea</h3>
                                    <a href="${contextRoot}/shop" class="btn btn-light py-2 px-3">Shop Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="img-fluid" src="${contextRoot}/img/3.jpg" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3 rwdtxt" style="max-width: 100%;">
                                    <h4 class="text-light text-uppercase font-weight-medium "
                                        style="font-size:4em; font-family:Georgia, serif; margin:auto">Look Book
                                    </h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold "
                                        style="font-size:2em; font-family:Georgia, serif;font-style:italic">All from
                                        Korea</h3>
                                    <a href="${contextRoot}/shop" class="btn btn-light py-2 px-3">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-prev-icon mb-n2"></span>
                        </div>
                    </a>
                    <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-next-icon mb-n2"></span>
                        </div>
                    </a>
                </div>
            </div>


            <!-- Best Selling Products Start -->
            <div class="container-fluid pt-5">
                <div class="text-center" style="padding-top:40px;margin-bottom:20px">
                    <h2 class="section-title px-5"><span class="px-2"
                            style="font-family:Georgia, serif;font-style:italic">Weekly Best</span>
                    </h2>
                </div>
                <div class="row px-xl-5 pb-3" id="BestItem">
                    <%-- <c:forEach var="products" items="${page.content}">--%>
                        <%-- <div class="col-lg-3 col-md-6 col-sm-12 pb-1">--%>
                            <%-- <div class="card product-item border-0 mb-4">--%>
                                <%-- <div
                                    class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                    --%>
                                    <%-- <img class="img-fluid w-100" --%>
                                        <%-- src="http://localhost:8080/Chezmoi/getMainPic/${products.photo.photoId}"
                                            alt="">--%>
                                            <%-- </div>--%>
                                                <%-- <div
                                                    class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                                    --%>
                                                    <%-- <a
                                                        href="${contextRoot}/shop/productDetail?productId=${products.productId}">
                                                        --%>
                                                        <%-- <h6 class="text-truncate mb-3">${products.name}</h6>--%>
                                                            <%-- <div class="d-flex justify-content-center">--%>
                                                                <%-- <h6>${products.price}</h6>--%>
                                                                    <%-- <!-- <h6 class="text-muted ml-2">
                                                                        <del>$1380</del></h6> -->--%>
                                                                        <%-- </div>--%>
                                                                            <%-- </div>--%>
                                                                                <%-- </div>--%>
                                                                                    <%-- </div>--%>
                </div>
                <%-- </c:forEach>--%>
            </div>

            <!-- Best Selling Products End -->


            <!-- Recommended Products Start -->
            <div class="container-fluid pt-5">
                <div class="text-center " style="padding-top:0px;margin-bottom:20px">
                    <h2 class="section-title px-5"><span class="px-2"
                            style="font-family:Georgia, serif;font-style:italic">Recommend !</span>
                    </h2>
                </div>
                <div class="row px-xl-5 pb-3" id="RecommendedItem">
                    <%-- <div class="col-lg-3 col-md-6 col-sm-12 pb-1">--%>
                        <%-- <div class="card product-item border-0 mb-4">--%>
                            <%-- <div
                                class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                --%>
                                <%-- <img class="img-fluid w-100" src="https://img.onl/huL3Xa" alt="">--%>
                                    <%-- </div>--%>
                                        <%-- <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                            --%>
                                            <%-- <h6 class="text-truncate mb-3">最熱賣！女孩金色愛心針織</h6>--%>
                                                <%-- <div class="d-flex justify-content-center">--%>
                                                    <%-- <h6>$1380</h6>--%>
                                                        <%-- <!-- <h6 class="text-muted ml-2"><del>$1380</del></h6>
                                                            -->--%>
                                                            <%-- </div>--%>
                                                                <%-- </div>--%>
                                                                    <%-- </div>--%>
                                                                        <%-- </div>--%>

                </div>
            </div>

            <!-- Pop-up -->
            <div id="popWindow"
                style="background-color:white;z-index:100;position: relative;background:url('${contextRoot}/img/wishTestAd.png') 0 0 repeat; position:relative;">
                <div class="text-right mr-2 mt-2" style="height:3em;">
                    <button class="btn btn-sm btn-primary" id="close" style="border-radius:10px">
                        <i class="fa fa-times"></i></button>
                </div>
                <div class="text-right mr-2 mt-2" style=""><a href="${contextRoot}/wishTest">
                        <button class="btn btn-sm btn-primary" id="close"
                            style="border-radius:10px;position:absolute; left:224px; top:464px;">
                            馬上玩
                        </button>
                    </a>
                </div>
                <!-- 	<div class="ml-3"><img style="width:458px; height:458px;" src="https://img.onl/D6bW2M" /></div> -->
            </div>

            <!-- Footer Start -->
            <jsp:include page="layout/footer.jsp"></jsp:include>
            <!-- Template Javascript -->
            <script src="${contextRoot}/js/bestSellingAjax.js"></script>
            <script src="${contextRoot}/js/RecommendedAjax.js"></script>
            <!-- Pop-up script -->
            <script type="text/javascript">
                function centerHandler() {/*設定置中*/
                    var scrollDist = $(window).scrollTop();/*取得捲動長度*/
                    var myTop = ($(window).height() - $("#popWindow").height()) / 2 + scrollDist;
                    var myLeft = ($(window).width() - $("#popWindow").width()) / 2;
                    $("#popWindow").offset({ top: myTop, left: myLeft });
                }

                centerHandler();
                $(window).scroll(centerHandler);
                $(window).resize(centerHandler);
                $('#close').click(function () {
                    $('#popWindow').css("display", "none");
                })
            </script>

        </body>

        </html>