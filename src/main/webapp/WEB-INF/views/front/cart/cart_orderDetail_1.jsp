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
<!--                 <meta http-equiv="refresh" content="1"> -->

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
                <div class="container-fluid  mb-0 mt-5">
                    <div class="align-items-center justify-content-center" style="min-height: 200px; display: flex;">
                        <h1 class="font-weight-semi-bold text-uppercase mb-3 ">01</h1>
                        <h2 class="font-weight-semi-bold text-uppercase mb-3 " style="margin-right: 1em;">確認訂購明細
                        </h2>
                        <h1 class="font-weight-semi-bold text-uppercase mb-3 text-primary">02</h1>
                        <h2 class="font-weight-semi-bold text-uppercase mb-3 text-primary" style="margin-right: 1em;">
                            填寫訂購資料</h2>
                        <h1 class="font-weight-semi-bold text-uppercase mb-3">03</h1>
                        <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">完成訂購</h2>


                    </div>
                </div>
                <!-- Page Header End -->

                <!-- Cart Start -->
                <form:form action="${contextRoot}/cartFinish" method="post" modelAttribute="Orders">
                    <div class="container-fluid pt-3">
                        <div class="row px-xl-5 table-responsive mb-5">

                            <div class="row px-xl-5">
                                <div class="col-lg-8 border-secondary  border mb-5"
                                    style="padding-left: 0; padding-right:0;">

                                    <div class="card-header bg-secondary border-0">
                                        <h4 class="font-weight-semi-bold m-0">客戶資料</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="d-flex pt-1 mb-2">
                                            <h6 class="font-weight-medium">客戶名稱: </h6>
                                            <h6 class="font-weight-medium ml-1" id="member">${Orders.member.memberName}
                                            </h6>
                                        </div>
                                        <div class="d-flex pt-1 mb-2">
                                            <h6 class="font-weight-medium">電話號碼:</h6>
                                            <h6 class="font-weight-medium ml-1" id="memberPhone">${Orders.member.phone}</h6>
                                        </div>
                                        <div class="d-flex pt-1 ">
                                            <h6 class="font-weight-medium">電子信箱:</h6>
                                            <h6 class="font-weight-medium ml-1">${Orders.member.email}</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">

                                    <div class="card border-secondary mb-5">
                                        <div class="card-header bg-secondary border-0">
                                            <h4 class="font-weight-semi-bold m-0">訂單備註</h4>
                                        </div>

                                        <div class="card-body">
                                            <form class="mb-5 btn btn-block " action="">
                                                <div class="input-group">
                                                    <form:input path="notes" type="text" class="form-control p-4"
                                                        placeholder="想通知賣家的話.." />
                                                </div>
                                            </form>
                                             <div class="d-flex pt-3">
                                            <h6 class="font-weight-medium text-primary">蝦皮出貨請備註蝦皮帳號:</h6>
                                            </div>
                                             <div class="d-flex pt-1 mb-2">
                                            <h6 class="font-weight-medium">例如:我的蝦皮帳號是:Chezmoiiiiiii</h6>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="col-lg-8 border-secondary  border mb-5"
                                    style="padding-left: 0; padding-right:0;">
                                    <div class="card-header bg-secondary border-0">
                                        <h4 class="font-weight-semi-bold m-0">收件資料</h4>
                                    </div>

                                    <div class="card-body">
                                        <div class="card-body">
                                            <input class="mb-2" type="checkbox" name="checkbox1" value="same_detail"
                                                id="checkbox">
                                            <label for="checkbox1">收件人資料與客戶資料相同</label>
                                            <div class="d-flex pt-1 mb-2">
                                                <h6 class=" font-weight-medium mr-3">收件人名稱</h6>
                                                <span class=" font-weight-medium text-primary" id="nameSpan"></span>
                                            </div>
                                            <div class="input-group">
                                                <form:input path="shipName" type="text" class="form-control p-4 mb-2"
                                                    id="inputMemberName" value="" placeholder="收件人名稱"
                                                    oninput = "value=value.replace(/[^\u4E00-\u9FA5]/g,'')"/>
                                            </div>
                                            <div class="d-flex pt-1 mb-2">
                                                <h6 class=" font-weight-medium mr-3">收件人電話號碼</h6>
                                                 <span class=" font-weight-medium text-primary" id="phoneSpan"></span>
                                            </div>
                                            <div class="input-group">
                                                <form:input path="shipPhone" type="text" class="form-control p-4 mb-2"
                                                    id="inputMemberPhone" value="" placeholder="09XXXXXXX" 
                                                    oninput = "value=value.replace(/[^\d]/g,'')" maxlength="10" />
                                            </div>
                                            <div class="d-flex justify-content-between pt-1 mb-2">
                                                <h6 class=" font-weight-medium">7-11 店號(蝦皮出貨請不用填寫)</h6>
                                            </div>
                                            <div class="input-group">
                                                <form:input path="storeNumber" class="form-control p-4 mb-2"
                                                    placeholder="211480" 
                                                    oninput = "value=value.replace(/[^\d]/g,'')" maxlength="6"/>
                                            </div>
                                            <div class="d-flex justify-content-between pt-1 mb-2">
                                                <h6 class=" font-weight-medium">7-11 門市名稱(蝦皮出貨請不用填寫)</h6>
                                            </div>
                                            <div class="input-group">
                                                <form:input path="storeName" class="form-control p-4 mb-2"
                                                    placeholder="大強" 
                                                    oninput = "value=value.replace(/[^\u4E00-\u9FA5]/g,'')"/>
                                            </div>
                                            <a class="text-primary" href="https://emap.pcsc.com.tw/#"
                                                target="_blank">7-11門市查詢 ( ex: 門市店號：136288 ,
                                                門市店名：工協 )</a>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="card border-secondary mb-5">
                                        <div class="card-header bg-secondary border-0">
                                            <h4 class="font-weight-semi-bold m-0">付款資料</h4>
                                        </div>
                                        <div class="card-body">
                                            <div class="d-flex justify-content-between pt-1">
                                                <h6 class=" font-weight-medium">已選擇的付款方式:</h6>
                                            </div>
                                            <div class="d-flex justify-content-between pt-1">
                                                <h6 class=" font-weight-medium">${Payment.paymentWay} </h6>
                                            </div>
                                            <div class="d-flex justify-content-between pt-1">
                                                <h6 class=" font-weight-medium">運送方式為:</h6>
                                            </div>
                                            <div class="d-flex justify-content-between pt-1">
                                                <h6 class=" font-weight-medium">${Shipping.shippingWay}</h6>
                                            </div>
                                        </div>

                                    </div>
                                    <c:set var="deliveryFee" value="70" />
                                    <c:set var="total" value="0" />
                                    <div class="card border-secondary mb-5">
                                        <div class="card-header bg-secondary border-0">
                                            <h4 class="font-weight-semi-bold m-0">總金額</h4>
                                        </div>

                                        <div class="card-body">
                                            <div class="d-flex justify-content-between pt-3">
                                                <h5 class=" font-weight-semi-bold m-0">合計: NT$ ${Orders.total}</h5>
                                            </div>
                                        </div>
                                          <div class="d-flex justify-content-center mt-2 ml-2 mr-2">
                                            <a href="<c:url value='/cartAll' />" class="mr-3"><button
                                                    class="btn btn-block btn-primary my-3 py-3"
                                                    type="button">上一步重新選擇</button></a>
                                            <button class="btn btn-block btn-primary my-3 py-3" style="width:12em;" type="submit" id="add">
                                                下一步完成訂單</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </form:form>
                <!-- Cart End -->
                <!-- Footer Start -->
            <jsp:include page="../layout/footer.jsp"></jsp:include>
                <!-- Back to Top -->
                <a href="#" class="btn btn-primary back-to-top" style="margin-right: 0px"><i
                        class="fa fa-angle-double-up"></i></a>

                <!-- Footer End -->


                <!-- Back to Top -->
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

                <script type="text/javascript">
                    $('#checkbox').click(function () {
                        var member = $('#member').text();
                        $('#inputMemberName').attr("value", member);
                        var nameSp = document.getElementById("nameSpan");
                        nameSp.innerHTML = "輸入正確";

                        var memberPhone = $('#memberPhone').text();
                        $('#inputMemberPhone').attr("value", memberPhone);
                        let phoneSp = document.getElementById("phoneSpan");
                        phoneSp.innerHTML = "輸入正確";
                    })
					window.onload = function() {
					    if(!window.location.hash) {
					        window.location = window.location + '#loaded';
					        window.location.reload();
					    }
					}
                    
                    //判斷是否建立新訂單
                    $('#add').click(function () {
                        var yes = confirm('確定要送出訂單嗎?');
                        var nemeText = $("#nameSpan").text();
                        var phoneText = $("#phoneSpan").text();
                        var text = "輸入正確";
                        if (yes) {
                            if (nemeText == text && phoneText == text) {
                            	alert("輸入正確,送出訂單");
                            	
                            }else{
                            	window.event.returnValue = false;
                                alert("收件資訊輸入錯誤或空白");
                            }
                        } else {
                            window.event.returnValue = false;
                        }
                    })
                    
                    //判斷姓名輸入
                    document.getElementById("inputMemberName").addEventListener("blur", checkName);
                    function checkName() {
                       let name = document.getElementById("inputMemberName");
                       let nameValue = name.value;
                       let len = nameValue.length;
                       let sp = document.getElementById("nameSpan");
                       if(len == 0){
                    	   sp.innerHTML = "不可輸入空白";
                       }else if(len <2){
                    	   sp.innerHTML = "姓名長度必須兩個字以上";
                       }else{
	                       sp.innerHTML = "輸入正確";
                       }
                    }
                    //判斷電話輸入
                    document.getElementById("inputMemberPhone").addEventListener("blur", checkPhone);
                    function checkPhone() {
                       let phone = document.getElementById("inputMemberPhone");
                       let phoneValue = phone.value;
                       let len = phoneValue.length;
                       let sp = document.getElementById("phoneSpan");
                       if(len == 0){
                    	   sp.innerHTML = "不可輸入空白";
                       }else if(len <10 || len >10){
                    	   sp.innerHTML = "電話長度必須等於十碼";
                       }else if(phoneValue.charAt(0) != 0){
                    	   sp.innerHTML = "第一碼必須為0";
                       }else if(phoneValue.charAt(1) != 9){
                    	   sp.innerHTML = "第二碼必須為9";
                       }else{
                    	   sp.innerHTML = "輸入正確";
                       }
                    }
                    
                    
                    
								
                </script>

            </body>

            </html>