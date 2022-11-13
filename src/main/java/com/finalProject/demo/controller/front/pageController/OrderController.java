package com.finalProject.demo.controller.front.pageController;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.finalProject.demo.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.model.entity.order.OrderDetail;
import com.finalProject.demo.model.entity.order.Orders;
import com.finalProject.demo.model.entity.order.Payment;
import com.finalProject.demo.model.entity.order.Shipping;
import com.finalProject.demo.service.order.OrdersService;

import javax.servlet.http.HttpServletRequest;

@Controller
//@SessionAttributes("Member")
public class OrderController {

	@Autowired
	private  OrdersService ordersService;

	@Autowired
	private MemberService memberService;
	
	//顯示所有訂單
	@GetMapping("/member/order")
	public String viewAllOrder(HttpServletRequest request, Model model) {
//		Member member=(Member) model1.getAttribute("Member");
		//取得memberId
		String stringId = String.valueOf(request.getAttribute("memberId"));
		Long memberId = Long.valueOf(stringId);
		//取得member
		Member member = memberService.findById(memberId);
		//findOrderByMember
		List<Orders> orders = ordersService.findOrderByMember(member);
		if(orders == null) {
			return "front/member/orderNotFound";
		}
		List<String> dates = new ArrayList<>();
		model.addAttribute("Orders",orders);
		for(Orders order: orders) {
			Date orderDate = order.getOrderDate();
			 SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm");
			 String date = dateFormat.format(orderDate);
			 dates.add(date);
		}
		model.addAttribute("Date",dates);
		List<Shipping> shippings = new ArrayList<>();
		List<Payment> payments = new ArrayList<>();
		for(Orders order:orders) {
			Shipping shipping = order.getShipping();
			shippings.add(shipping);
			Payment payment = order.getPayment();
			payments.add(payment);
		}
		model.addAttribute("Shipping",shippings);
		model.addAttribute("Payment",payments);
		return "front/member/order";
	}
	//點一下訂單後,查看orderDetail
	@GetMapping("/member/orderDetail")
	public String viewOrderDetail(Model model,
			@RequestParam("id") Long id) {
		List<OrderDetail> findOrderDetail = ordersService.findOrderDetail(id);
		model.addAttribute("OrderDetail",findOrderDetail);
		return "front/member/orderDetail";
	}
	
	
	//現在的會員是誰
//	@ModelAttribute("Member")
//	public Member viewMember(Model model) {
//		Member memberLogin = new Member();
//		memberLogin.setMemberId(2L);
//		return memberLogin;
//	}
}
