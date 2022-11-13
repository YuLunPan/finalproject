<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>忘記密碼</title>

    <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet">
</head>
<body>
	<div id="login-box" class="bg-secondary">
        <h1 class="text-dark">忘記密碼</h1>
        <form method="post" action="login.js">
            <p>請輸入email及手機號碼，我們將向您發送電子郵件以重置密碼。</p>
            <div>
                <input type="email" class="text-field-Register" name="customer[email]" id="email" placeholder="電子郵件"
                    inputmode="email" autocorrect="off" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
                    required="required" oninput="setCustomValidity('');"
                    oninvalid="setCustomValidity('請輸入正確的email 例：abc@gmail.com')">
            </div>

            <div>
                <input type="tel" class="text-field-Register" name="customer[phone]" id="Phone" placeholder="手機號碼"
                    inputmode="tel" autocorrect="off" required="required" maxlength="10" pattern="09\d{2}\d{6}"
                    oninput="setCustomValidity('');" oninvalid="setCustomValidity('請輸入正確的手機號碼格式：09xxxxxxxx');">
            </div>

            <div>
                <input type="button" id="btn-login" class="btn-primary text-dark" value="提交"
                    onclick="myFunction()">
                <script>
                    function myFunction() {

                        alert("已向您發送一封電子郵件，點擊其中的鏈接以便更新您的密碼。");
                        location.href = "login.html"
                    }
                </script>
            </div>
            <p>
                <a href="login.html" class="text-primary">取消</a>
            </p>

        </form>
    </div>
</body>
</html>