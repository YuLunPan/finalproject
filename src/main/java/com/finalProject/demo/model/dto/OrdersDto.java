package com.finalProject.demo.model.dto;

import java.io.Serializable;

public class OrdersDto implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer shippingId;
	
	private Integer paymentId;
	
	private Integer total;
	
	private String couponCode;
	
	public OrdersDto() {
	}

	public Integer getShippingId() {
		return shippingId;
	}

	public void setShippingId(Integer shippingId) {
		this.shippingId = shippingId;
	}

	public Integer getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(Integer paymentId) {
		this.paymentId = paymentId;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	
}
