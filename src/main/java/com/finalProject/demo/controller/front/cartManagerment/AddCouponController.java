package com.finalProject.demo.controller.front.cartManagerment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.finalProject.demo.model.entity.order.Coupon;
import com.finalProject.demo.service.order.CouponService;

@Controller
public class AddCouponController {

	@Autowired
	private CouponService cService;
	
	//使用coupon
	@GetMapping("/cart")
	public Coupon getById(String couponCode,Model model) {
		Coupon coupon = cService.findByCouponCode(couponCode);
		model.addAttribute("Coupon",coupon);
		return coupon;
	}
	
	
	
}
