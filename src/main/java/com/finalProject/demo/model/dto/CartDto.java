package com.finalProject.demo.model.dto;

import java.io.Serializable;

public class CartDto implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Integer Quantity;
	
	private Integer total;
	
	private String productId;
	
	private Long memberId;
	
	public CartDto() {
	}

	public Integer getQuantity() {
		return Quantity;
	}

	public void setQuantity(Integer quantity) {
		Quantity = quantity;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

}
