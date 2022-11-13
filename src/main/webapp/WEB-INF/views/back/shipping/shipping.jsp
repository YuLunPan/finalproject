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
                <!-- Topbar Start -->
                <jsp:include page="../layout/topbar.jsp"></jsp:include>
                <div class="container-fluid mb-5">
                    <div class="row border-top px-xl-3">
                        <!-- Navbar Start -->
                        <jsp:include page="../layout/navbar.jsp"></jsp:include>
                        <div class="col-lg-8 pt-3">
                            <div class="container-fluid pt-1">
                                <div class="d-flex">
                                    <h2 class="font-weight-semi-bold mr-3">物流管理</h2>
                                </div>
                                <div class="row col-lg-7 mr-3">
                                    <form:form action="${contextRoot}/back/shipping" method="post"
                                        modelAttribute="Shipping">
                                        <table class=" table table-bordered text-center">
                                            <thead class="bg-secondary text-dark">

                                                <tr>
                                                    <th>id</th>
                                                    <th>方式</th>
                                                    <th>運費</th>
                                                </tr>
                                            </thead>
                                            <tbody class="align-middle">
                                                <tr>
                                                    <td class="align-middle">自動生成</td>
                                                    <td class="align-middle">
                                                        <form:input path="shippingWay" id="way" type="text" />
                                                    </td>
                                                    <td class="align-middle">
                                                        <form:input path="shippingFee" id="fee" type="text"
                                                            style="width: 2em;" />
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="align-items-center col-lg-12 justify-content-center mb-3 pl-0">
                                            <button type="submit" class="btn btn-primary" id="add">新建</button>
                                            <span class="ml-5 text-primary" id="waySpan"></span>
                                            <span class="ml-5 text-primary" id="feeSpan"></span>
                                        </div>
                                    </form:form>
                                </div>
                                <table class="col-lg-9 table table-bordered text-center">
                                    <thead class="bg-secondary text-dark">
                                        <tr>
                                            <th>id</th>
                                            <th>方式</th>
                                            <th>運費</th>
                                            <th>啟用</th>
                                            <th>修改</th>
                                        </tr>
                                    </thead>
                                    <tbody class="align-middle">
                                        <c:forEach items="${Shippings}" var="s">
                                            <tr>
                                                <td class="align-middle">${s.shippingId}</td>
                                                <td class="align-middle">${s.shippingWay}</td>
                                                <td class="align-middle">${s.shippingFee}</td>
                                                <td class="align-middle">${s.shippingState}</td>
                                                <td><a href="${contextRoot}/back/updateShipping?id=${s.shippingId}"
                                                        class="btn btn-primary">修改</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


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
                    //判斷是否新建
                    $('#add').click(function () {
                        var yes = confirm('確定要新建嗎?');
                        let wayText = $('#waySpan').text();
                        let feeText = $('#feeSpan').text();
                        if (yes) {
                            if (wayText == "" || feeText == "") {
                                window.event.returnValue = false;
                                alert("不可輸入空白")
                            } else if (wayText == "方式不可輸入空白" || feeText == "運費不可輸入空白") {
                                window.event.returnValue = false;
                                alert("不可輸入空白");
                            } else if (wayText == "輸入錯誤" || feeText == "輸入錯誤") {
                                window.event.returnValue = false;
                                alert("輸入錯誤")
                            } else {
                                alert("輸入正確,新增一筆資料")
                            }

                        } else {
                            window.event.returnValue = false;
                        }
                    })

                     //判斷方式輸入
                    document.getElementById("way").addEventListener("blur", checkWay);
                    function checkWay() {
                        let way = document.getElementById("way");
                        let wayValue = way.value;
                        let sp = document.getElementById("waySpan");
                        let len = wayValue.length;
                        let a, b
                        if (wayValue == "") {
                            sp.innerHTML = "方式不可輸入空白";
                        } else {
                            for (let i = 0; i < len; i++) {
                                ch = wayValue.charCodeAt(i);
                                if (((ch >= 0x4e00 && ch <= 0x9fa5) && (ch = 47 || 40 || 41))) {
                                    a = true;
                                } else if (ch >= 65 && ch <= 90 || ch >= 97 && ch >= 122) {
                                    b = true;
                                }
                                else {
                                    sp.innerHTML = "輸入錯誤";
                                }
                            }
                            if (a || b) {
                                sp.innerHTML = "輸入正確";
                            }
                        }
                    }

                    //判斷運費輸入
                    document.getElementById("fee").addEventListener("blur", checkFee);
                    function checkFee() {
                        let fee = document.getElementById("fee");
                        let feeValue = fee.value;
                        let sp = document.getElementById("feeSpan");
                        let feeString = feeValue.toString();
                        let len = feeString.length;
                        if (feeValue == "") {
                            sp.innerHTML = "運費不可輸入空白";
                        } else {
                            for (let i = 0; i < len; i++) {
                                ch = feeString.charCodeAt(i);
                                if (ch >= 48 && ch <= 57 && "-") {
                                    sp.innerHTML = "輸入正確";
                                } else {
                                    sp.innerHTML = "輸入錯誤";
                                }
                            }
                        }
                    }
                </script>
            </body>

            </html>