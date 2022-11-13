<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Login</title>
    <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet">
    <!-- onclick="location.href='要前往的網頁連結'" -->
</head>
<body>
<div id="login-box" class="bg-secondary">

	<form:form action="loginsubmit" method="post" modelAttribute="loginsubmit">
        <h1 class="text-dark">Login</h1>
        
        <h5 class="Msg">${param.Msg}</h5>
        <form method="post" action="login.js">
            <div>
                <input type="text" name="email" class="text-field" placeholder="e-mail" />
            </div>
            <br>
            <div>
                <input type="password" name="password" class="text-field" placeholder="password" />
            </div>
            <br>
            <div>
                <a id="forget-pwd" class="text-primary" href="forgotpassword.html">忘記密碼？</a>
            </div>
            <br>
            <div>
                <input type="submit" id="btn-login" class="btn-primary text-dark" value="登入">
            </div>
            <p class="text-center">
                <a href="${pageContext.request.contextPath}/member/register" id="customer_register_link" class="text-primary">註冊帳號</a>
            </p>

            <p>
                <a href="${pageContext.request.contextPath}/" class="text-primary">返回首頁</a>
            </p>

        </form>
    </form:form>
    </div>
</body>
</html>