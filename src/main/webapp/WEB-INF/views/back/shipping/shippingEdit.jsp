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

                    input[type=checkbox] {
                        height: 0;
                        width: 0;
                        visibility: hidden;

                    }

                    label {
                        cursor: pointer;
                        text-indent: -9999px;
                        width: 50px;
                        height: 25px;
                        background: grey;
                        /* display: block; */
                        border-radius: 25px;
                        position: relative;
                    }

                    label:after {

                        content: '';
                        position: absolute;
                        top: 2px;
                        left: 5px;
                        width: 23px;
                        height: 23px;
                        background: #fff;
                        border-radius: 23px;
                        transition: 0.3s;
                    }

                    input:checked+label {
                        background: #D19C97;
                    }

                    input:checked+label:after {

                        left: calc(100% - 5px);
                        transform: translateX(-100%);
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

                        <div class="col-lg-9 pt-3">
                            <div class="container-fluid pt-1">
                                <div class="d-flex">
                                    <h2 class="font-weight-semi-bold mr-3">物流管理</h2>
                                </div>
                                <div class="row ml-1">
                                    <div class="row col-lg-12">
                                        <form:form action="${contextRoot}/back/updateShipping" method="post"
                                            modelAttribute="UpdateShipping">
                                            <table class="table table-bordered text-center">
                                                <thead class="bg-secondary text-dark">
                                                    <tr>
                                                        <th>id</th>
                                                        <th>方式</th>
                                                        <th>運費</th>
                                                        <th>啟用狀態(啟用:ON/未啟用:OFF)</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="align-middle">
                                                    <tr>
                                                        <td class="align-middle">
                                                            <form:input path="shippingId" type="text"
                                                                value="${UpdateShipping.shippingId}"
                                                                onfocus="this.blur();" />
                                                        </td>
                                                        <td class="align-middle">
                                                            <form:input path="shippingWay" id="way" type="text"
                                                                value="${UpdateShipping.shippingWay}" />
                                                        </td>
                                                        <td class="align-middle">
                                                            <form:input path="shippingFee" id="fee" type="text"
                                                                value="${UpdateShipping.shippingFee}"
                                                                style="width: 2em;" />
                                                        </td>
                                                        <td class="align-middle">
                                                            <form:input path="shippingState" id="state" type="text"
                                                                value="${UpdateShipping.shippingState}" />
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <button type="submit" class="btn btn-primary mb-3" id="update">送出修改</button>
                                            <a href="${contextRoot}/back/shipping"
                                                class="text-primary font-weight-medium ml-2 mr-5">返回查詢</a>
                                            <span class="ml-5 text-primary mr-5" id="waySpan"></span>
                                            <span class="ml-5 text-primary mr-5 ml-5" id="feeSpan"></span>
                                            <span class="ml-5 text-primary mr-5 ml-5" id="stateSpan"></span>
                                        </form:form>
                                    </div>
                                </div>
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
                    //判斷是否修改
                    $('#update').click(function () {
                        var yes = confirm('確定要修改嗎?');
                        let wayText = $('#waySpan').text();
                        let feeText = $('#feeSpan').text();
                        let stateText = $('#stateSpan').text();
                        if (yes) {
                            if (wayText == "不可為空" || feeText == "不可為空" || stateText == "不可為空") {
                                window.event.returnValue = false;
                                alert("不可為空");
                            } else if (wayText == "輸入錯誤" || feeText == "輸入錯誤" || stateText == "輸入錯誤") {
                                window.event.returnValue = false;
                                alert("輸入錯誤")
                            } else {
                                alert("輸入正確,更新一筆資料")
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
                        if (wayValue == "") {
                            sp.innerHTML = "不可為空";
                        } else {
                            for (let i = 0; i < len; i++) {
                                ch = wayValue.charCodeAt(i);
                                if (ch >= 0x4e00 && ch <= 0x9fa5 && "-") {
                                    sp.innerHTML = "輸入正確";
                                } else {
                                    sp.innerHTML = "輸入錯誤";
                                }
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
                            sp.innerHTML = "不可為空";
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
                    //判斷狀態輸入
                    document.getElementById("state").addEventListener("blur", checkState);
                    function checkState() {
                        let state = document.getElementById("state");
                        let stateValue = state.value;
                        let sp = document.getElementById("stateSpan");
                        if (stateValue == "") {
                            sp.innerHTML = "不可為空";
                        } else if (stateValue == "ON" || stateValue == "OFF") {
                            sp.innerHTML = "輸入正確";
                        } else {
                            sp.innerHTML = "輸入錯誤";
                        }
                    }
                </script>


            </body>

            </html>