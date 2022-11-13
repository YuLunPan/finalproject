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
                 <meta name="viewport" content="width=device-width, initial-scale=1">
    			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

/* .btn { */
/*   background-color: #4CAF50; */
/*   color: white; */
/*   padding: 12px; */
/*   margin: 10px 0; */
/*   border: none; */
/*   width: 100%; */
/*   border-radius: 3px; */
/*   cursor: pointer; */
/*   font-size: 17px; */
/* } */

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}

    </style>
</head>
<body>
 <!-- Topbar Start -->
<jsp:include page="../layout/navbar.jsp"></jsp:include>
 <div class="container-fluid mt-5">
  <div class=" px-xl-5 border-0">
    <h3 class="font-weight-semi-bold">訂購資料</h3>
  </div>
   <div class="row px-xl-5 table-responsive">
            <table class="table table-bordered text-center mb-5">
                <thead class="bg-secondary text-dark">
                    <tr>
                        <th>訂單編號</th>
                        <th>訂單日期</th>
                        <th>總金額</th>
                        <th>訂單狀態</th>
                        <th>付款方式</th>
                        <th>運送方式</th>
                        <th>備註</th>
                    </tr>
                </thead>
                <tbody class="align-middle">
                    <tr>
                        <td class="align-middle">${Order.orderId}</td>
                        <td class="align-middle">${Order.orderDate}</td>
                        <td class="align-middle">${Order.total}</td>
                        <td class="align-middle">${Order.orderState}</td>
                        <td class="align-middle">${Order.payment.paymentWay}</td>
                        <td class="align-middle">${Order.shipping.shippingWay}</td>
                        <td class="align-middle">${Order.notes}</td>
                    </tr>
                </tbody>
            </table>
        </div>
 <div class="row px-xl-5">
  <div class="col-lg-8">
           <div class="row table-responsive mb-5">
            <table class="table table-bordered text-center mb-5">
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
                    </tr>
                </thead>
                <tbody class="align-middle">
                <c:forEach items="${OrderDetail}" var="o">
                    <tr>
                        <td class="align-middle">${o.productId}</td>
                        <td class="align-middle">${o.productName}</td>
                        <td class="align-middle">
                        <img src="http://localhost:8080/Chezmoi/getMainPic/${o.photoId}" style="width: 5em;"></td>
                        <td class="align-middle">${o.productColor}</td>
                        <td class="align-middle">${o.productSize}</td>
                        <td class="align-middle">${o.quantity}</td>
                        <td class="align-middle">${o.price}</td>
                        <td class="align-middle">${o.total}</td>
                    </tr>
                 </c:forEach>
                </tbody>
            </table>
        </div>
        </div>
 <div class="col-lg-4 border-secondary  border" style="padding-left: 0; padding-right:0;">
 <div class="card-header bg-secondary border-0">
                                <h4 class="font-weight-semi-bold m-0">付款資訊</h4>
                            </div>
                            <div class="card-body">
             <form:form action="${contextRoot}/cart/paypal" method="post" modelAttribute="order">
                    <div class="d-flex justify-content-between pt-1 mb-2">
                     <h6 class=" font-weight-medium">訂單總金額</h6>
                    </div>
                    <div class="input-group">
                    <form:input class="form-control p-4 mb-2" path="price" type="text"  value="${Order.total}" onfocus="this.blur();"/>
                    </div>
<!--                     <div class="d-flex justify-content-between pt-1 mb-2"> -->
<!--                      <h6 class=" font-weight-medium">使用貨幣</h6> -->
<!--                     </div> -->
                    <div class="input-group">
                    <form:input class="form-control p-4 mb-2" path="currency" type="hidden" id="currency" name="currency" value="USD" onfocus="this.blur();"/>
                    </div>
<!--                     <div class="d-flex justify-content-between pt-1 mb-2"> -->
<!--                      <h6 class=" font-weight-medium">付款方式</h6> -->
<!--                     </div> -->
                    <div class="input-group">
                    <form:input class="form-control p-4 mb-2" path="method" type="hidden" id="method" name="method" value="paypal" onfocus="this.blur();" />
                    </div>
                    <div class="d-flex justify-content-between pt-1 mb-2">
                     <h6 class=" font-weight-medium">本次交易目的</h6>
                    </div>
                    <div class="input-group">
                    <form:input class="form-control p-4 mb-2" path="intent" type="text" id="intent" name="intent" value="sale" onfocus="this.blur();" />
                    </div>
                    <div class="d-flex justify-content-between pt-1 mb-2">
                     <h6 class=" font-weight-medium">付款描述</h6>
                    </div>
                    <div class="input-group">
                    <form:input class="form-control p-4 mb-2" path="description" type="text" id="description" name="description" value="chezmoi訂單編號:${Order.orderId}" onfocus="this.blur();"/>
                    </div>
                </div>
 				<div class="d-flex justify-content-center mt-2">
                <button type="submit" class="btn btn-block btn-primary my-4 py-4" id="submit" style="width:15em;">確認資料無誤前往付款</button>
                </div>
            </form:form>
        </div>
    </div>
    </div>
    </div>
<!--  				Footer Start -->
<%--                 <jsp:include page="../layout/footer.jsp"></jsp:include> --%>
<!--                 Footer End -->

                <!-- Back to Top -->
                <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

                <!--JavaScript & Jquery-->
                <script src="https://code.jquery.com/jquery-3.6.1.js"></script>

                <!-- JavaScript Libraries -->
               
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
                	$('#submit').click(function(){
                		alert('您將前往paypal網站付款')
                	})
                </script>

</body>
</html>