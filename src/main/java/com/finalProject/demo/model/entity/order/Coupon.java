package com.finalProject.demo.model.entity.order;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Coupon")
public class Coupon {

	private String couponName;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer couponId;

	@Column(name="couponCode", unique = true, nullable = false)
	private String couponCode;
	
	@Column(name="discountPrice")
	private Integer discountPrice;
	
//	@Column(name="minimum")
//	private Integer minimum;
	
	//state
	@Column(name = "couponState")
	private String couponState;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="dateStart", columnDefinition = "datetime")
	private Date dateStart;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="dateEnd" , columnDefinition = "datetime")
	private Date dateEnd;
	
	public Coupon() {
	}
	
	public Integer getCouponId() {
		return couponId;
	}

	public void setCouponId(Integer couponId) {
		this.couponId = couponId;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	public Integer getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(Integer discountPrice) {
		this.discountPrice = discountPrice;
	}

//	public Integer getMinimum() {
//		return minimum;
//	}
//
//	public void setMinimum(Integer minimum) {
//		this.minimum = minimum;
//	}

	public Date getDateStart() {
		return dateStart;
	}

	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}

	public Date getDateEnd() {
		return dateEnd;
	}

	public void setDateEnd(Date dateEnd) {
		this.dateEnd = dateEnd;
	}

	public String getCouponState() {
		return couponState;
	}

	public void setCouponState(String couponState) {
		this.couponState = couponState;
	}
	
	
	

}
