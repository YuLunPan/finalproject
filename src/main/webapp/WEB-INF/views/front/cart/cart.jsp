<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>Chezmoi 購物車</title>
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

                <script src="https://kit.fontawesome.com/fda1db8ac4.js" crossorigin="anonymous"></script>

                <!-- Libraries Stylesheet -->
                <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

                <!-- Customized Bootstrap Stylesheet -->
                <link href="${contextRoot}/css/style.css" rel="stylesheet">

                <!-- jQ -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


            </head>

            <body>
            
            <!-- Topbar Start -->
			<jsp:include page="../layout/navbar.jsp"></jsp:include>
			<!-- Topbar End -->



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
                                    <th>刪除</th>

                                </tr>
                            </thead>
                            <tbody class="align-middle">
                                <c:forEach items="${Carts}" var="c">
                                    <tr>
                                        <td class="align-middle">${c.productId}</td>
                                        <td class="align-middle">${c.productName}</td>
                                        <td class="align-middle"><img
                                                src="http://localhost:8080/Chezmoi/getMainPic/${c.photoId}"
                                                style="width: 5em;">
                                        <td class="align-middle">${c.productColor}</td>
                                        <td class="align-middle">${c.productSize}</td>
                                        <td class="align-middle">
                                            <div class="input-group quantity mx-auto" style="width: 100px;">
                                                <input type="button" name="minus" value="-"
                                                    class="numberMinus btn btn-sm btn-primary btn-minus" />
                                                <input type="text"
                                                    class="textNum form-control form-control-sm bg-secondary text-center"
                                                    id="quantity" name="${carListId}" value="${c.quantity}">
                                                <input type="button" name="add" value="+"
                                                    class="numberPlus btn btn-sm btn-primary btn-plus" />
                                            </div>
                                        </td>
                                        <td class="align-middle" id="price">${c.price}</td>
                                        <td class="align-middle" id="total">${c.total}</td>
                                        <td class="align-middle"><a
                                                href="${contextRoot}/cart/deleteFromCart?id=${c.productId}"><i class="fa-solid fa-trash-can"></i></a>
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
                                    <select name="shoppingWay" id="shippingWay" style="width: 100em;height:3em ;"
                                        onchange="changeDeliveryFee()">
                                        <c:forEach items="${Shipping}" var="s">
                                            <option id="${s.shippingFee}" value="${s.shippingId}">${s.shippingWay}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="d-flex justify-content-between pt-1">
                                    <h6 class=" font-weight-medium">收款銀行: (822)中國信託</h6>
                                </div>
                                <div class="d-flex justify-content-between pt-1">
                                    <h6 class=" font-weight-medium">收款帳號: chezmoiiiii152</h6>
                                </div>
                                <div class="d-flex pt-1">
                                    <h6 class=" font-weight-medium mr-1">蝦皮賣場連結: </h6>
                                    <a class="text-primary" href="https://shopee.tw/product/7915556/4083302459/"> Chezmoi</a>
                                </div>
                                <div class="d-flex justify-content-between pt-1">
                                    <h6 class=" font-weight-medium">備註: 訂單將於收到款項後出貨</h6>
                                </div>
                                <div class="d-flex pt-1">
                                    <h6 class=" font-weight-medium mr-1">選擇7-11取貨的顧客: </h6>
                                    <h6 class=" font-weight-medium">請匯款訂單總金額至收款帳號,或於訂單完成頁面點選連結至paypal網站付款</h6>
                                </div>
                                <div class="d-flex pt-1">
                                    <h6 class=" font-weight-medium mr-1">選擇蝦皮出貨的顧客: </h6>
                                    <h6 class=" font-weight-medium">請匯款訂單總金額至收款帳號,再由蝦皮下單付尾款(300元),於下頁備註您的蝦皮帳號</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">

                            <div class="card border-secondary mb-5">
                                <div class="card-header bg-secondary border-0">
                                    <h4 class="font-weight-semi-bold m-0">購物車明細</h4>
                                </div>
                                <form:form action="${contextRoot}/cartAll" class="mt-4  btn-block" method="post"
                                    modelAttribute="Coupon">
                                    <div class="card-body">
                                        <div class="input-group">
                                            <form:input type="text" path="couponCode" class="form-control p-4"
                                                placeholder="請輸入折扣碼" />
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="submit">使用折扣碼</button>
                                            </div>
                                        </div>
                                        <div class="d-flex pt-1">
                                            <h6 class="font-weight-medium subtotal mt-3 mr-2">折扣碼: </h6>
                                            <h6 class="font-weight-medium subtotal mt-3 text-primary mr-2 couponCode"
                                                id="couponCode">${param.couponCode}</h6>
                                            <c:set var="couponCode" value="${param.couponCode}" />
                                            <h6 class="font-weight-medium subtotal mt-3 text-primary"> ${param.msg}</h6>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="d-flex mb-3 pt-1">
                                            <h6 class="font-weight-medium subtotal">小計:</h6>
                                            <h6 class="font-weight-medium subtotal" id="cartTotal">${total}</h6>
                                        </div>
                                        <div class="d-flex mb-3 pt-1">
                                            <c:set var="deliveryFee" value="0" />
                                            <h6 class="font-weight-medium">運費:</h6>
                                            <h6 class="font-weight-medium" id="deliveryFee"></h6>
                                        </div>
                                        <div class="d-flex mb-3 pt-1">
                                            <h6 class="font-weight-medium">折扣金額:</h6>
                                            <h6 class="font-weight-medium" id="discount">${param.discount}</h6>
                                        </div>
                                    </div>
                                    <c:set var="subtotal" value="${total-param.discount}" />
                                </form:form>
                                <div class="card-footer border-secondary bg-transparent">
                                    <div class="d-flex justify-content-between  mt-2">
                                        <h5 class="font-weight-bold">總金額NT$ </h5>
                                        <h5 class="font-weight-bold" id="subTotal">${subtotal}</h5>
                                    </div>
                                     <div class="d-flex justify-content-center mt-2">
                                    <a href="<c:url value='/shop' />" class="mr-3"><button
                                            class="btn btn-block btn-primary my-3 py-3">上一步繼續購物</button>
                                    </a>
                                    <a href="<c:url value='/cartOrderDetail' />" class="ml-3" id="nextStep"><button
                                            class="btn btn-block btn-primary my-3 py-3" >下一步填寫資料</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Cart End -->


                <!-- Footer -->
                <jsp:include page="../layout/footer.jsp"></jsp:include>

                <!--JavaScript & Jquery-->
                <script src="https://code.jquery.com/jquery-3.6.1.js"></script>

                <!-- Contact Jquery File -->
                <script src="${contextRoot}/js/jquery-3.6.1.min.js" type="text/javascript"></script>

                <!-- Ajax & other function -->
                <script src="${contextRoot}/js/cartAjax.js"></script>
                
               

            </body>

            </html>