<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                    <link
                        href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
                        rel="stylesheet">

                    <!-- Font Awesome -->
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                        rel="stylesheet">

                    <!-- Libraries Stylesheet -->
                    <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


                    <!-- Customized Bootstrap Stylesheet -->
                    <link href="${contextRoot}/css/back_style.css" rel="stylesheet">

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

                            <div class="col-lg-8 justify-content-center pl-0">

                                <div class="col-lg-10 border-secondary border mb-5 mt-3"
                                    style="padding-left: 0; padding-right:0;">
                                    <div class="card-header border bg-secondary border-0">
                                        <h4 class="font-weight-semi-bold m-0">折扣碼設定</h4>
                                    </div>
                                    <form:form action="${contextRoot}/Back/postEditCoupon" method="post"
                                        modelAttribute="edit">

                                        <form:input type="hidden" path="couponId" />

                                        <div class="card-body">
                                            <div class="d-flex justify-content-between pt-1 mb-2" style="clear:both;">
                                                <h6 class=" font-weight-medium">折扣券名稱</h6>
                                            </div>
                                            <div class="input-group">
                                                <input type="text" class="form-control p-4 mb-2" id="couponName"
                                                    name="couponName" value="${edit.couponName}" required />
                                            </div>
                                            <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                                                <h6 class=" font-weight-medium">折扣券代碼</h6><span>此欄不可編輯</span>
                                            </div>
                                            <div class="input-group">
                                                <input type="text" class="form-control p-4 mb-2" id="couponCode"
                                                    name="couponCode" value="${edit.couponCode}" readonly />
                                            </div>
                                            <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                                                <h6 class=" font-weight-medium">折扣金額</h6>
                                            </div>
                                            <div class="input-group">
                                                <input type="text" class="form-control p-4 mb-2" id="discountPrice"
                                                    name="discountPrice" value="${edit.discountPrice}" required />
                                            </div>
                                            <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                                                <h6 class=" font-weight-medium">折扣期限</h6>
                                            </div>
                                            <div class="input-group">
                                                <input type="text" class="form-control p-4 mb-2"
                                                    placeholder="2022/9/26 00:00" id="dateStart" name="dateStart"
                                                    value="${edit.dateStart}" required /><span id="dateStartsp"></span>
                                            </div>
                                            <div class="input-group">
                                                <input type="text" class="form-control p-4 mb-2"
                                                    placeholder="2022/11/20 23:59" id="dateEnd" name="dateEnd"
                                                    value="${edit.dateEnd}" required /><span id="dateEndsp"></span>
                                            </div>
                                            <div class="d-flex justify-content-between pt-2 mb-2" style="clear:both;">
                                                <h6 class=" font-weight-medium">啟用狀態(啟用:ON/未啟用:OFF)</h6>
                                            </div>
                                            <div class="input-group">
                                                <input type="text" class="form-control p-4 mb-2" id="couponState"
                                                    name="couponState" value="${edit.couponState}" required />
                                            </div>
                                            <div class="input-group-append pt-4">
                                                <input type="submit" class="btn btn-primary" value="更新折扣碼">
                                                <!--                             <button class="btn btn-primary" >新增折扣碼</button> -->
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Back to Top -->
                    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


                    <!-- JavaScript Libraries -->
                    <script src="${contextRoot}/js/jquery-3.6.1.min.js"></script>
                    <!--             <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
                    <script
                        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
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
                    <script>
                        document.getElementById("dateStart").addEventListener("blur", checkName);
                        function checkName() {
                            let theObj = document.getElementById("dateStart");
                            let theObjVal = theObj.value;
                            let idsp = document.getElementById("dateStartsp")
                            let theObjLen = theObj.length;
                            let re = new RegExp("^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}$");
                            let re2 = new RegExp("^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.[0-9]{1}$");
                            if (re.test(theObjVal)) {
                                idsp.innerHTML = "<span style='color:red' /> ok";
                            } else if (re2.test(theObjVal)) {
                                idsp.innerHTML = "<span style='color:red' /> ok";
                            } else {
                                idsp.innerHTML = "<span style='color:red' /> 格式錯誤";
                                alert("折扣開始日期格式錯誤 範例:2022-10-10 00:00");
                            }
                        }
                    </script>

                    <script>
                        document.getElementById("dateEnd").addEventListener("blur", checkName);
                        function checkName() {
                            let theObj = document.getElementById("dateEnd");
                            let theObjVal = theObj.value;
                            let idsp = document.getElementById("dateEndsp")
                            let theObjLen = theObj.length;
                            let re = new RegExp("^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}$");
                            let re2 = new RegExp("^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.[0-9]{1}$");
                            if (re.test(theObjVal)) {
                                idsp.innerHTML = "<span style='color:red' /> ok";
                            } else if (re2.test(theObjVal)) {
                                idsp.innerHTML = "<span style='color:red' /> ok";
                            } else {
                                idsp.innerHTML = "<span style='color:red' /> 格式錯誤";
                                alert("折扣結束日期格式錯誤 範例:2022-10-31 23:59");
                            }
                        }
                    </script>
                </body>

                </html>