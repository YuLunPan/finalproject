package com.finalProject.demo.controller.back.paymentManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.demo.model.entity.order.Payment;
import com.finalProject.demo.service.order.PaymentService;

@Controller
public class AddAndUpdatePaymentController {

	@Autowired
	private PaymentService paymentService;
	
	//接收前端資料 insert new payment用
	@GetMapping("/back/payment")
	public String viewPayment(Model model) {
		Payment payment = new Payment();
		model.addAttribute("Payment",payment);
		return "back/payment/payment";
	}
	
	//傳送前端資料到後端,並insert new payment
	@PostMapping("/back/payment")
	public String addPayment(@ModelAttribute(name="Payment") Payment payment) {
		//設定新的payment
		String paymentWay = payment.getPaymentWay();
		payment.setPaymentWay(paymentWay);
		payment.setPaymentState("ON");
		paymentService.insert(payment);
		return "redirect:/back/payment";
	}
	
	//查詢要更改的payment
	@GetMapping("/back/updatePayment")
	public String viewUpdatePayment(@RequestParam("id") Integer paymentId,
			 Model model) {
		Payment findPayment = paymentService.findById(paymentId);
		model.addAttribute("UpdatePayment",findPayment);
		return "/back/payment/paymentEdit";
	}
	
	//更改payment
	@PostMapping("/back/updatePayment")
	public String UpdatePayment(@ModelAttribute(name="UpdatePayment") Payment payment) {
		Integer paymentId = payment.getPaymentId();
		String paymentWay = payment.getPaymentWay();
		String paymentState = payment.getPaymentState();
		Payment newPayment = new Payment();
		newPayment.setPaymentId(paymentId);
		newPayment.setPaymentWay(paymentWay);
		newPayment.setPaymentState(paymentState);
		paymentService.update(newPayment);
		return "back/payment/paymentEdit";
	}
	
	
	//查詢所有payment
	@ModelAttribute("Payments")
	public List<Payment> viewPayment(){
		return paymentService.findAllPayment();
	}
	
}
