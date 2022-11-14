<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>忘記密碼</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                    crossorigin="anonymous">
                <!-- <link href="${contextRoot}/css/register.css" rel="stylesheet"> -->

                <link href="${contextRoot}/datePick/css/charliecss.css" rel="stylesheet">
            </head>

            <body>
                <div id="login-box" class="container">
                    <div class="container" id="login-inside">
                            <h1 class="text-dark">忘記密碼</h1>
                                <p style="text-align:center;">請輸入email，將寄出驗證碼信件，重置密碼。</p>

                                <div class="row">
                                    <div class="col">
                                        <div style="margin-bottom: 0.5rem;">
                                            <input type="email" class="text-field" name="email" id="email"
                                                placeholder="電子郵件" inputmode="email" autocorrect="off"
                                                pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required="required"
                                                oninput="setCustomValidity('');"
                                                oninvalid="setCustomValidity('請輸入正確的email 例：abc@gmail.com')">
                                        </div>
                                    </div>
                                </div>
                                <div class="row" >
                                    <div class="col d-flex" style="justify-content:center;">
                                        <input type="submit" class="btn-primary text-dark" id="emailinfo" value="提交">
                                	</div>
                                </div>
                                
                                <div class="row" style="margin-bottom: 0.5rem;">
                                    <div class="col">
                                        <div>
                                            <input type="tel" class="text-field" id="verify" name="randomString" placeholder="驗證碼" autocorrect="off">
                                        	<input type="hidden" name="email" id="hiddenemail" value="">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col d-flex" style="justify-content:center ;">
                                        <input type="submit" class="btn-primary text-dark" id="vbtn" value="驗證">
                                    </div>
                                </div>
                                <div class="row my-0">
                                    <div class="col d-flex" style="justify-content:center;">
                                        <a href="${contextRoot}/member/login" id="customer_register_link"
                                            class="text-primary">取消</a>
                                    </div>
                                </div>
                    </div>
                </div>
            </body>
          <script
			  src="https://code.jquery.com/jquery-3.6.1.js"
			  integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
			  crossorigin="anonymous">
          </script>
          
          <script>
          
            $("#emailinfo").click(function () {
            	let emailText = {};
            	emailText.email=$("#email").val();
           		let email = JSON.stringify(emailText);
           		console.log(email);
                $.ajax({
                  url: '/Chezmoi/sendVerify',
                  method: 'post',
                  contentType: 'application/json;charset=UTF-8',
                  data: email,
                  success: function (result) {
                	alert("已向您發送一封電子郵件，請輸入驗證碼，以便更新您的密碼。");
                  	if(result.sendOK != null){
      	              	$('#emailerr').text(result.sendOK).css('color', 'green');
                  	}else if(result.emailError != null){
                  		$('#emailerr').text(result.emailError).css('color', 'red');
                  	}else{
                  		$('#emailerr').text(result.unexpectError).css('color', 'red');
                  	}
                  },
                  error: function () {
                	alert("寄出驗證碼信件失敗!");
                    $('#emailerr').text("送出失敗").css('color', 'red');
                  }
                })
              })
              
              
              $("#vbtn").click(function () {
            	  let emailText = {};
             	  let email = JSON.stringify(emailText);
		          let val = $('#verify').val();
		          $.ajax({
		            url: '/Chezmoi/checkString',
		            method: 'post',
		            data: { "randomString": val },
		            success: function (result) {
		              alert("驗證成功，請輸入新密碼。");
		              if (result.OK != null) {
		                document.location.href = "/Chezmoi/updatepassword";
		              } else {
		                $('#verifyerror').text(result.Fail).css('color', 'red');
		              }
		              $('#hiddenemail').val(emailText);
		            },
		            error: function () {
		              alert("驗證失敗，請再次確認驗證碼。");
		              $('#verifyerror').text("驗證失敗").css('color', 'red');
		            }
		          })
		        })
            </script>

            </html>