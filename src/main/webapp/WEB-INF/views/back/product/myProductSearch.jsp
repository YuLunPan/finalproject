<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="utf-8">
                    <title>Chezmoi 後台管理中心</title>
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                    <meta content="Free HTML Templates" name="keywords">
                    <meta content="Free HTML Templates" name="description">

                    <!-- Favicon -->
                    <link href="${contextRoot}/img/logo.jpg" rel="icon">

                    <!-- Google Web Fonts -->
                    <link rel="preconnect" href="https://fonts.gstatic.com">
                    <link
                        href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
                        rel="stylesheet">

                    <!-- Font Awesome -->
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                        rel="stylesheet">

                    <!-- Libraries Stylesheet -->
                    <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

                    <!-- Customized Bootstrap Stylesheet -->
                    <link href="${contextRoot}/css/back_style.css" rel="stylesheet">

                    <style>
                        li,
                        ul {
                            list-style: none;
                            padding: 0;
                        }

                        li,
                        ul {
                            list-style: none;
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
                                <div class="col-lg-12 border-secondary  border mb-5 mt-3"
                                    style="padding-left: 0; padding-right:0;">
                                    <div class="card-header bg-secondary border-0">
                                        <h4 class="font-weight-semi-bold m-0">我的商品</h4>
                                    </div>
                                    <div class="card-body border-bottom">
				
                                        <form:form class="btn-block" action="${contextRoot}/Back/MyProduct/findByProductIdLike"  method="post">
                                            <div class="input-group justify-content-between ">
                                                
                                                <input type="text" class="form-control p-4 m-1" placeholder="search ProductId" name="search">
                                                <div class="submit">
                                                    <input class="btn-primary m-1 rounded-sm border-1" type="submit"
                                                        value="search">
                                                </div>
                                            </div>

                                        </form:form>
                                        
 
                                        
                                    </div>

                                    <div class="container-fluid row px-xl-4 ">
                                        <div class="row  px-xl-3  pt-3 ">

                                            <div class="col-lg-12">
                                                <nav
                                                    class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                                                    <div class="collapse navbar-collapse  justify-content-between"
                                                        id="navbarCollapse">
                                                        <div class="mr-auto py-0">
                                                            <ul class="nav navbar-nav">
                                                                <li class="active mr-3">
                                                                    <a href="${contextRoot}/Back/MyProduct">
                                                                        <button class="btn btn-sm btn-primary">全部商品</button></a>
                                                                </li>
                                                                <li class="dropdown mr-3">
                                                                    <a href="" class="dropdown-toggle"
                                                                        data-toggle="dropdown">
                                                                        按分類顯示
                                                                        <b class="caret"></b>
                                                                    </a>
                                                                    <ul class="dropdown-menu">
                                                                        <li class="dropdown-item"><a href="#"
                                                                                id="loadTopData">TOP</a>
                                                                        </li>
                                                                        <li class="dropdown-item"><a href="#"
                                                                                id="loadBottomData">BOTTOM</a>
                                                                        </li>
                                                                        <li class="dropdown-item"><a href="#"
                                                                                id="loadDressData">DRESS</a>
                                                                        </li>
                                                                        <li class="dropdown-item"><a href="#"
                                                                                id="loadOuterData">OUTER</a>
                                                                        </li>
                                                                        <li class="dropdown-item"><a href="#"
                                                                                id="loadAccData">ACCESSORITIES</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li class="active mr-3"><a href="#"
                                                                        id="stateOnData">已上架商品</a></li>
                                                                <li class="active mr-3"><a href="#"
                                                                        id="stateOffData">未上架商品</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="">
                                                            <button class="btn btn-primary rounded-sm" type="button"
                                                                onclick="deleteUser()"
                                                                name="creatProduct" id="creatProduct">全部刪除
                                                            </button>
                                                        </div>
                                                    </div>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 border-secondary  mb-5 mt-3"
                                        style="padding-left: 0; padding-right:0;">
                                        <div class="row px-xl-4 table-responsive p-0 m-0">
                                            <table class="table table-bordered text-center mb-5" id="table_contain">
                                                <thead class="bg-secondary text-dark">
                                                    <tr>
                                                        <th>選取</th>
                                                        <th>商品圖片</th>
                                                        <th>商品編號</th>
                                                        <th>商品名稱</th>
                                                        <th>顏色</th>
                                                        <th>尺寸</th>
                                                        <th>單價</th>
                                                        <th>狀態</th>
                                                        <th>修改</th>
                                                        <th>刪除</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="align-middle" id="tbody">
                                                <c:forEach var="product" items="${list}">
                                                    <tr class="text-center">
                                                        <td><input type="checkbox" id="checkb" name="checkb" style="zoom:150%" value="${product.productId}"></td>
                                                        <td class="align-middle">
                                                        <img src="http://localhost:8080/Chezmoi/getMainPic/${product.photo.photoId}" style="width: 80px;height:auto">
                                                        </td>
                                                        <td class="align-middle">${product.productId}</td>
                                                        <td class="align-middle" >${product.name}</td>
                                                        <td class="align-middle" >${product.color}</td>
                                                        <td class="align-middle" >${product.size}</td>
                                                        <td class="align-middle" >${product.price}</td>
                                                        <td class="align-middle" >${product.productState}</td>
                                                        <td class="align-middle"><a href="MyProduct/edit/${product.productId}"><button class="btn btn-sm btn-primary">修改</button></a></td>
                                                        <td class="align-middle"><a id="remove" href="MyProduct/delete/${product.productId}"  onClick="return confirm(`確定要刪除此商品嗎?`);" ><button class="btn btn-sm btn-primary">刪除</button></a></td>
                                                    </tr>
                                                </c:forEach>

                                                </tbody>
                                            </table>
                                            

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <c:if test="${param.msg!='' && !(empty param.msg) }"><script>confirm("${param.get("msg")}");</script></c:if>
                    <!-- Back to Top -->
                    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>
                    <!-- JavaScript Libraries -->
                    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                    <script
                        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
                    <script src="${contextRoot}/lib/easing/easing.min.js"></script>
                    <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

                    <!-- Contact Javascript File -->
                    <script src="${contextRoot}/mail/jqBootstrapValidation.min.js"></script>
                    <script src="${contextRoot}/js/main.js"></script>
                    <script src="${contextRoot}/js/jquery-3.1.1.min.js"></script>
                    <!-- Template Javascript -->
                    <script src="${contextRoot}/js/getProductAjax.js"></script>
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
                       <script>
                  //批次删除
                    function deleteUser(){
                      if(!confirm("確定要刪除這些商品嗎？")){
                        return ;
                      }
                      var cks=document.getElementsByName("checkb");
                      var str="/deleteAll/";
                      for(var i=0;i<cks.length;i++){
                        if(cks[i].checked){
                          str+=cks[i].value+",";
                        }
                      }
                      //去掉String最後的‘,’
                      str=str.substring(0, str.length-1);
                      window.location.href="http://localhost:8080/Chezmoi/Back/MyProduct"+str;
                    }
                    </script>

                </body>

                </html>