package com.finalProject.demo.service.order;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.demo.model.entity.order.Shipping;
import com.finalProject.demo.repository.order.ShippingRepository;

@Transactional
@Service
public class ShippingService {

	@Autowired
	private ShippingRepository shippingRepository;
	
	public Shipping insert(Shipping shipping) {
		return shippingRepository.save(shipping);
	}
	
	public List<Shipping> findAllShipping(){
		return shippingRepository.findAll();
	}
	
	public Shipping findById(Integer id) {
		Optional<Shipping> optional = shippingRepository.findById(id);
		if(optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
	
	public void deleteById(Integer shippingId) {
		shippingRepository.deleteById(shippingId);
	}
	
	public Shipping update(Shipping shipping) {
		return shippingRepository.save(shipping);
	}
}
