<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>Chezmoi 韓國女裝</title>
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
                <!--JavaScript & Jquery-->
                <script src="https://code.jquery.com/jquery-3.6.1.js"
                        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
                <script src="${contextRoot}/lib/easing/easing.min.js"></script>
                <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

            </head>

            <body>

                <!-- Topbar Start -->
                <jsp:include page="../layout/navbar.jsp"></jsp:include>
                <!-- Topbar End -->

                <!-- Page Header Start -->
                <div class="container-fluid">
                    <div class="align-items-center justify-content-center" style="min-height: 500px;">
                        <div class="row question1 mt-5">
                            <div class="col-lg-12 text-center">
                                <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">
                                    Q1:偶然路過一間香水店，妳會選擇買哪一種香味?</h2>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q1" value="4">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        改天有機會再買吧</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q1" value="1">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        小蒼蘭英國梨</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q1" value="5">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        粉紅甜蜜玫瑰</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q1" value="2">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        尼羅河田園香</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q1" value="3">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        蘿莉塔魔幻蘋果</h4>
                                </button>
                            </div>
                        </div>
                        <div class="row question2 mt-5" style="display: none;">
                            <div class="col-lg-12 text-center">
                                <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">
                                    Q2:早上剛起床，來一杯?</h2>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q2" value="5">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        香甜的熱可可</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q2" value="2">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        法式熱奶茶</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q2" value="4">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        還是不喝了吧</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q2" value="3">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        玫瑰荔枝醋</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q2" value="1">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        冰美式咖啡</h4>
                                </button>
                            </div>
                        </div>
                        <div class="row question3 mt-5" style="display: none;">
                            <div class="col-lg-12 text-center">
                                <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">
                                    Q3:愉快地跟朋友出門逛街，沒想到卻遇到前男友，妳會?</h2>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q3" value="5">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        大聲炫耀新男友</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q3" value="1">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        揮手輕聲打招呼</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q3" value="4">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        裝作不認識路過</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q3" value="3">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        覺得他已經配不上自己</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q3" value="2">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        心中燃起曾經的回憶</h4>
                                </button>
                            </div>
                        </div>
                        <div class="row question4 mt-5" style="display: none;">
                            <div class="col-lg-12 text-center">
                                <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">
                                    Q4:妳最喜歡的民宿風格是?</h2>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q4" value="1">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        牧草清香莊園</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q4" value="3">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        華麗花園城堡</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q4" value="2">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        典雅別緻飯店</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q4" value="5">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        粉紅少女民宿</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q4" value="4">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        解憂包棟民宿</h4>
                                </button>
                            </div>
                        </div>
                        <div class="row question5 mt-5" style="display: none;">
                            <div class="col-lg-12 text-center">
                                <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">
                                    Q5:妳認為別人對妳的第一印象是?</h2>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q5" value="1">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        溫柔婉約的淑女</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q5" value="4">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        居家賢慧的美女</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q5" value="2">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        保守純樸的少女</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q5" value="3">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        倍受寵愛的少女</h4>
                                </button>
                            </div>
                            <div class="col-lg-12 text-center mb-3">
                                <button class="btn btn-sm btn-primary q5" value="5">
                                    <h4 class="font-weight-semi-bold" style="margin-bottom: 0;">
                                        熱戀中的小女孩</h4>
                                </button>
                            </div>
                        </div>
                         <c:forEach items="${Products}" var="p" begin="0" end="0">
                       		 <div class="row result mt-4" id="1" style="display: none;">
	                            <div class="col-lg-12 text-center">
	                                <h3 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳是「溫柔小姊姊」風格的韓系美女</h3>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳的魅力在於氣質出眾、待人溫和，談吐優雅又通情達理!</h4>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                               		 <a class="a text-primary" href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                    	推薦妳這件${p.name}</a></h4>
	                                <a href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                <img src="http://localhost:8080/Chezmoi/getMainPic/${p.photo.photoId}" style="width: 15em;">
	                                </a>
	                            </div>
                    		</div>
                        </c:forEach>   
                         <c:forEach items="${Products}" var="p" begin="1" end="1">
                       		 <div class="row result mt-4" id="2" style="display: none;">
	                            <div class="col-lg-12 text-center">
	                                <h3 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳是「浪漫復古」風格的韓系美女</h3>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳的魅力在於氣質出眾，且自帶女人味!</h4>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                               		 <a class="a text-primary" href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                    	推薦妳這件${p.name}</a></h4>
	                                <a href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                <img src="http://localhost:8080/Chezmoi/getMainPic/${p.photo.photoId}" style="width: 15em;">
	                                </a>
	                            </div>
                    		</div>
                        </c:forEach>   
                         <c:forEach items="${Products}" var="p" begin="2" end="2">
                       		 <div class="row result mt-4" id="3" style="display: none;">
	                            <div class="col-lg-12 text-center">
	                                <h3 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳是「白雪公主」風格的韓系美女</h3>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳的魅力在於活潑可愛，讓人想好好疼愛妳!</h4>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                               		 <a class="a text-primary" href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                    	推薦妳這件${p.name}</a></h4>
	                                <a href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                <img src="http://localhost:8080/Chezmoi/getMainPic/${p.photo.photoId}" style="width: 15em;">
	                                </a>
	                            </div>
                    		</div>
                        </c:forEach>   
                         <c:forEach items="${Products}" var="p" begin="3" end="3">
                       		 <div class="row result mt-4" id="4" style="display: none;">
	                            <div class="col-lg-12 text-center">
	                                <h3 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳是「慵懶美人」風格的韓系美女</h3>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳的魅力在於專情堅定，讓另一半很有安全感喔!</h4>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                               		 <a class="a text-primary" href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                    	推薦妳這件${p.name}</a></h4>
	                                <a href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                <img src="http://localhost:8080/Chezmoi/getMainPic/${p.photo.photoId}" style="width: 15em;">
	                                </a>
	                            </div>
                    		</div>
                        </c:forEach>   
                         <c:forEach items="${Products}" var="p" begin="4" end="4">
                       		 <div class="row result mt-4" id="5" style="display: none;">
	                            <div class="col-lg-12 text-center">
	                                <h3 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳是「戀愛中」的韓系美女</h3>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                                妳的魅力在於自信且充滿熱情，戀愛中的女人最美麗!</h4>
	                                <h4 class="font-weight-semi-bold text-uppercase mb-2" style="margin-right: 1em;">
	                               		 <a class="a text-primary" href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                    	推薦妳這件${p.name}</a></h4>
	                                <a href="${contextRoot}/shop/productDetail?series=${p.series}">
	                                <img src="http://localhost:8080/Chezmoi/getMainPic/${p.photo.photoId}" style="width: 15em;">
	                                </a>
	                            </div>
                    		</div>
                        </c:forEach>   
                       		 <div class="col-lg-12 text-center" id="showCoupon">
	                       		  <h5 class="font-weight-semi-bold mt-2 mb-1 text-primary" id="coupon" style="margin-bottom: 0;">Chezmoiiiiiwish</h5>
		                          <button class="btn btn-sm btn-primary"  id="copyCoupon">
	                              <h6 class="font-weight-semi-bold" id="coupon" style="margin-bottom: 0;">按一下複製折扣碼</h6>
	                              </button>
                       		 </div>
                </div>
                </div>
                <!-- Page Header End -->

                <!-- Footer Start -->
                 <jsp:include page="../layout/footer.jsp"></jsp:include>
                <!-- Footer End -->


                <!-- Back to Top -->

                <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

                <!--JavaScript & Jquery-->
                <script src="https://code.jquery.com/jquery-3.6.1.js"
                    integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
                <script src="${contextRoot}/lib/easing/easing.min.js"></script>
                <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Template Javascript -->
                <script src="${contextRoot}/js/main.js" type="text/javascript"></script>

                <!-- Contact Jquery File -->
                <script src="${contextRoot}/js/jquery-3.6.1.min.js" type="text/javascript"></script>

                <!-- Contact Javascript File -->
                <script src="${contextRoot}/mail/jqBootstrapValidation.min.js" type="text/javascript"></script>
                <script src="${contextRoot}/mail/contact.js" type="text/javascript"></script>
                <script type="text/javascript">
                $(document).ready(function () {
                	$('#showCoupon').css("display", "none");
                })
                    $('.q1').click(function () {
                        $('.question1').css("display", "none");
                        $('.question2').css("display", "block");
                    })
                    $('.q2').click(function () {
                        $('.question2').css("display", "none");
                        $('.question3').css("display", "block");
                    })
                    $('.q3').click(function () {
                        $('.question3').css("display", "none");
                        $('.question4').css("display", "block");
                    })
                    $('.q4').click(function () {
                        $('.question4').css("display", "none");
                        $('.question5').css("display", "block");
                    })
                    $('.q5').click(function () {
                    	choose5 = $(this).val();
                        $('.question4').css("display", "none");
                        $('.question5').css("display", "block");
                        
	                    if(choose5 == 1){
	                    	$('.question5').css("display", "none");
	                    	$('#1').css("display","block");
	                    	$('#showCoupon').css("display", "block");
	                    	
	                    }else if(choose5 == 2){
	                    	$('.question5').css("display", "none");
	                    	$('#2').css("display","block");
	                    	$('#showCoupon').css("display", "block");
	                    	
	                    }else if(choose5 == 3){
	                    	$('.question5').css("display", "none");
	                    	$('#3').css("display","block");
	                    	$('#showCoupon').css("display", "block");
	                    	
	                    }else if(choose5 == 4){
	                    	$('.question5').css("display", "none");
	                    	$('#4').css("display","block");
	                    	$('#showCoupon').css("display", "block");
	                    	
	                    }else if(choose5 == 5){
	                    	$('.question5').css("display", "none");
	                    	$('#5').css("display","block");
	                    	$('#showCoupon').css("display", "block");
	                    }
                    })
                  //複製文字
   			     const select = (DOM) => document.querySelector(DOM);
   			     select('#copyCoupon').addEventListener('click', (e) => {
   				     const range = document.createRange();
   	                 const texts = select('#coupon');
   	                 range.selectNode(texts);
   	                 const selection = window.getSelection();
   	                 selection.addRange(range);
 	                     document.execCommand("copy");
  	                     alert("copy");
   			     })
	                     
                </script>

            </body>

            </html>