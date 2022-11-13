package com.finalProject.demo.model.entity.order;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Shipping")
public class Shipping {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="shippingId")
	private Integer shippingId;
	
	@Column(name="shippingWay")
	private String shippingWay;
	
	@Column(name = "shippingFee")
	private Integer shippingFee;
	//增加在orderdetail
	
	@Column(name="shippingState")
	private String shippingState;
	
	
	public Shipping() {
	}

	public Integer getShippingId() {
		return shippingId;
	}

	public void setShippingId(Integer shippingId) {
		this.shippingId = shippingId;
	}

	public String getShippingWay() {
		return shippingWay;
	}

	public void setShippingWay(String shippingWay) {
		this.shippingWay = shippingWay;
	}

	public Integer getShippingFee() {
		return shippingFee;
	}

	public void setShippingFee(Integer shippingFee) {
		this.shippingFee = shippingFee;
	}

	public String getShippingState() {
		return shippingState;
	}

	public void setShippingState(String shippingState) {
		this.shippingState = shippingState;
	}
	
}
