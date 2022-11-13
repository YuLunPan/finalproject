package com.finalProject.demo.controller.front.pageController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class frontPageController {
	@GetMapping("/")
	public String index() {
		return "front/index";
	}
	
	@GetMapping("notice")
	public String notice() {
		return "front/notice";
	}
	
	@GetMapping("contact")
	public String contact() {
		return "front/contact";
	}
	
	@GetMapping("product/detail")
	public String productDetail() {
		return "front/productDetail";
	}

}
