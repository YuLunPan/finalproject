<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>修改密碼</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                    crossorigin="anonymous">
                <link href="${pageContext.request.contextPath}/datePick/css/charliecss.css" rel="stylesheet">

<%--                 <link href="${contextRoot}/css/register.css" rel="stylesheet"> --%>
            </head>

            <body>
                <div id="login-box" class="container">

                    <div class="container" id="login-inside">

                        <h1 class="text-dark">修改密碼</h1>

                        <form:form action="${contextRoot}/member/updatepassword" method="post"
                            modelAttribute="updatepassword">
                                <input type="hidden" name="memberId" path="memberId" value="${mb.memberId}">
                                <p style="text-align:center ;">請輸入新密碼。</p>
                                <div class="row" style="margin-bottom: 0.5rem;">
                                    <div class="col">
                                        <div>
                                            <input type="password" class="text-field-Register" name="password"
                                                path="password" id="password" placeholder="new password"
                                                pattern="^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$" required="required"
                                                oninput="setCustomValidity('');"
                                                oninvalid="setCustomValidity('請輸入正確的密碼格式：需含英數至少六個字元')"
                                                required="required" autocomplete>
                                        </div>
                                    </div>
                                </div>
                                <div class="row my-0">
                                    <div class="col">
                                        <div style="display: flex;
                                        align-items: center;justify-content: end;">
                                            <input type="checkbox" style="width:1rem ;" onclick="myFunction()" name=""
                                                id="pwd_show" value="">
                                            <label style="    margin-left: 0.5rem;" class="" for="pwd_show">顯示密碼</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col  d-flex" style="justify-content:center ;">
                                        
                                            <input type="submit" id="btn-login" class="btn-primary text-dark" value="提交">

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col d-flex" style="justify-content:center ;">
                                        <a href="${contextRoot}/member/login" class="text-primary">取消</a>
                                    </p>
                                    </div>
                                </div>
                                <p>

                        </form:form>
                    </div>
                </div>
                <script>
//                     function myFunction() {
//                         alert("更新成功!");
//                     }
                    
                    function myFunction() {
                        var x = document.getElementById("password");
                        if (x.type === "password") {
                            x.type = "text";
                        } else {
                            x.type = "password";
                        }
                    }
                </script>
            </body>

            </html>