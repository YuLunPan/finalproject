package com.finalProject.demo.service.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.demo.model.entity.order.OrderDetail;
import com.finalProject.demo.repository.order.OrderDetailRepository;

@Transactional
@Service
public class OrderDetailService {
	
	@Autowired
	private OrderDetailRepository orderDetailRepository;

	public OrderDetail insert(OrderDetail orderDetail) {
		return orderDetailRepository.save(orderDetail);
	}
}
