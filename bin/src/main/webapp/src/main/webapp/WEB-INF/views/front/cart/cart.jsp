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
                <link href="${contextRoot}/css/style.css" rel="stylesheet">

            </head>

            <body>

                <!-- Topbar Start -->
                <div class="px-xl-5">
                    <nav class=" fixed-top navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0 border">
                        <div class="collapse navbar-collapse  justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto align-items-center py-0">
                                <a href="index.html" class="nav-item nav-link active"><img
                                        src="${contextRoot}/img/logo.jpg" width="50" height="50">
                                </a>
                                <a href="<c:url value='/shop' />" class="nav-item nav-link">Shop</a>
                                <a href="detail.html" class="nav-item nav-link">Notice</a>
                                <a href="https://www.instagram.com/chezmoiiiiiii/?hl=en" class="nav-item nav-link"
                                    target="_blank">Instagram</a>
                                <a href="contact.html" class="nav-item nav-link">Contact</a>
                            </div>
                            <div class="navbar-nav ml-auto py-0">
                                <a href="Product_set.html" class="nav-item nav-link"><img
                                        src="${contextRoot}/img/set.png" width="20" height="20"></a>
                                <a href="wish.html" class="nav-item nav-link"><img src="${contextRoot}/img/wish.png"
                                        width="20" height="20"></a>
                                <a href="<c:url value='/cartAll' />" class="nav-item nav-link"><img
                                        src="${contextRoot}/img/cart.png" width="20" height="20"></a>
                                <a href="member.html" class="nav-item nav-link"><img src="${contextRoot}/img/user.png"
                                        width="20" height="20"></a>
                            </div>
                        </div>
                    </nav>
                </div>
                <!-- Topbar End -->


                <!-- Navbar Start -->

                <!-- Navbar End -->


                <!-- Page Header Start -->
                <div class="container-fluid  mb-0 mt-5">
                    <div class="align-items-center justify-content-center" style="min-height: 200px; display: flex;">
                        <h1 class="font-weight-semi-bold text-uppercase mb-3 text-primary">01</h1>
                        <h2 class="font-weight-semi-bold text-uppercase mb-3 text-primary" style="margin-right: 1em;">
                            確認訂購明細
                        </h2>
                        <h1 class="font-weight-semi-bold text-uppercase mb-3">02</h1>
                        <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">填寫訂購資料</h2>
                        <h1 class="font-weight-semi-bold text-uppercase mb-3">03</h1>
                        <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">完成訂購</h2>
                    </div>
                </div>
                <!-- Page Header End -->


                <!-- Cart Start -->
                <div class="container-fluid pt-0">
                    <div class="row px-xl-5 table-responsive mb-5">
                        <table class="table table-bordered text-center mb-0">
                            <thead class="bg-secondary text-dark">
                                <tr>

                                    <th>商品編號</th>
                                    <th>商品名稱</th>
                                    <th>商品圖片</th>
                                    <th>顏色</th>
                                    <th>尺寸</th>
                                    <th>數量</th>
                                    <th>單價</th>
                                    <th>小計</th>
                                    <th>收藏</th>
                                    <th>刪除</th>

                                </tr>
                            </thead>
                            <tbody class="align-middle">
                                <c:forEach items="${Carts}" var="c">
                                    <tr>
                                        <td class="align-middle">${c.productId}</td>
                                        <td class="align-middle">${c.productName}</td>
                                        <td class="align-middle"><img src="${contextRoot}/img/product/0812/" alt=""
                                                style="width: 5em;">
                                        <td class="align-middle">${c.productColor}</td>
                                        <td class="align-middle">${c.productSize}</td>
                                        <td class="align-middle">
                                            <div class="input-group quantity mx-auto" style="width: 100px;">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-sm btn-primary btn-minus">
                                                        <i class="fa fa-minus"></i>
                                                    </button>
                                                </div>
                                                <input type="text"
                                                    class="form-control form-control-sm bg-secondary text-center"
                                                    value="${c.quantity}">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-sm btn-primary btn-plus">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="align-middle">${c.price}</td>
                                        <td class="align-middle">${c.total}</td>
                                        <td class="align-middle"><a
                                                href="${contextRoot}/cart/addToCollection?id=${c.productId}"><img
                                                    class="wish" src="${contextRoot}/img/wish.png" alt=""
                                                    style="width: 1em; height:1em;"></a>
                                        </td>
                                        <td class="align-middle"><a
                                                href="${contextRoot}/cart/deleteFromCart?id=${c.productId}"><img
                                                    class="delete" src="${contextRoot}/img/delete.png" alt=""
                                                    style="width: 1em; height: 1em;"></a>
                                        </td>
                                        <c:set var="total" value="${total+c.total}" />
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="row px-xl-5">
                        <div class="col-lg-8 border-secondary  border mb-5" style="padding-left: 0; padding-right:0;">
                            <div class="card-header bg-secondary border-0">
                                <h4 class="font-weight-semi-bold m-0">選擇運送及付款方式</h4>
                            </div>

                            <div class="card-body">
                                <div class="d-flex justify-content-between pt-1">
                                    <h6 class=" font-weight-medium" id="">付款方式</h6>
                                </div>
                                <div class="d-flex justify-content-between mb-2 pt-1">
                                    <select name="paymentWay" id="paymentWay" style="width: 100em; height:3em">
                                        <c:forEach items="${Payment}" var="p">
                                            <option id="paymentId" value="${p.paymentId}">
                                                ${p.paymentWay}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="d-flex justify-content-between pt-1">
                                    <h6 class=" font-weight-medium">運送方式</h6>
                                </div>
                                <div class="d-flex justify-content-between mb-2 pt-1">
                                    <select name="shoppingWay" id="shippingWay" style="width: 100em;height:3em ;">
                                        <c:forEach items="${Shipping}" var="s">
                                            <option id="shippingId" value="${s.shippingId}">${s.shippingWay}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="d-flex justify-content-between pt-1">
                                    <h6 class=" font-weight-medium">備註:</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">

                            <div class="card border-secondary mb-5">
                                <div class="card-header bg-secondary border-0">
                                    <h4 class="font-weight-semi-bold m-0">購物車明細</h4>
                                </div>

                                <div class="card-body">
                                    <div class="d-flex justify-content-between mb-3 pt-1">
                                        <h6 class="font-weight-medium subtotal">小計: ${total}</h6>
                                    </div>
                                    <c:set var="deliveryFee" value="70" />
                                    <div class="d-flex justify-content-between mb-3 pt-1">
                                        <h6 class="font-weight-medium">運費:</h6>
                                        <h6 class="font-weight-medium">運費:</h6>
                                    </div>
                                    <c:set var="discount" value="200" />
                                    <div class="d-flex justify-content-between mb-3 pt-1">
                                        <h6 class="font-weight-medium">折扣金額: ${discount}</h6>
                                    </div>
                                </div>
                                <form class="mb-5 btn btn-block" action="http://localhost:8081/finalProject/cart"
                                    method="get" target="_self">
                                    <div class="input-group">
                                        <input type="text" class="form-control p-4" placeholder="請輸入折扣碼">
                                        <div class="input-group-append">
                                            <input type="submit" class="btn btn-primary" value="使用折扣碼">
                                        </div>
                                    </div>
                                </form>
                                <c:set var="subtotal" value="${deliveryFee+total-discount}" />
                                <div class="card-footer border-secondary bg-transparent">
                                    <div class="d-flex justify-content-between  mt-2">
                                        <h5 class="font-weight-bold">總金額NT$ </h5>
                                        <h5 class="font-weight-bold" id="total">${subtotal}</h5>
                                    </div>
                                    <a href="<c:url value='/shop' />"><button
                                            class="btn btn-block btn-primary my-3 py-3">繼續購物</button>
                                    </a>
                                    <a href="<c:url value='/cartOrderDetail' />" id="nextStep"><button
                                            class="btn btn-block btn-primary my-3 py-3">下一步結帳</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Cart End -->


                <!-- Footer Start -->
                <div class="container-fluid  text-dark mt-5 pt-5 border-top-1">
                    <p class="text-center"><span
                            style="color: rgb(86, 84, 84); font-size: 12px;">Email：chezmoiiiiiii@gmail.com</span></p>

                    <p class="text-center"><span style="color: rgb(86, 84, 84); font-size: 12px;">Service time：Mon - Sun
                            10:00-22:00</span></p>
                </div>
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

                    $("#shippingWay").change(function () {
                        var shippingId = $("#shippingWay").val();
                        console.log(shippingId)
                        alert(shippingId)
                    });

                    var total = ${ subtotal };
                    console.log(total)
                    var shippingId = document.getElementById('shippingWay').value;
                    console.log(shippingId)
                    var paymentId = document.getElementsByClassName('paymentId').value;
                    console.log(shippingId)


                    $(document).ready(function () {
                        $('#nextStep').click(function () {

                            var shippingId = document.getElementById('shippingId').value;
                            alert(shippingId)
                            var paymentId = document.getElementById('paymentId').value;
                            var total = document.getElementById('total').text;
                            console.log(paymentId)
                            console.log(shippingId)
                            console.log(total)
                            $("#shippingWay").change(function () {
                                var shippingId = $("#shippingWay").val();
                                console.log(shippingId)

                            });
                        })


                    })


                </script>

            </body>

            </html>