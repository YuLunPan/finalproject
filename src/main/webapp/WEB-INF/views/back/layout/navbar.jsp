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
<title></title>
    <script src="https://kit.fontawesome.com/fda1db8ac4.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="col-lg-3 d-none d-lg-block pt-3">
                <div class="container-fluid">
                    <ul class="p-0 menu border-left border-right">
                        <li class="p-0">
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">會員管理</a>
                            <ul class="inmenu">
                                <li><a href="${contextRoot}/Back/member/showMember"
                                        class="btn d-flex border-bottom  align-items-center justify-content-between text-black w-100">會員資料表</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">產品管理</a>
                            <ul class="inmenu">
                                <li><a href="${contextRoot}/Back/MyProduct"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">我的商品</a>
                                </li>
                            </ul>
                            <ul class="inmenu">
                                <li><a href="${contextRoot}/Back/Product/add"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">商品上架</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">結帳管理</a>
                            <ul class="inmenu">
                                <li><a href="${contextRoot}/back/shipping"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">物流管理</a>
                                </li>
                                <li><a href="${contextRoot}/back/payment"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">金流管理</a>
                                </li>
                                <li><a href="${contextRoot}/Back/Coupon"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">折扣碼設定</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">訂單管理</a>
                            <ul class="inmenu">
                                <li><a href="${contextRoot}/Back/OrderDetail"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">訂單管理</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a
                                    class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">權限管理</a>
                            <ul class="inmenu">
                                <li><a href="${contextRoot}/Back/manager"
                                       class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">權限管理</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

</body>
</html>