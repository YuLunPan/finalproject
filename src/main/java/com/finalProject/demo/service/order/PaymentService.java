package com.finalProject.demo.service.order;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.demo.model.entity.order.Payment;
import com.finalProject.demo.repository.order.PaymentRepository;

@Transactional
@Service
public class PaymentService {

	@Autowired
	private PaymentRepository paymentRepository;
	
	public Payment insert(Payment payment) {
		return paymentRepository.save(payment);
	}
	
	public List<Payment> findAllPayment(){
		return paymentRepository.findAll();
	}
	
	public Payment findById(Integer id) {
		Optional<Payment> optional = paymentRepository.findById(id);
		if(optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
	
	public void deleteById(Integer paymentId) {
		paymentRepository.deleteById(paymentId);
	}
	
	public void update(Payment payment) {
		paymentRepository.save(payment);
	}
}
