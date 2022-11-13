<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html lang="en">

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


	<link href="${contextRoot}/css/style.css" rel="stylesheet">
    <link href="${contextRoot}/css/admin_style.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->

    <style>
        li,
        ul {
            list-style: none;
            padding: 0%;
        }
    </style>
</head>

<body>
<jsp:include page="../layout/topbar.jsp"></jsp:include>

    <!-- Navbar Start -->
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-3">
             <jsp:include page="../layout/navbar.jsp"></jsp:include>
            <div class="row col-lg-9 justify-content-center pl-0">
            
                <div class="col-lg-3 border-secondary border mb-5 mt-3 mr-3" style="padding-left: 0; padding-right:0;">
				<form:form action="${contextRoot}/Back/addCoupon" method="post" modelAttribute="couponadd">
                    <div class="card-header border bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">折扣碼設定</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between pt-1 mb-2" style="clear:both;">
                            <h6 class=" font-weight-medium" path="couponName" >折扣券名稱</h6>
                        </div>
                        <div class="input-group">
                            <input type="text" class="form-control p-4 mb-2"  name="couponName"  placeholder="歡慶中秋節" required />
                        </div>
                        <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                            <h6 class=" font-weight-medium">折扣券代碼</h6>
                        </div>
                        <div class="input-group">
                            <input type="text" class="form-control p-4 mb-2" placeholder="Chezmoi152" name="couponCode" required />
                        </div>
                        <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                            <h6 class=" font-weight-medium">折扣金額</h6>
                        </div>
                        <div class="input-group">
                            <input type="text" class="form-control p-4 mb-2" placeholder="100" name="discountPrice" required />
                        </div>
                        <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                            <h6 class=" font-weight-medium">折扣期限</h6>
                        </div>
                        <div class="input-group">
                            <input type="text" class="form-control p-4 mb-2" placeholder="2022-9-26 00:00" name="dateStart" required />
                        </div> 
                        <div class="input-group">
                            <input type="text" class="form-control p-4 mb-2" placeholder="2022-11-20 23:59" name="dateEnd" required />
                        </div>
                        <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                            <h6 class=" font-weight-medium">啟用狀態(啟用:ON/未啟用:OFF)</h6>
                        </div>
                        <div class="input-group">
                            <input type="text" class="form-control p-4 mb-2" placeholder="ON/OFF" name="couponState" value="ON" required />
                        </div>
                        <div class="input-group-append pt-4">
                            <button class="btn btn-primary" >新增折扣碼</button>
                        </div>
                    </div>
                </div>
              </form:form>
          
                <div class="col-lg-8 border-secondary  border mb-5 mt-3" style="padding-left: 0; padding-right:0;">
                    <div class="card-header border bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">折扣碼管理</h4>
                    </div>
                    <div class="card-body">
<!--                         <div class="d-flex justify-content-between pt-1 mb-2" style="clear:both;"> -->
<!--                             <h5 class=" font-weight-medium">進行中的折扣活動</h5> -->
<!--                         </div> -->
                        <div class="row table-responsive ml-0 mb-5 p-0">
                            <table class="table table-bordered text-center mb-0">
                                <thead class="bg-secondary text-dark">
                                    <tr>
                                        <th>名稱</th>
                                        <th>代碼</th>
                                        <th>折扣金額</th>
<!--                                         <th>最低消費</th> -->
                                        <th>折扣開始</th>
                                        <th>折扣結束</th>
                                        <th>啟用狀態(啟用:ON/未啟用:OFF)</th>
                                      <th>編輯</th>
                                    </tr>
                                </thead>
					<c:forEach var="workCoupon" items="${page.content}">
                                <tbody class="align-middle">
                                    <tr>
                                          <td class="align-middle">${workCoupon.couponName}</td>
                                        <td class="align-middle">${workCoupon.couponCode}</td>
                                        <td class="align-middle">${workCoupon.discountPrice}</td>
<%--                                         <td class="align-middle">${workCoupon.minimum}</td> --%>
                                        <td class="align-middle">${workCoupon.dateStart}</td>
                                        <td class="align-middle">${workCoupon.dateEnd}</td>
                                        <td class="align-middle">${workCoupon.couponState}</td>
<%--                                         <td class="align-middle"><a onclick="return confirm('確定刪除?')" href="${contextRoot}/Back/deleteCoupon?couponId=${workCoupon.couponId}"><button class="btn btn-sm btn-primary"><i --%>
<!--                                                     class="fa fa-times"></i></button></a> -->
<!--                                         </td> -->
                                        <td class="align-middle"><a href="${contextRoot}/Back/editCoupon?couponId=${workCoupon.couponId}"><button class="btn btn-sm btn-primary"><i
                                                    class="fa fa-times"></i></button></a>
                                            </td>
                                    </tr>

                                </tbody>
                        </c:forEach>
                            </table>
                        <c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
                        
                        <c:choose>
                        	<c:when test="${page.number != pageNumber-1}">
                        		<a href="${contextRoot}/view?p=${pageNumber}">${pageNumber}</a>
                        	</c:when>
                        	
                        	<c:otherwise>
                        		${pageNumber}
                        	</c:otherwise>
                        </c:choose>
                        	
                        </c:forEach>
                        </div>
                    </div>
           
                </div>
            </div>

            <!-- Navbar End -->


            <!-- Cart Start -->

            <!-- Cart End -->


            <!-- Footer Start -->

            <!-- Footer End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


            <!-- JavaScript Libraries -->
            <script src="${contextRoot}/js/jquery-3.6.1.min.js"></script>
<!--             <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
            <script src="${contextRoot}/lib/easing/easing.min.js"></script>
            <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

            <!-- Contact Javascript File -->
            <script src="${contextRoot}/mail/jqBootstrapValidation.min.js"></script>
            <script src="${contextRoot}/mail/contact.js"></script>

            <!-- Template Javascript -->
            <script src="${contextRoot}/js/main.js"></script>
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
            </script>
</body>

</html> 