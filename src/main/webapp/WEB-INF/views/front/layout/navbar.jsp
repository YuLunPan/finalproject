<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Chezmoi</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
<%--    <meta http-equiv="refresh" content="20">--%>
    <!-- Favicon -->
    <link href="https://img.onl/fUrHvw" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <!-- <navbar> -->
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link href="${contextRoot}/css/style.css" rel="stylesheet">

</head>


<body>
<nav>
    <div class="text-right" style="background-color: #F1EDE6;">
        <span class=" mr-3" style="color:#393833;" id="showName"></span>

    </div>

    <input type="checkbox" id="check"> <label for="check" class="checkbtn"> <i class="fa fa-bars"></i>
</label> <label class="logo" style="padding-left: 30px"><a href="${contextRoot}/"><img
        src="${contextRoot}/img/logo.jpg" width="50" height="50"></a></label>
    <ul style="margin-bottom: 0px;z-index:20">
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" role="button"
                                         data-toggle="dropdown" aria-expanded="false"> Shop </a>
            <ul class="dropdown-menu"
                style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 96px, 0px); margin-top: 0px; border-top-width: 0px; padding-top: 0px;">
                <li class="btn-block"><a class="dropdown-item" href="${contextRoot}/shop">All</a></li>
                <li class="btn-block"><a class="dropdown-item" href="${contextRoot}/shop/Top">Top</a></li>
                <li class="btn-block"><a class="dropdown-item" href="${contextRoot}/shop/Bottom">Bottom</a></li>
                <li class="btn-block"><a class="dropdown-item" href="${contextRoot}/shop/Outer">Outer</a></li>
                <li class="btn-block"><a class="dropdown-item" href="${contextRoot}/shop/Dress">Dress</a></li>
                <li class="btn-block"><a class="dropdown-item" href="${contextRoot}/shop/Accessories">Accessories</a></li>
            </ul>
        </li>
        <li><a href="${contextRoot}/notice">Notice</a></li>
        <li><a href="${contextRoot}/contact">Contact</a></li>
        <li><a href="https://www.instagram.com/chezmoiiiiiii/?hl=en">Instagram</a></li>
        <li><a href="${contextRoot}/wishTest" class="nav-item nav-link fas fa-heart fa-1x"
               style="font-size:20px"></a></li>
        <li><a class="position-relative" href="${contextRoot}/cartAll">
            <i class="fas fa-shopping-cart fa-1x" style="font-size:20px"></i>
            <span class="cartQuantity text-white bg-primary">0</span>
        </a></li>
        <li><a href="${contextRoot}/member" class="nav-item nav-link fas fa-user fa-1x"
               style="font-size:20px"></a></li>
    </ul>

</nav>
			<script type="text/javascript">
				$(document).ready(function () {
					fetch("http://localhost:8080/Chezmoi/cartQuantity")
						.then((response) => {
							return response.text();
						}).then((responseJSON) => {
							if (responseJSON != null) {
								$('.cartQuantity').text(responseJSON)
							} else { }
						});

				});
			</script>


			<script type="text/javascript">
				$(document).ready(function () {
					fetch("http://localhost:8080/Chezmoi/showName")
                        .then((response) => {
							return response.text();
						}).then((responseJSON) => {
							if (responseJSON != null) {
								if (responseJSON === '顧客') {
									$('#showName').text(responseJSON + ' 您好 ').append('<a href="${contextRoot}/member/login" id="login" >Login</a>')
								} else {
									$('#showName').text(responseJSON + ' 您好 ').append('<a href="${contextRoot}/member/logout" id="logout">Logout</a>')
								}

							}
                        });

                    $('#logout').click(function (){
                        window.location.assign(window.location.href);
                    });
				});
			</script>

</body>

</html>