package com.finalProject.demo.model.entity.order;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.finalProject.demo.model.mutiKeys.OrderDetailTableMutiKeysClass;

@Entity
@Table(name = "OrderDetail")
@IdClass(OrderDetailTableMutiKeysClass.class)
public class OrderDetail {
	
	//跟productId是複合主鍵
	@Column(name = "orderId")
	private Long orderId; 
	
	//跟orderId是複合主鍵
	@Column(name = "productId")
	private String productId; 
	//商品名稱
	@Column(name = "productName",columnDefinition = "nvarchar(50)")
	private String productName;
		
	//商品圖片
	@Column(name = "photoId")
	private Long photoId;
		
	//商品顏色
	@Column(name = "color")
	private String productColor; 
		
	//商品尺寸
	@Column(name = "size")
	private String productSize;
		
	//商品數量
	@Column(name="quantity")
	private Integer Quantity;
		
	//商品單價
	@Column(name="price")
	private Integer price;

	//商品小計
	@Column(name="total")
	private Integer total;

	public OrderDetail() {
	}

	@Id
	public Long getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	@Id
	public String getProductId() {
		return this.productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Long getPhotoId() {
		return photoId;
	}

	public void setPhotoId(Long photoId) {
		this.photoId = photoId;
	}

	public String getProductColor() {
		return productColor;
	}

	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}

	public String getProductSize() {
		return productSize;
	}

	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}

	public Integer getQuantity() {
		return Quantity;
	}

	public void setQuantity(Integer quantity) {
		Quantity = quantity;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}
	
}
