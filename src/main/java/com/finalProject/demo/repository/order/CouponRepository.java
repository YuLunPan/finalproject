package com.finalProject.demo.repository.order;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.finalProject.demo.model.entity.order.Coupon;

public interface CouponRepository extends JpaRepository<Coupon, Integer> {

	Optional<Coupon> findById(Integer couponId);
public Coupon findFirstByOrderByCouponIdDesc();
	
	Coupon findByCouponCode(String couponCode);

}
