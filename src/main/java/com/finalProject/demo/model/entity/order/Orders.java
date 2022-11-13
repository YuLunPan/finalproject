package com.finalProject.demo.model.entity.order;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.format.annotation.DateTimeFormat;

import com.finalProject.demo.model.entity.member.Member;

@Entity
@Table(name="Orders")
public class Orders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="orderId")
	private Long orderId;
	

	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "customerId")
	private Member member;
	
	@Column(name="shipName", nullable = false)
	private String shipName;
	
	@Column(name="shipPhone", nullable = false)
	private String shipPhone;
	
	//711店號(理想:接711Api)
	@Column(name="storeNumber", nullable = false)
	private String storeNumber;
	
	@Column(name="storeName", nullable = false)
	private String storeName;
	
	@Column(name="notes")
	private String notes;
	
	//優惠券
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "couponCode")
	private Coupon coupon;
	
	//金流
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "paymentWay")
	private Payment payment;
	
	//物流
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "shippingWay")
	private Shipping shipping;
	
	//出貨日期
	@Column(name = "shippingDate")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@Temporal(TemporalType.DATE)
	private Date shippingDate;
	
	
	//貨號
	@Column(name = "shippingCode")
	private String shippingCode;
	
	//訂單狀態
	
	@Column(name = "orderState")
	private String orderState;
	
	
	//總金額
	@JoinColumn(name = "total")
	private Integer total;
	//增加在orderdetail中
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="orderDate",nullable = false)
	private Date orderDate;
		
	public Orders() {
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getShipPhone() {
		return shipPhone;
	}

	public void setShipPhone(String shipPhone) {
		this.shipPhone = shipPhone;
	}

	public String getStoreNumber() {
		return storeNumber;
	}

	public void setStoreNumber(String storeNumber) {
		this.storeNumber = storeNumber;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Coupon getCoupon() {
		return coupon;
	}

	public void setCoupon(Coupon coupon) {
		this.coupon = coupon;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	public Shipping getShipping() {
		return shipping;
	}

	public void setShipping(Shipping shipping) {
		this.shipping = shipping;
	}
	
	public String getShippingCode() {
		return shippingCode;
	}

	public void setShippingCode(String shippingCode) {
		this.shippingCode = shippingCode;
	}


	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getShippingDate() {
		return shippingDate;
	}

	public void setShippingDate(Date shippingDate) {
		this.shippingDate = shippingDate;
	}

	public String getOrderState() {
		return orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}
	
	
}

