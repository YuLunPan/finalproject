package com.finalProject.demo.controller.front.pageController;

import java.util.ArrayList;
import java.util.List;

import com.finalProject.demo.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalProject.demo.model.entity.cart.Cart;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.model.entity.order.Coupon;
import com.finalProject.demo.model.entity.order.Payment;
import com.finalProject.demo.model.entity.order.Shipping;
import com.finalProject.demo.service.cart.CartService;
import com.finalProject.demo.service.order.CouponService;
import com.finalProject.demo.service.order.OrdersService;
import com.finalProject.demo.service.order.PaymentService;
import com.finalProject.demo.service.order.ShippingService;

import javax.servlet.http.HttpServletRequest;

@Controller
//@SessionAttributes("Member")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@Autowired
	private CouponService couponService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private ShippingService shippingService;

	@Autowired
	private MemberService memberService;
	
	//顯示所有購物車商品

	@GetMapping("/cartAll")
	public String viewAllCart(Model model, HttpServletRequest request) {
//		Member memberLogin = new Member();
//		memberLogin.setMemberId(2L);
//		Long memberId = memberLogin.getMemberId();

		//取得memberId
		String stringId = String.valueOf(request.getAttribute("memberId"));
		Long memberId = Long.valueOf(stringId);
		Member member = memberService.findById(memberId);

		List<Cart> allCart = cartService.findByMemberId(member);
		
		if(allCart.isEmpty()) {
			return"front/cart/cartNotFound";
		}else {
			
		List<Cart> newCart = new ArrayList<>();
		for(Cart cart:allCart) {
			String productId = cart.getProductId();
			Cart findCart = cartService.findById(memberId, productId);
			if(findCart == null) {
				return"front/cart/cartNotFound";
			}
			newCart.add(findCart);
		}
			model.addAttribute("Carts",newCart);
			Coupon coupon = new Coupon();
			model.addAttribute("Coupon",coupon);
			return "front/cart/cart";
		}
	}
	
	//使用折扣碼
	@PostMapping("/cartAll")
	public String verifyCouponCode(@ModelAttribute(name="Coupon") Coupon coupon,
			RedirectAttributes ra)  {
		String msg="";
		String msg1="無此折扣碼";
		String msg2="使用成功";
		Integer discount1=0;
		String couponCode = coupon.getCouponCode();
		ra.addAttribute("msg",msg);
		Coupon findCouponCode = couponService.findByCouponCode(couponCode);
		if(findCouponCode == null) {
			ra.addAttribute("msg",msg1);
			ra.addAttribute("discount",discount1);
			return "redirect:/cartAll";
		}
		String couponState = findCouponCode.getCouponState();
		String state = "ON";
		if(!(couponState.equals(state))){
			ra.addAttribute("msg",msg1);
			ra.addAttribute("discount",discount1);
			return "redirect:/cartAll";
		}
		if((findCouponCode!=null) && (couponState.equals(state))) {
			Integer discountPrice = findCouponCode.getDiscountPrice();
			ra.addAttribute("couponCode",couponCode);
			ra.addAttribute("msg",msg2);
			ra.addAttribute("discount",discountPrice);
			return "redirect:/cartAll";
		}
		return "redirect:/cartAll";
	}
		
	//現在的會員是誰
//	@ModelAttribute("Member")
//	public Member viewMember(Model model) {
//		Member memberLogin = new Member();
//		memberLogin.setMemberId(1L);
//		return memberLogin;
//	}
	
	
	//找所有啟用的付款方式
	@ModelAttribute("Payment")
	public List<Payment> viewPayment() {
		List<Payment> allPayment = paymentService.findAllPayment();
		List<Payment> newPayment = new ArrayList<>();
		String state= "ON";
		for(Payment payment:allPayment) {
			String paymentState = payment.getPaymentState();
			if(paymentState.equals(state)) {
				newPayment.add(payment);
			}
		}
		return newPayment;
	}

	//找所有啟用的運送方式
	@ModelAttribute("Shipping")
	public List<Shipping> viewShipping() {
		List<Shipping> allShipping = shippingService.findAllShipping();
		List<Shipping> newShipping = new ArrayList<>();
		String state= "ON";
		for(Shipping shipping:allShipping) {
			String shippingState = shipping.getShippingState();
			if(shippingState.equals(state)) {
				newShipping.add(shipping);
			}
		}
		return newShipping;
	}
	//顯示購物車完成頁面
	@GetMapping("/cartFinish")
	public String viewCartFinish() {
		return "front/cart/cart_finish";
	}
	
//	@GetMapping("cartQuantity")
//	public String viewCartQuantity(Model model) {
//		Member memberLogin = new Member();
//		memberLogin.setMemberId(2L);
//		List<Cart> allCart = cartService.findByMemberId(memberLogin);
//		int cartQuantity = allCart.size();
//		model.addAttribute("cartQuantity",cartQuantity);
//		return "front/cart/cart";
//	}
	
	
}
