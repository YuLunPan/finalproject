package com.finalProject.demo.controller.front.cartManagerment;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalProject.demo.mail.EmailSenderSerivce;
import com.finalProject.demo.model.entity.cart.Cart;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.model.entity.order.OrderDetail;
import com.finalProject.demo.model.entity.order.Orders;
import com.finalProject.demo.model.entity.order.Payment;
import com.finalProject.demo.model.entity.order.Shipping;
import com.finalProject.demo.service.cart.CartService;
import com.finalProject.demo.service.member.MemberService;
import com.finalProject.demo.service.order.OrderDetailService;
import com.finalProject.demo.service.order.OrdersService;

@Lazy
@Controller
@SessionAttributes("Member")
public class AddOrderController {
	
	@Autowired
	private OrdersService oService;
	
	@Autowired
	private CartService cService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private OrderDetailService odService;
	
	@Autowired
	private EmailSenderSerivce emailSenderSerivce;
	
	//送出空白訂單表單
	@GetMapping("/cartOrderDetail")
	public String viewInputOrderDetail(HttpServletRequest request,Model model){
//		//取得member
//		Member member = memberService.findById(memberId);
		Member member = (Member) model.getAttribute("Member");
		model.addAttribute("Member",member);
		assert member != null;
		List<Cart> findCart = cService.findByMemberId(member);
		List<Orders> findOrders = oService.findOrderByMember(member);
		if(findCart.size()==0) {
			return "front/cart/cartNotFound";
		}
		Integer last = findOrders.size()-1;
		Orders topOrder = findOrders.get(last);
		model.addAttribute("Orders",topOrder);
		Payment payment = topOrder.getPayment();
		model.addAttribute("Payment",payment);
		Shipping shipping = topOrder.getShipping();
		model.addAttribute("Shipping",shipping);
		return "front/cart/cart_orderDetail_1";
	}
	
	//送出空白訂單表單
		@GetMapping("/cartOrderDetail#loaded")
		public String viewInputOrderDetailLoad(HttpServletRequest request,Model model){
//			//取得member
//			Member member = memberService.findById(memberId);
			Member member = (Member) model.getAttribute("Member");
			model.addAttribute("Member",member);
			assert member != null;
			List<Cart> findCart = cService.findByMemberId(member);
			if(findCart.size()==0) {
				return "front/cart/cartNotFound";
			}
			List<Orders> findOrders = oService.findOrderByMember(member);
			Integer last = findOrders.size()-1;
			Orders topOrder = findOrders.get(last);
			model.addAttribute("Orders",topOrder);
			Payment payment = topOrder.getPayment();
			model.addAttribute("Payment",payment);
			Shipping shipping = topOrder.getShipping();
			model.addAttribute("Shipping",shipping);
			return "front/cart/cart_orderDetail_1";
		}
	
	
	//傳遞前端訂單資料並insert到資料庫(Orders & OrderDetail)
	//以及刪除購物車商品
	@PostMapping("/cartFinish")
	public String newOrder(@ModelAttribute(name="Orders") Orders orders, 
			Model model,HttpServletRequest request) {
		
		//find member
		Member findmember = (Member) model.getAttribute("Member");
		assert findmember != null;
		Long memberId = findmember.getMemberId();
		
		//add new order
		List<Orders> findOrders = oService.findOrderByMember(findmember);
		Integer last= findOrders.size()-1;
		Orders topOrder = findOrders.get(last);
		orders.setOrderId(topOrder.getOrderId());
		orders.setMember(findmember);
		orders.setOrderState("未付款");
		orders.setPayment(topOrder.getPayment());
		orders.setShipping(topOrder.getShipping());
		orders.setTotal(topOrder.getTotal());
		orders.setCoupon(topOrder.getCoupon());
		Orders newOrder = oService.insert(orders);
	
		//add new orderDetail
		OrderDetail orderDetail = new OrderDetail();
		List<Cart> findCart = cService.findByMemberId(findmember);
		List<Cart> carts= new ArrayList<>();
		for(Cart cart:findCart) {
			orderDetail.setOrderId(newOrder.getOrderId());
			orderDetail.setProductId(cart.getProductId());
			orderDetail.setProductName(cart.getProductName());
			orderDetail.setPhotoId(cart.getPhotoId());
			orderDetail.setProductColor(cart.getProductColor());
			orderDetail.setProductSize(cart.getProductSize());
			orderDetail.setQuantity(cart.getQuantity());
			orderDetail.setPrice(cart.getPrice());
			orderDetail.setTotal(cart.getTotal());
			odService.insert(orderDetail);
			carts.add(cart);
		}
		
		//delete all products from cart
		for(Cart cart:carts) {
			String productId = cart.getProductId();
			cService.deleteById(memberId, productId);
		}
		
		//訂單完成頁面日期格式調整
		Date orderDate = orders.getOrderDate();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String date = dateFormat.format(orderDate);
		model.addAttribute("Date",date);
		model.addAttribute("Member",findmember);
		
		//發送訂單完成信
		String email = findmember.getEmail();
		String memberName = findmember.getMemberName();
		Long newOrderId=newOrder.getOrderId();
		Integer total = newOrder.getTotal();
		String orderState = newOrder.getOrderState();
		Shipping shipping = newOrder.getShipping();
		String shippingWay = shipping.getShippingWay();
		
		String text1 ="親愛的買家"+" "+memberName+" "+"您好，您於Chezmoi韓國女裝訂購的新訂單已成立，";
		String text2 ="訂單編號:"+newOrderId;
		String text3 ="訂單日期:"+date;
		String text4 ="訂單總金額:"+total;
		String text5 ="訂單狀態:"+orderState;
		String text6 ="運送方式:"+shippingWay;
		String text7 ="收款銀行:(822)中國信託，收款帳號:chezmoiiiii152";
		String text8 ="訂單將於收到款項後出貨，請盡速匯款至收款帳號，謝謝您的配合。";
		emailSenderSerivce.sendImageMail(email, "您於Chezmoi韓國女裝訂購的新訂單，訂單編號:"+newOrderId+"已成立",text1,
				text2,text3,text4,text5,text6,text7,text8);
		
		return "front/cart/cart_finish";
	}
	
	//現在的會員是誰
	@ModelAttribute("Member")
	public Member viewMember(HttpServletRequest request) {
		//取得memberId
		String stringId = String.valueOf(request.getAttribute("memberId"));
		Long memberId = Long.valueOf(stringId);
		return memberService.findById(memberId);
	}
	
		
	
}
