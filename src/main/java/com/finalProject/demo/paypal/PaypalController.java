package com.finalProject.demo.paypal;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalProject.demo.mail.EmailSenderSerivce;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.model.entity.order.OrderDetail;
import com.finalProject.demo.model.entity.order.Orders;
import com.finalProject.demo.model.entity.order.Payment;
import com.finalProject.demo.model.entity.order.Shipping;
import com.finalProject.demo.service.member.MemberService;
import com.finalProject.demo.service.order.OrdersService;
import com.paypal.api.payments.Links;
import com.paypal.base.rest.PayPalRESTException;


@Controller
@SessionAttributes("Member")
public class PaypalController {

	@Autowired
	PaypalService paypalService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private EmailSenderSerivce emailSenderSerivce;
	
	public static final String SUCCESS_URL = "cart/paypal/success";
	public static final String CANCEL_URL = "cart/paypal/cancel";

	//顯示paypal頁面
	@GetMapping("/cart/paypal")
	public String view(Model model) {
		//送出空白表單
		model.addAttribute("order",new Order());
		//找orderDetail
//		Member member = memberService.findById(1L);
		Member member =(Member) model.getAttribute("Member");
		List<Orders> findOrders = ordersService.findOrderByMember(member);
		int last = findOrders.size()-1;
		Orders order = findOrders.get(last);
		String orderState = order.getOrderState();
		Payment payment = order.getPayment();
		String paymentWay = payment.getPaymentWay();
		String state = "已付款";
		String way="paypal線上付款(全額付清)-搭配7-11取貨";
		if(orderState.equals(state) || !(paymentWay.equals(way))) {
			return "front/cart/cancel";
		}
		model.addAttribute("Order",order);
		Long orderId = order.getOrderId();
		List<OrderDetail> findOrderDetail = ordersService.findOrderDetail(orderId);
		model.addAttribute("OrderDetail",findOrderDetail);
		return "front/cart/cart_paypal";
	}
	
	//送出paypal表單
	@PostMapping("/cart/paypal")
	public String payment(@ModelAttribute(name = "order") Order order) {
		 try {
			com.paypal.api.payments.Payment payment= paypalService.createPayment(order.getPrice() , order.getCurrency(), order.getMethod(), order.getIntent(), order.getDescription(), 
					"http://localhost:8080/Chezmoi/"+CANCEL_URL, "http://localhost:8080/Chezmoi/"+SUCCESS_URL);
			for(Links link:payment.getLinks()) {
				if(link.getRel().equals("approval_url")) {
					return "redirect:"+link.getHref();
				}
			}
		 } catch (PayPalRESTException e) {

			e.printStackTrace();
		}
		 return "redirect:/cart/paypal";
	}
	
	//paypal付款失敗頁面
	@GetMapping(value = CANCEL_URL)
    public String cancelPay() {
        return "front/cart/cancel";
    }

	//paypal付款成功頁面
    @GetMapping(value = SUCCESS_URL)
    public String successPay(@RequestParam("paymentId") String paymentId, 
    						 @RequestParam("PayerID") String payerId,
    						 Model model) {
        try {
            com.paypal.api.payments.Payment payment = paypalService.executePayment(paymentId, payerId);
            System.out.println(payment.toJSON());
            if (payment.getState().equals("approved")) {
            	Member member =(Member) model.getAttribute("Member");
        		List<Orders> findOrders = ordersService.findOrderByMember(member);
        		int last = findOrders.size()-1;
        		Orders order = findOrders.get(last);
        		order.setOrderState("已付款");
        		ordersService.insert(order);
        		//發送付款完成信
        		String email = member.getEmail();
        		String memberName = member.getMemberName();
        		Date orderDate = order.getOrderDate();
        		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm");
        		String date = dateFormat.format(orderDate);
        		Long newOrderId=order.getOrderId();
        		Integer total = order.getTotal();
        		String orderState = order.getOrderState();
        		
        		String text1 ="親愛的買家"+" "+memberName+" "+"您好，您於Chezmoi韓國女裝訂購的新訂單已付款成功，";
        		String text2 ="訂單編號:"+newOrderId;
        		String text3 ="訂單日期:"+date;
        		String text4 ="訂單總金額:"+total;
        		String text5 ="訂單狀態:"+orderState;
        		String text6 ="我們會盡速至paypal確認您的款項，待款項確認後將商品出貨，謝謝您的購買。";
        		emailSenderSerivce.sendPaymentMail(email, "您於Chezmoi韓國女裝訂購的新訂單，訂單編號:"+newOrderId+"已付款成功",text1,
        				text2,text3,text4,text5,text6);
                return "front/cart/success";
            }
        } catch (PayPalRESTException e) {
         System.out.println(e.getMessage());
        }
        return "redirect:/cart/paypal";
    }
    
  //現在的會員是誰
  	@ModelAttribute("Member")
  	public Member viewMember(HttpServletRequest request) {
  		//取得memberId
  		String stringId = String.valueOf(request.getAttribute("memberId"));
  		Long memberId = Long.valueOf(stringId);
  		Member memberLogin = memberService.findById(memberId);
  		return memberLogin;
  	}
    
}
