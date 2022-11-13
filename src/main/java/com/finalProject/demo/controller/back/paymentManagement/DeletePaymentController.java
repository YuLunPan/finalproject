package com.finalProject.demo.controller.back.paymentManagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.demo.service.order.PaymentService;

@Controller
public class DeletePaymentController {
	
	@Autowired
	private PaymentService paymentService;

	@GetMapping("/back/deletePayment")
	public String deletePayment(@RequestParam("id") Integer paymentId) {
		paymentService.deleteById(paymentId);
		return "redirect:/back/payment";
	}
	
}
