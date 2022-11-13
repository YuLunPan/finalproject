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

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextRoot}/css/style.css" rel="stylesheet">

    <style>
        li,
        ul {
            list-style: none;
            padding: 0%;
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
                <div class="col-lg-8 border-secondary  border mb-5" style="padding-left: 0; padding-right:0;">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">訂單出貨</h4>
                                </div>
                                <div>
                                    <div class="row">
                                        <!-- column -->
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <!-- title -->
                                                    <div class="d-md-flex">
                                                        <div class="ms-auto">
                                                            <div class="dl">
                                                                <div class="wrap">
                                                                    <div class="search">
                                                                        <input type="search" class="light-table-filter" data-table="table v-middle" placeholder="請輸入關鍵字">
                                                                    </div>
                                                                 </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- title -->
                                                </div>
                                                <div class="table-responsive">
                                                    <table class="table v-middle">
                                                        <thead>
                                                            <tr class="bg-light">
                                                                <th class="border-top-0">訂單號碼</th>
                                                                <th class="border-top-0">訂單日期</th>
                                                                <th class="border-top-0">訂單狀態</th>
                                                                <th class="border-top-0">送件單號</th>
                                                                <th class="border-top-0">訂購人</th>
                                                                <th class="border-top-0">合計</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="m-r-10">
                                                                            <div class="">
                                                                                <a href="http://127.0.0.1:5500/finalproject/%E8%A8%82%E5%96%AE%E7%B4%B0%E9%A0%85.html">202209260001</a>
                                                                            </div>
                                                                        </div>   
                                                                    </div>
                                                                </td>
                                                                <td>2022/9/26</td>
                                                                <td>訂單處理中</td>
                                                                <td>
                                                                    <body>
                                                                        <form action="#">
                                                                            <input placeholder="送件單號" maxlength="12" minlength="12">
                                                                            <button id="send" onclick="123">出貨</button>
                                                                            <script>
                                                                            // 抓取send的屬性值
                                                                            let x = document.getElementById('send').getAttribute('onclick')
                                                                            console.log(x);
                                                                            //並設置屬性名稱(onclick)的屬性值(window.alert("您確定要送出？"))
                                                                            document.getElementById("send").setAttribute('onclick', 'window.alert("您確定要送出？")')
                                                                            </script>
                                                                        </form>
                                                                    </body>
                                                                </td>
                                                                <td>
                                                                王心凌(ab1234@gmail.com)</td>
                                                                <td>
                                                                    <h5 class="m-b-0">$2850.06</h5>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="m-r-10">
                                                                        </div>
                                                                        <div class="">
                                                                            <a href="http://127.0.0.1:5500/finalproject">202209260002</a>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>2022/9/26</td>
                                                                <td>出貨中</td>
                                                                <td>已出貨</td>
                                                                <td>蔡依林(cd5678@gmail.com)</td>
                                                                <td>
                                                                    <h5 class="m-b-0">$3000.00</h5>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="m-r-10">
                                                                        </div>
                                                                        <div class="">
                                                                            <a href="http://127.0.0.1:5500/finalproject">202209250010</a>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>2022/9/25</td>
                                                                <td>已出貨</td>
                                                                <td>已出貨</td>
                                                                <td>孫燕姿(ef1234@yahoo.com.tw)</td>
                                                                <td>
                                                                    <h5 class="m-b-0">$4000.00</h5>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="m-r-10">
                                                                        </div>
                                                                        <div class="">
                                                                            <a href="http://127.0.0.1:5500/finalproject">202209250009</a>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>2022/9/25</td>
                                                                <td>已出貨</td>
                                                                <td>已出貨</td>
                                                                <td>張紹涵(gh5678@yahoo.com.tw)</td>
                                                                <td>
                                                                    <h5 class="m-b-0">$1548.25</h5>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
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
            (function(document) {
            'use strict';

            // 建立 LightTableFilter
             var LightTableFilter = (function(Arr) {

             var _input;

             // 資料輸入事件處理函數
             function _onInputEvent(e) {
                _input = e.target;
                var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
                Arr.forEach.call(tables, function(table) {
                Arr.forEach.call(table.tBodies, function(tbody) {
                Arr.forEach.call(tbody.rows, _filter);
                });
                });
            }

            // 資料篩選函數，顯示包含關鍵字的列，其餘隱藏
            function _filter(row) {
            var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
            row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
            }

            return {
            // 初始化函數
            init: function() {
            var inputs = document.getElementsByClassName('light-table-filter');
            Arr.forEach.call(inputs, function(input) {
            input.oninput = _onInputEvent;
            });
            }
            };
            })(Array.prototype);

            // 網頁載入完成後，啟動 LightTableFilter
            document.addEventListener('readystatechange', function() {
            if (document.readyState === 'complete') {
            LightTableFilter.init();
            }
            });

            })(document);
        </script>
</body>

</html>