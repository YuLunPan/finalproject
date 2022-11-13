package com.finalProject.demo.controller.back.orderManagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Back")
public class orderPageController {

	
	//orderPage
	@GetMapping("OrderDetail")
	public String getOrderDetail() {
		return "back/order/orderDetail";	
	}
}
