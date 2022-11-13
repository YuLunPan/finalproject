<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Chezmoi</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <!-- Favicon -->
    <link href="https://img.onl/fUrHvw" rel="icon">

    <!-- jQ -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!--JavaScript & Jquery-->
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

    <!-- JavaScript Libraries -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="${contextRoot}/lib/easing/easing.min.js"></script>
    <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

</head>
<body>
<!-- Topbar Start -->
    <div class="container-fluid align-items-center justify-content-center">
        <div class="row" style="background-color: #F1EDE6;">
            <div class="col-lg-1 d-none d-lg-block pt-1">
                <div class="container-fluid">
                    <a href="#" class="nav-item nav-link active"><img src="https://i.imgur.com/11vzfsu.jpg" width="50"
                            height="50"></a>

                </div>
            </div>
            <div class="col-lg-5 d-none d-lg-block pt-3" style="padding-left:1em;">

                <a href="#" class="text-decoration-none">
                    <h1 class="display-5 font-weight-semi-bold">Chezmoi 後台管理中心</h1>
                </a>

            </div>
            <div class="col-lg-6 d-none d-lg-block text-right mt-2 " style="padding-left:1em;">
                <span class="text-right" style="color:#393833;" id="showName"></span>
            </div>

        </div>
<%--        <div class="text-right" style="background-color: #F1EDE6;">--%>
<%--            --%>
<%--        </div>--%>

    </div>
    <!-- Topbar End -->

<script type="text/javascript">
    $(document).ready(function () {
        fetch("http://localhost:8080/Chezmoi/Back/showName")
            .then((response) => {
                return response.text();
            }).then((responseJSON) => {
            if (responseJSON != null) {
                    $('#showName').text(responseJSON + ' 管理者 ').append('<a href="${contextRoot}/Back/manager/logout" id="logout">Logout</a>')


            }
        });

    });
</script>

</body>
</html>