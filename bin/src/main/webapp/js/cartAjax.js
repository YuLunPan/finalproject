   //cart頁面用ajax
   
   				//頁面自動刷新
   				window.onload = function() {
					    if(!window.location.hash) {
					        window.location = window.location + '#loaded';
					        window.location.reload();
					    }
				}	
   					
   					
   				//運費選擇(剛進頁面時)			
   				 $(document).ready(function () {
                        var select = document.getElementById("shippingWay");
                        var index = select.selectedIndex;
                        var value = parseInt(select.options[index].getAttribute("id"));
                        $('#deliveryFee').text(value);
                        var cartTotal = parseInt($('#cartTotal').text());
                        var paramDiscount = $('#discount').text()
                        if (paramDiscount.length == 0) {
                            var noDiscount = $('#discount').text(0);
                            var discount = parseInt($('#discount').text());
                            $('#subTotal').text(cartTotal + value - discount);
                        } else {
                            var discount = parseInt($('#discount').text());
                            $('#subTotal').text(cartTotal + value - discount);
                        }
                   })
                    
                   //運費選擇(換另外一種運送方式時) 
                    function changeDeliveryFee() {
                        var select = document.getElementById("shippingWay")
                        var index = select.selectedIndex;
                        var value = parseInt(select.options[index].getAttribute("id"));
                        $('#deliveryFee').text(value);
                        var cartTotal = parseInt($('#cartTotal').text());
                        var paramDiscount = $('#discount').text()
                        if (paramDiscount.length == 0) {
                            var noDiscount = $('#discount').text(0);
                            var discount = parseInt($('#discount').text());
                            $('#subTotal').text(cartTotal + value - discount);
                        } else {
                            var discount = parseInt($('#discount').text());
                            $('#subTotal').text(cartTotal + value - discount);
                        }
                    }
   
   
                //價錢計算,數量減少
                $(document).ready(function () {
	                $(".numberMinus").click(function () {
	                	 var num = parseInt($(this).siblings(".textNum").val());
	                	 var productId = $(this).parent().parent().prev().prev().prev().prev().prev().text();
	                	 var productPrice = parseInt($(this).parent().parent().next().text());
	                	 var productTotal = parseInt($(this).parent().parent().next().next().text());
	                	 var cartTotal = parseInt($('#cartTotal').text());
	                	 var subTotal = parseInt($('#subTotal').text());
	                	 if(num !=1){
		                	 num--;
		                	 var newTotal = parseInt(num*productPrice);
		                	 $(this).siblings(".textNum").val(num);
		                	 $(this).parent().parent().next().next().text(num*productPrice);
		                	 parseInt($('#cartTotal').text(cartTotal-productPrice));
		                	 $('#subTotal').text(subTotal-productPrice);
	                	 }else{
	                	 	num=1;
	                	 	 var newTotal = parseInt(num*productPrice);
	                	 	 productTotal =productTotal;
	                	 	 cartTotal = cartTotal;
	                	 }
	                	 var dtoObject = {
	                                'quantity': num,
	                                'total': newTotal,
	                                'productId': productId,
	                     };
	                     var dtoJson = JSON.stringify(dtoObject);

	                     $.ajax({
	                                url: 'http://localhost:8080/Chezmoi/api/updateCart',
	                                contentType: 'application/json; charset=UTF-8',
	                                dataType: 'json',
	                                method: 'post',
	                                data: dtoJson,
	                     })
	                })
                
	                //價錢計算,數量增加
	                $(".numberPlus").click(function () {
	                	 var num = parseInt($(this).siblings(".textNum").val());
	                	 var productId = ($(this).parent().parent().prev().prev().prev().prev().prev().text());
	                	 var productPrice = parseInt($(this).parent().parent().next().text());
	                	 var productTotal = parseInt($(this).parent().parent().next().next().text());
	                	 var cartTotal = parseInt($('#cartTotal').text());
	                	 var subTotal = parseInt($('#subTotal').text());
	                	 num++;
	                	 var newTotal =  parseInt(num*productPrice);
	                	 $(this).siblings(".textNum").val(num);
	                	 $(this).parent().parent().next().next().text(num*productPrice);
	                	 $('#cartTotal').text(cartTotal+productPrice);
	                	 $('#subTotal').text(subTotal+productPrice);
	                	 
	                	 var dtoObject = {
	                                'quantity': num,
	                                'total': newTotal,
	                                'productId': productId,
	                       };
	                      var dtoJson = JSON.stringify(dtoObject);

	                            $.ajax({
	                                url: 'http://localhost:8080/Chezmoi/api/updateCart',
	                                contentType: 'application/json; charset=UTF-8',
	                                dataType: 'json',
	                                method: 'post',
	                                data: dtoJson,
	                      })
	                })
                })
                
                
                	//傳送shippingWay,paymentWay,couponCode,subtotal到後端
                    $(document).ready(function () {
                        $('#nextStep').click(function () {
                            //選shippingWay的id
                            var shippingId = parseInt($("#shippingWay").val());

                            //選paymentWay的id
                            var paymentId = parseInt($("#paymentWay").val());

                            //選總金額
                            var total = parseInt($('#subTotal').text());
                            
                            //選折扣碼
                            var couponCode = $('.couponCode').text();

                            var dtoObject = {
                                'shippingId': shippingId,
                                'paymentId': paymentId,
                                'total': total,
                                'couponCode':couponCode
                            };
                            var dtoJson = JSON.stringify(dtoObject);

                            $.ajax({
                                url: 'http://localhost:8080/Chezmoi/api/postOrders',
                                contentType: 'application/json; charset=UTF-8',
                                dataType: 'json',
                                method: 'post',
                                data: dtoJson,
                            })
                        })
                    })