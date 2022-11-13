 package com.finalProject.demo.model.entity.product;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import jdk.jfr.Timestamp;

/**
 * @author AJ
 *
 */
@Entity
@Table(name = "Products")
public class Products {
	
	@Id
	@Column(name = "productId",columnDefinition = "nvarchar(50)")
	private String productId;
	
	//名稱
	@Column(name = "productName", nullable = false,columnDefinition = "nvarchar(50)")
	private String name;
	
	//價格
	@Column(nullable = false)
	private Integer price;
	 
	//分類
	@Column(name = "category",nullable = false)
	private String category;

	//系列
	@Column(name = "series",nullable = false)
	private  String series;
	
	//顏色
	@Column(name = "color")
	private String color; 
	
	//尺寸
	@Column(name = "size")
	private String size;
	
	//商品圖片
	@Lob
	@ManyToOne(cascade =CascadeType.MERGE )
	@JoinColumn(name = "photoId")
	private Photo photo;

	//商品描述(關聯)
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "descriptId")
	private DescriptText descript;
	
	//創建時間
	@CreationTimestamp
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "createTime")
	private Date createTime;
	
	//更新時間
	@UpdateTimestamp
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "updateTime")
	private Date updateTime;
	
	//狀態(上/下架) 預設為 ON-上架
	@Column(name = "productState",columnDefinition="nvarchar(10)")
	private String productState;
	
	

	
	
	
	//costructor
	public Products() {
	}



	//getter/setter

	public String getName() {
		return name;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}



	public Photo getPhoto() {
		return photo;
	}

	public void setPhoto(Photo photo) {
		this.photo = photo;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
public String getProductState() {
		return productState;
	}

	public void setProductState(String productState) {
		this.productState = productState;
	}

	public DescriptText getDescript() {
		return descript;
	}

	public void setDescript(DescriptText descript) {
		this.descript = descript;
	}

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	}
