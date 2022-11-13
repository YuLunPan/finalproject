<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Topbar Start -->
    <div class="container-fluid align-items-center justify-content-center">
        <div class="row">
            <div class="col-lg-1 d-none d-lg-block pt-1">
                <div class="container-fluid">
                    <a href="admin_index.html" class="nav-item nav-link active"><img src="https://i.imgur.com/11vzfsu.jpg" width="50"
                            height="50"></a>

                </div>
            </div>
            <div class="col-lg-5 d-none d-lg-block pt-3" style="padding-left:1em;">

                <a href="admin_index.html" class="text-decoration-none">
                    <h1 class="display-5 font-weight-semi-bold">後台管理中心</h1>
                </a>
            </div>
        </div>

    </div>
    <!-- Topbar End -->

</body>
</html>