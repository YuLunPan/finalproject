<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密碼</title>
</head>
<body>
<div id="login-box" class="bg-secondary">
        <form:form action="${pageContext.request.contextPath}/member/changePassword" method="post"
            modelAttribute="changePassword">

            <h1 class="text-dark">修改密碼</h1>
            <form method="post" action="login.js">
                <p>請輸入新密碼。</p>
                <div>
                    <input type="password" class="text-field-Register" name="password" path="password" id="password"
                        placeholder="密碼" pattern="^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$" required="required"
                        oninput="setCustomValidity('');" oninvalid="setCustomValidity('請輸入正確的密碼格式：需含英數至少六個字元')"
                        required="required" autocomplete>
                </div>

                <div>
                    <a href="${pageContext.request.contextPath}/member/editPassword?email=${editPassword.email}&phone=${editPassword.phone}"
                        id="btn-login" class="btn-primary text-dark" value="提交" onclick="myFunction()">提交</a>
                </div>
                <p>
                    <a href="login.html" class="text-primary">取消</a>
                </p>

            </form>
        </form:form>
    </div>
</body>
</html>