package com.finalProject.demo.controller.back.shippingManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.demo.model.entity.order.Shipping;
import com.finalProject.demo.service.order.ShippingService;

@Controller
public class AddAndUpdateShippingController {

	@Autowired
	private ShippingService shippingService;
	
	//接收前端資料 insert new shipping用
	@GetMapping("/back/shipping")
	public String viewShipping(Model model) {
		Shipping shipping = new Shipping();
		model.addAttribute("Shipping",shipping);
		return "back/shipping/shipping";
	}
	
	//傳送前端資料到後端,並insert new shipping
	@PostMapping("/back/shipping")
	public String addShipping(@ModelAttribute(name="Shipping") Shipping shipping) {
		//設定新的shipping
		String shippingWay = shipping.getShippingWay();
		Integer shippingFee = shipping.getShippingFee();
		shipping.setShippingWay(shippingWay);
		shipping.setShippingFee(shippingFee);
		shipping.setShippingState("ON");
		shippingService.insert(shipping);
		return "redirect:/back/shipping";
	}
	
	//查詢要更改的shipping
	@GetMapping("/back/updateShipping")
	public String viewUpdateShipping(@RequestParam("id") Integer shippingId,
			 Model model) {
		Shipping findShipping = shippingService.findById(shippingId);
		model.addAttribute("UpdateShipping",findShipping);
		return "/back/shipping/shippingEdit";
	}
	
	//更改shipping
	@PostMapping("/back/updateShipping")
	public String UpdateShipping(@ModelAttribute(name="UpdateShipping") Shipping shipping) {
		Integer shippingId = shipping.getShippingId();
		String shippingWay = shipping.getShippingWay();
		Integer shippingFee = shipping.getShippingFee();
		String shippingState = shipping.getShippingState();
		Shipping newShipping = new Shipping();
		newShipping.setShippingId(shippingId);
		newShipping.setShippingWay(shippingWay);
		newShipping.setShippingFee(shippingFee);
		newShipping.setShippingState(shippingState);
		shippingService.update(newShipping);
		return "back/shipping/shippingEdit";
	}
	
	//查詢所有shipping
	@ModelAttribute("Shippings")
	public List<Shipping> viewShipping(){
		return shippingService.findAllShipping();
	}
	
	
	
}
