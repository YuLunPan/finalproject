package com.finalProject.demo.controller.request;

public class EditShippingCodeAndShippingDateRequest {
	
	private Long orderId;
	
	private String shippingCode;

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public String getShippingCode() {
		return shippingCode;
	}

	public void setShippingCode(String shippingCode) {
		this.shippingCode = shippingCode;
	}

	

}
