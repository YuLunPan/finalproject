package com.finalProject.demo.controller.front.cartManagerment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalProject.demo.model.dto.OrdersDto;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.model.entity.order.Coupon;
import com.finalProject.demo.model.entity.order.Orders;
import com.finalProject.demo.model.entity.order.Payment;
import com.finalProject.demo.model.entity.order.Shipping;
import com.finalProject.demo.service.member.MemberService;
import com.finalProject.demo.service.order.CouponService;
import com.finalProject.demo.service.order.OrdersService;
import com.finalProject.demo.service.order.PaymentService;
import com.finalProject.demo.service.order.ShippingService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

@Controller
@SessionAttributes("Member")
public class SetOrderController {
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private ShippingService shippingService;
	
	@Autowired
	private OrdersService oService;
	
	@Autowired
	private CouponService couponService;
	
	@Autowired
	private MemberService memberService;
	
	//用ajax傳送選擇的付款方式,運送方式,總金額並insert成新訂單
		@PostMapping("/api/postOrders")
		public Orders postOrdersApi(@RequestBody OrdersDto dto,
				Model model){
			
			//取得dto資料
			Integer paymentId = dto.getPaymentId();
			Payment payment = paymentService.findById(paymentId);
			Integer shippingId = dto.getShippingId();
			Shipping shipping = shippingService.findById(shippingId);
			Integer total = dto.getTotal();
			String couponCode = dto.getCouponCode();
			Coupon coupon = couponService.findByCouponCode(couponCode);
			//取得會員
			Member memberLogin =(Member) model.getAttribute("Member");
			assert memberLogin != null;
			//取得會員最新一筆訂單
			List<Orders> orders = oService.findOrderByMember(memberLogin);
			//情況1.無歷史訂單時新增訂單
			if(orders == null) {
				Orders order = new Orders();
				order.setPayment(payment);
				order.setShipping(shipping);
				order.setTotal(total);
				order.setCoupon(coupon);
				order.setMember(memberLogin);
				order.setShipName("");
				order.setShipPhone("");
				order.setStoreName("");
				order.setStoreNumber("");
				oService.insert(order);
				return order;
			}else {
				Integer last =orders.size()-1;
				Orders findTopOrder = orders.get(last);
				
				//情況2.要回上一步重新選擇付款跟運送時
				String orderState = findTopOrder.getOrderState();
				if(orderState==null) {
					findTopOrder.setPayment(payment);
					findTopOrder.setShipping(shipping);
					findTopOrder.setTotal(total);
					findTopOrder.setCoupon(coupon);
					findTopOrder.setMember(memberLogin);
					findTopOrder.setShipName("");
					findTopOrder.setShipPhone("");
					findTopOrder.setStoreName("");
					findTopOrder.setStoreNumber("");
					oService.insert(findTopOrder);
					return findTopOrder;
				}
				//情控3.新增一筆訂單
				Orders order = new Orders();
				order.setPayment(payment);
				order.setShipping(shipping);
				order.setTotal(total);
				order.setCoupon(coupon);
				order.setMember(memberLogin);
				order.setShipName("");
				order.setShipPhone("");
				order.setStoreName("");
				order.setStoreNumber("");
				oService.insert(order);
				return order;
			}
		}
		
		
		//現在的會員是誰
		@ModelAttribute("Member")
		public Member viewMember(Model model, HttpServletRequest request) {
			//取得memberId
			String stringId = String.valueOf(request.getAttribute("memberId"));
			Long memberId = Long.valueOf(stringId);
			Member memberLogin = memberService.findById(memberId);
			return memberLogin;
		}

}
