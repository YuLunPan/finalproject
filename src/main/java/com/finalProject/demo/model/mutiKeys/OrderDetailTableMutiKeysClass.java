package com.finalProject.demo.model.mutiKeys;

import java.io.Serializable;

//OrderDetail的複合主鍵類(orderId(Long),productId(String))
public class OrderDetailTableMutiKeysClass implements Serializable {

	/**
	 * OrderDetail的複合主鍵類
	 * 
	 * @Param orderId
	 * @Param productId
	 * 由這兩個共同組成複合主鍵 
	 */
	private static final long serialVersionUID = 1L;
	private Long orderId;
	private String productId;
	
	//一定要放一個空的預設建構子
	public OrderDetailTableMutiKeysClass() {
	}
	
	//使用欄位產生建構子
	public OrderDetailTableMutiKeysClass(Long orderId, String productId) {
		super();
		this.orderId = orderId;
		this.productId = productId;
	}

	//產生get/set
	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	// ***重寫hashCode與equals方法*** 劃重點！
		@Override
		  public int hashCode() {
		    final int PRIME = 31;
		    int result = 1;
		    result = PRIME * result + ((orderId == null) ? 0 : orderId.hashCode());
		    result = PRIME * result + ((productId == null) ? 0 : productId.hashCode());
		    return result;
		  }
		
		@Override
		  public boolean equals(Object obj){
		    if(this == obj){
		      return true;
		    }
		    if(obj == null){
		      return false;
		    }
		    if(getClass() != obj.getClass()){
		      return false;
		    }

		    final OrderDetailTableMutiKeysClass other = (OrderDetailTableMutiKeysClass)obj;
		    if(orderId == null){
		      if(other.orderId != null){
		        return false;
		      }
		    }else if(!orderId.equals(other.orderId)){
		      return false;
		    }
		    if(productId == null){
		      if(other.productId != null){
		        return false;
		      }
		    }else if(!productId.equals(other.productId)){
		      return false;
		    }
		    return true;
		  }
		
	
	
}
