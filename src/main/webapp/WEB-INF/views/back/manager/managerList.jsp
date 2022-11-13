<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
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
    <link href="img/logo.jpg" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <script src="https://kit.fontawesome.com/fda1db8ac4.js" crossorigin="anonymous"></script>

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/css/back_style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/admin_style.css" rel="stylesheet">
    <style>
        li,
        ul {
            list-style: none;
            padding: 0%;
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
                <div class="col-lg-12 border-secondary  border mb-5 mt-3" style="padding-left: 0; padding-right:0;">

                    <div class="card-header border bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">管理員權限</h4>
                    </div>
                    <div><a href="${contextRoot}/Back/manager/register"><button class="btn btn-primary rounded-sm ml-4 mt-4">新增權限</button></a></div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center mb-0">
                                <thead class="bg-secondary text-dark">
                                    <tr>
                                        <th>管理者ID</th>
                                        <th>姓名</th>
                                        <th>電話</th>
                                        <th>帳號</th>
                                        <th>刪除</th>
                                    </tr>
                                </thead>
                                
                                <c:forEach var="mana" items="${page.content}" >
                                <tbody class="align-middle">
                                    <tr>
                                        <td class="align-middle">${mana.managerId}</td>
                                        <td class="align-middle">${mana.managerName}</td>
                                        <td class="align-middle">${mana.phone}</td>
                                        <td class="align-middle">${mana.email}</td>
                                        <td><a href="${contextRoot}/Back/manager/delete/${mana.managerId}"onClick="return confirm(`確定要刪除此管理員嗎?`);"><i class="fa-solid fa-trash-can"></i></a></td>
                                    </tr>
                                </tbody>
                                </c:forEach>
                            </table>
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
        <script src="${pageContext.request.contextPath}/lib/easing/easing.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="${pageContext.request.contextPath}/mail/jqBootstrapValidation.min.js"></script>
        <script src="${pageContext.request.contextPath}/mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
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
</body>

</html>