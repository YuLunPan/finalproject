<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!-- <script src="https://code.jquery.com/jquery-3.6.1.js"
        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">


    <link href="${pageContext.request.contextPath}/datePick/css/bootstrap-datepicker3.standalone.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/datePick/css/charliecss.css" rel="stylesheet">
    <!-- <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet"> -->
    <title>註冊</title>

</head>

<body>

<div id="login-box" class=" container">


    <div class="container" id="login-inside">
        <h1>Register</h1>
        <h5 class="Msg">${Msg}</h5>
        <form:form action="${pageContext.request.contextPath}/Back/manager/register" method="post"
                   modelAttribute="manager">

                <div class="row">
                    <div class="col">

                        <input type="text" class="text-field-Register" name="managerName" path="managerName"
                               id="name" placeholder="中文姓名" minlength="2" required="required" autofocus
                               oninput="setCustomValidity('');" oninvalid="setCustomValidity('請輸入正確的姓名');">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <input type="tel" class="text-field-Register" name="phone" path="phone" id="phone"
                               placeholder="手機號碼" inputmode="tel" autocorrect="off" required="required"
                               maxlength="10" pattern="09\d{2}\d{6}" oninput="setCustomValidity('');"
                               oninvalid="setCustomValidity('請輸入正確的手機號碼格式：09xxxxxxxx');">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <input type="email" class="text-field-Register" name="email" path="email" id="email"
                               placeholder="電子郵件" inputmode="email" autocorrect="off"
                               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required="required"
                               oninput="setCustomValidity('');"
                               oninvalid="setCustomValidity('請輸入正確的email 例：abc@gmail.com')">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <input type="password" class="text-field-Register" name="password" path="password"
                               id="password" placeholder="密碼" pattern="^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$"
                               required="required" oninput="setCustomValidity('');"
                               oninvalid="setCustomValidity('請輸入正確的密碼格式：需含英數至少六個字元')" required="required"
                               autocomplete>
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
                    <div class="col d-flex" style="justify-content:center ;">
                        <input type="submit" id="btn_create_acc" class="btn-primary text-dark" value="註冊">
                    </div>
                </div>

                <div class="row mt-2"style="margin: 0">
                    <div class="col">
                        <p class="text-center " style="padding: 0">
                            <a href="${pageContext.request.contextPath}/Back/manager/login"
                               id="customer_register_link" class="text-primary">登入帳號</a>
                        </p>
                    </div>
                </div>
        </form:form>
    </div>

</div>
<!-- <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <script src="https://cdn.bootcss.com/moment.js/2.18.1/moment-with-locales.min.js"></script> -->


<script src="https://code.jquery.com/jquery-3.6.1.js"
        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>

<script type="text/javascript"
        src="${pageContext.request.contextPath}/datePick/js/bootstrap-datepicker.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/datePick/js/bootstrap-datepicker.zh-TW.min.js"></script>
<script>
    $('#sandbox-container .input-group.date').datepicker({
        format: "yyyy-mm-dd",
        todayBtn: 'linked',
        language: "zh-TW",
        autoclose: true,
        startDate:"-80y",
        endDate:"1"
    });

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