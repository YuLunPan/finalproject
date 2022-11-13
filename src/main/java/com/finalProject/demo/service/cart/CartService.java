package com.finalProject.demo.service.cart;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.demo.model.entity.cart.Cart;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.model.mutiKeys.CartTableMultiKeysClass;
import com.finalProject.demo.repository.cart.CartRepository;

@Transactional
@Service
public class CartService {

	@Autowired
	private CartRepository cartRepository;
	
	public Cart insert(Cart cart) {
		return cartRepository.save(cart);
	}
	
	public Cart findById(Long memberId,String productId) {
		CartTableMultiKeysClass cartTableMultiKeysClass = new CartTableMultiKeysClass();
		cartTableMultiKeysClass.setMemberId(memberId);
		cartTableMultiKeysClass.setProductId(productId);
		Optional<Cart> optional = cartRepository.findById(cartTableMultiKeysClass);
		if(optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
	
	public List<Cart> findAllCart(){
		return cartRepository.findAll();
	}
	
	public void deleteById(Long memberId,String productId) {
		CartTableMultiKeysClass cartTableMultiKeysClass = new CartTableMultiKeysClass();
		cartTableMultiKeysClass.setMemberId(memberId);
		cartTableMultiKeysClass.setProductId(productId);
		cartRepository.deleteById(cartTableMultiKeysClass);
	}
	
	public Cart save(Cart cart) {
		return cartRepository.save(cart);
	}
	
	public List<Cart> findByMemberId(Member member) {
		Long memberId = member.getMemberId();
		List<Cart> carts = cartRepository.findByMemberId(memberId);
		return carts;
	}
	
	
	
	
	
}
