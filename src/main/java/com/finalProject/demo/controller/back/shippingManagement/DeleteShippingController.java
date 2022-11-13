package com.finalProject.demo.controller.back.shippingManagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.demo.service.order.ShippingService;

@Controller
public class DeleteShippingController {
	
	@Autowired
	private ShippingService shippingService;

	@GetMapping("/back/deleteShipping")
	public String deleteShipping(@RequestParam("id") Integer shippingId) {
		shippingService.deleteById(shippingId);
		return "redirect:/back/shipping";
	}
	
}
