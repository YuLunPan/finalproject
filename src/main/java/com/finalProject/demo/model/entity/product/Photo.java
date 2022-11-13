package com.finalProject.demo.model.entity.product;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Product_photo")
public class Photo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "photoId" , unique = true, nullable = false)
	private Long photoId;
	

	//主要pic
	@Column(name = "mainPic",columnDefinition = "varbinary(MAX)")
	private byte[] mainProduct_pic;
	
	
	//試衣間pic
	@Column(name = "fittingRoomPic",columnDefinition = "varbinary(MAX)")
	private byte[] fit_pic;
	
	//detail商品敘述圖:含多圖
	@Column(name = "detailPic",columnDefinition = "varbinary(MAX)")
	private byte[] detail_pic;

	@Column(columnDefinition = "varbinary(MAX)")
	private byte[] picOne;

	@Column(columnDefinition = "varbinary(MAX)")
	private byte[] picTwo;

	@Column(columnDefinition = "varbinary(MAX)")
	private byte[] picThree;


	@Column(columnDefinition = "varbinary(MAX)")
	private byte[] picFour;

	@JsonIgnore
	@OneToMany(mappedBy = "photo")
	private List<Products> productId;
	

	public Photo() {
	}
	
	
	
	//getter/setter

	public Long getPhotoId() {
		return photoId;
	}

	public void setPhotoId(Long photoId) {
		this.photoId = photoId;
	}

	
	public byte[] getMainProduct_pic() {
		return mainProduct_pic;
	}

	public void setMainProduct_pic(byte[] mainProduct_pic) {
		this.mainProduct_pic = mainProduct_pic;
	}


	public byte[] getFit_pic() {
		return fit_pic;
	}

	public void setFit_pic(byte[] fit_pic) {
		this.fit_pic = fit_pic;
	}

	public List<Products> getProductId() {
		return productId;
	}

	public void setProductId(List<Products> productId) {
		this.productId = productId;
	}

	public byte[] getDetail_pic() {
		return detail_pic;
	}

	public void setDetail_pic(byte[] detail_pic) {
		this.detail_pic = detail_pic;
	}



	public byte[] getPicOne() {
		return picOne;
	}



	public void setPicOne(byte[] picOne) {
		this.picOne = picOne;
	}



	public byte[] getPicTwo() {
		return picTwo;
	}



	public void setPicTwo(byte[] picTwo) {
		this.picTwo = picTwo;
	}



	public byte[] getPicThree() {
		return picThree;
	}



	public void setPicThree(byte[] picThree) {
		this.picThree = picThree;
	}

	public byte[] getPicFour() {
		return picFour;
	}



	public void setPicFour(byte[] picFour) {
		this.picFour = picFour;
	}





}
