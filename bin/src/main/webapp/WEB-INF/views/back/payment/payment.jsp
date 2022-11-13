<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
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

        input+label {
            background: #D19C97;
        }
        input:checked+label {
            background: grey;
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
                    <div class="d-flex">
                        <h2 class="font-weight-semi-bold mr-3">金流管理</h2>
                    </div>
						<div class="row col-lg-5 mr-3">
                            <form:form action="${contextRoot}/back/payment" method="post" modelAttribute="Payment">
                            <table class=" table table-bordered text-center">
                                <thead class="bg-secondary text-dark">

                                    <tr>
                                        <th>id</th>
                                        <th>方式</th>
                                    </tr>
                                </thead>
                                <tbody class="align-middle">
                                    <tr>
                                        <td class="align-middle">自動生成</td>
                                        <td class="align-middle"><form:input path="paymentWay" type="text"/></td>
                                    </tr>
                                </tbody>
                            </table>
                            <button type="submit" class="btn btn-primary mb-3">新建</button>
                            </form:form>
                        </div>
                        <table class="col-lg-9 table table-bordered text-center">
                            <thead class="bg-secondary text-dark">
                                <tr>
                                    <th>id</th>
                                    <th>方式</th>
                                    <th>啟用</th>
                                    <th>修改</th>
                                </tr>
                            </thead>
                            <tbody class="align-middle">
                            	<c:forEach items="${Payments}" var="p">
                                <tr>
                                    <td class="align-middle">${p.paymentId}</td>
                                    <td class="align-middle">${p.paymentWay}</td>
                                    <td class="align-middle">${p.paymentState}</td>	
                                   <td><a href="${contextRoot}/back/updatePayment?id=${p.paymentId}" class="btn btn-primary">修改</a></td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
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
            $(document).ready(function () {
                $('.example2').hide();
                $('a#toggle-example2').click(function () {
                    $('.example2').slideToggle(1000);
                    return false;
                });
            });
        </script>
</body>

</html>