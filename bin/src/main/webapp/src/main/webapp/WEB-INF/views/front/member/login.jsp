<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <h1 class="text-dark">Login</h1>
        <form method="post" action="login.js">
            <div>
                <input type="text" id="email" class="text-field" placeholder="e-mail" />
            </div>
            <div>
                <input type="password" id="password" class="text-field" placeholder="password" />
            </div>
            <div>
                <a id="forget-pwd" class="text-primary" href="forgotpassword.html">忘記密碼？</a>
            </div>
            <br>
            <div>
                <input type="button" id="btn-login" class="btn-primary text-dark" value="登入">
            </div>
            <p class="text-center">
                <a href="register.html" id="customer_register_link" class="text-primary">註冊帳號</a>
            </p>

            <p>
                <a href="index.html" class="text-primary">返回首頁</a>
            </p>

        </form>
    </div>
    
</body>
</html>