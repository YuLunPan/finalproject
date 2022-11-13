package com.finalProject.demo.controller.back.checkoutManagement;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.demo.model.entity.order.Coupon;
import com.finalProject.demo.service.order.CouponService;

@Controller
@RequestMapping("/Back")
public class CouponController {
	
	@Autowired
	private CouponService cService;

	//過來的controller
//	@RequestMapping("/Coupon")
//	public String addCoupon(Model model) {
//		Coupon c1 = new Coupon();
//		model.addAttribute("couponadd",c1);
//		
//		Coupon latestCode = cService.findLatest();
//		model.addAttribute("latestCode",latestCode);
//		
//		return "/back/checkout/coupon";
//	}
	
	//送出的controller
	@PostMapping("/addCoupon")
	public String postCoupon(@ModelAttribute(name="couponadd") Coupon add,Model model) {
		String couponCode = add.getCouponCode();
		if(cService.findByCouponCode(couponCode)!=null) {
			return "redirect:/Back/Coupon";
		}
		cService.insert(add);
		
		//空的
//		Coupon c1 = new Coupon();
//		model.addAttribute("couponadd",c1);
		
		//最新的
		Coupon latestCode = cService.findLatest();
		model.addAttribute("latestCode",latestCode);
		
		return "redirect:/Back/Coupon";
	}
	
	@RequestMapping("/Coupon")
	public String viewCoupon(@RequestParam(name = "p",defaultValue = "1") Integer pageNumber,Model model) {
		Page<Coupon> page = cService.findByPage(pageNumber);
		model.addAttribute("page",page);
		return "/back/checkout/coupon";
	}
	
	
	@RequestMapping("/editCoupon")
	public String editCoupon(@RequestParam("couponId") Integer couponId,Model model) {
		Coupon edit = cService.findById(couponId);
		model.addAttribute("edit",edit);
		return "/back/checkout/editCoupon";
	}
	
	@RequestMapping("/postEditCoupon")
	public String postEditCoupon(@ModelAttribute("edit") Coupon cou) {
		cService.insert(cou);
		return "redirect:/Back/Coupon";
	}
	
//	@RequestMapping("/deleteCoupon")
//	public String deleteCoupon(@RequestParam("couponId")Integer couponId) {
//		cService.deleteById(couponId);
//		return "redirect:/Back/Coupon";
//	}
	
	
	

}