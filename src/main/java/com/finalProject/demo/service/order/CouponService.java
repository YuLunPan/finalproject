package com.finalProject.demo.service.order;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.demo.model.entity.order.Coupon;
import com.finalProject.demo.repository.order.CouponRepository;

@Transactional
@Service
public class CouponService {

	@Autowired
	private CouponRepository couponRepository;
	
	public Coupon insert(Coupon cou) {
		return couponRepository.save(cou);
	}
	
	public Coupon findById(Integer couponId) {
		Optional<Coupon> optional = couponRepository.findById(couponId);
		
		if(optional.isPresent()) {
			return optional.get();
		}
		Coupon emptyCoupon = new Coupon();
		emptyCoupon.setCouponName("沒有這個折扣碼");
		return emptyCoupon;
	}
	

	public Coupon findByCouponCode(String couponCode) {
		 Coupon coupon = couponRepository.findByCouponCode(couponCode);
		 if(coupon != null) {
			 return coupon;
		 }
		 return null;
	}

	/**找到最新的那一筆
	 * @return
	 */
	public Coupon findLatest() {
		return couponRepository.findFirstByOrderByCouponIdDesc();
	}
	
	
	public List<Coupon> findAllCoupon(){
		return couponRepository.findAll();
	}
	
	//page
	public Page<Coupon> findByPage(Integer pageNumber){
		Pageable pgb= PageRequest.of(pageNumber-1, 5, Sort.Direction.DESC, "couponId");
		Page<Coupon> page = couponRepository.findAll(pgb);
		return page;
	}
	
	//根據id刪除
	public void deleteById(Integer couponId) {
		couponRepository.deleteById(couponId);
	}
}
