<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Chezmoi 後台管理中心</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="${contextRoot}/img/logo.jpg" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextRoot}/css/back_style.css" rel="stylesheet">

    <style>
        li,
        ul {
            list-style: none;
            padding: 0;
        }

        li,
        ul {
            list-style: none;
        }

    </style>
</head>
<body>
    <!-- Topbar  -->
      <jsp:include page="../layout/topbar.jsp"></jsp:include>


    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-3">
             <!-- Navbar  -->
           <jsp:include page="../layout/navbar.jsp"></jsp:include>
            
            <div class="col-lg-9"> 
              <form action="${contextRoot}/Back/MyProduct/edit" method="POST" modelAttribute="product" enctype="multipart/form-data" class="border-0">
                <div class="col-lg-12 border-secondary border mb-5 mt-3" style="padding-left: 0; padding-right:0;">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">修改商品</h4>
                    </div>

                    
                    <div class="card-body">
                            <div class="d-flex pt-1 mb-2 mt-2 align-items-center ">
                                <h6 class=" font-weight-medium">商品編號:</h6>
                                <span class="ml-2 mb-2">${product.productId}</span>
                                <input type="hidden" name="productId" value="${product.productId}"/>
                            </div>

	                        <div class="d-flex justify-content-between pt-1 mb-2">
	                            <h6 class=" font-weight-medium">商品圖片</h6>
	                        </div>
	
	                        <div>
	                            <input  type="file" name="mainProduct_pic"/><label class="title">主要商品圖片</label>
	                        </div>
	                        <div>
	                            <input type="file" name="fit_pic"/><label class="title">品牌圖片</label>
	                        </div>
	                        <div>
	                            <input  type="file" name="detail_pic" multiple/><label class="title" >其他圖片</label>
	                        </div>             

                        <div class="d-flex pt-1 mb-2 mt-2 align-items-center ">
                            <h6 class=" font-weight-medium">類別:</h6>
                            <span class="ml-2 mb-2">${product.category}</span>
                            <input type="hidden" name="category" value="${product.category}"/>
                        </div>
                        
                           
                        
                        <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                            <h6 class=" font-weight-medium">商品名稱</h6>
                        </div>
                        <div class="input-group">
                            <input  type="text" class="form-control p-4 mb-2" name="name" value="${product.name}" />
                        </div>
                        
                        <div class="d-flex justify-content-between pt-1 mb-2" >
                            <h6 class=" font-weight-medium" >商品描述</h6>
                        </div>
                        <div class="input-group">
                            <textarea name="descriptText" type="text" class="form-control p-4">${product.descript.text}</textarea>
                            <input type="hidden" name="descId" value="${product.descript.descriptId}"/>
                        </div> 

                    
                </div>

                <div class="col-lg-12 border-secondary border mb-5" style="padding-left: 0; padding-right:0;">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">商品資訊</h4>
                    </div>

                    <div class="card-body">
                        <div class="d-flex justify-content-between pt-1 mb-2">
                            <h6 class=" font-weight-medium">尺寸</h6>
                        </div>
                        <div class="size">
                            <input type="radio" name="size" value="S"> S     
                            <input type="radio" name="size" value="M"> M
                            <input type="radio" name="size" value="L"> L
                            <input type="radio" name="size" value="XL"> XL
                            <input type="radio" name="size" value="F"> F
                            <input type="hidden" id="siz" value="${product.size}">
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="d-flex justify-content-between pt-1 mb-2">
                            <h6 class=" font-weight-medium">顏色</h6>
                           <span><input value="addColor" type="button"></span>
                        </div>
                        <div class="color">
                            <input type="radio" name="color" value="Cream">Cream
                            <input type="radio" name="color" value="Pink">Pink
                            <input type="radio" name="color" value="Blue">Blue
                            <input type="radio" name="color" value="Black">Black
                            <input type="radio" name="color" value="White">White
                            <input type="radio" name="color" value="Gray">Gray
                            <input type="radio" name="color" value="Green">Green
                            <input type="radio" name="color" value="Oatmeal">Oatmeal
                            <input type="radio" name="color" value="Navy">Navy
                            <input type="radio" name="color" value="Brown">Brown
                            <input type="radio" name="color" value="Beige">Beige
                            <input type="radio" name="color" value="Ivory">Ivory
                            <input type="radio" name="color" value="Sora">Sora
                            <input type="radio" name="color" value="Mint">Mint
                            <input type="radio" name="color" value="Purple">Purple
                            <input type="hidden" id="col" value="${product.color}">
                    	</div>

	                    <div class="card-body">
	                        <div class="d-flex justify-content-between pt-1 mb-2">
	                            <h6 class=" font-weight-medium">商品價格</h6>
	                        </div>
	                        <div class="input-group">
	                            <input type="number" name="price" class="form-control p-4 mb-2" value="${product.price}" />
	                        </div>
	                    </div>
                	</div>
                    <div class="card-body">
                        <div class="d-flex align-content-center ">
                            <h5 class=" font-weight-medium">立即上架</h5><br>
                            <div class="align-content-center ml-1">
                                <input type="radio" name="state" value="ON" > ON
                                <input type="radio" name="state" value="OFF"> OFF
                                <input type="hidden" id="state" value="${product.productState}">
                            </div>
                        </div>
                    </div>
	                <div class="creat">
	                    <input type="submit" value="修改商品">

	                </div>
               	</div> 
               </div> 
              </form>
          </div>
		 
        </div>
   </div>
       <!--error msg hidden-->
    <c:if test="${param.msg!='' && !(empty param.msg) }"><script>confirm("${param.get("msg")}");</script></c:if>

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="${contextRoot}/js/jquery-3.6.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="${contextRoot}/lib/easing/easing.min.js"></script>
        <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="${contextRoot}/mail/jqBootstrapValidation.min.js"></script>

        <!-- Template Javascript -->
       
        <script src="${contextRoot}/js/main.js"></script>
        <script src="${contextRoot}/js/getProductAjax.js"></script>
        <script>
            $(document).ready(function () {
                $('.menu>li>a').click(function (e) {
                    e.preventDefault();
                    //點選到的.menu>li>a顯示裡面的.inmenu 
                    $(this).siblings('.inmenu').slideDown().parent().siblings().find('.inmenu').slideUp();
                    //點選到的.menu>li>a 顯示動態active
                    $(this).addClass('active').parent().siblings().find('a').removeClass('active');
                });
            });
            $(function () {
                let color = $("#col").val();
                $("input:radio[name='color'][value="+color+"]").attr("checked",true);
                let size = $("#siz").val();
                $("input:radio[name='size'][value="+size+"]").attr("checked",true);
                let state = $("#state").val();
                $("input:radio[name='state'][value="+state+"]").attr("checked",true);
            });
        </script>
</body>
</html>