package com.finalProject.demo.model.mutiKeys;

import java.io.Serializable;

//Cart的複合主鍵類(memberId(Long),productId(String))
public class CartTableMultiKeysClass implements Serializable{
	/**
	 * Cart的複合主鍵類
	 * 
	 * @Param memberId
	 * @Param productId
	 * 由這兩個共同組成複合主鍵
	 */
	private static final long serialVersionUID = 1L;
	private Long memberId;
	private String productId;
	
	//一定要放一個空的預設建構子
	public CartTableMultiKeysClass() {
	}
	
	//使用欄位產生建構子
	public CartTableMultiKeysClass(Long memberId,String productId) {
		super();
		this.memberId=memberId;
		this.productId=productId;
	}

	//產生get/set
	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
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
	    result = PRIME * result + ((memberId == null) ? 0 : memberId.hashCode());
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

	    final CartTableMultiKeysClass other = (CartTableMultiKeysClass)obj;
	    if(memberId == null){
	      if(other.memberId != null){
	        return false;
	      }
	    }else if(!memberId.equals(other.memberId)){
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
	
	
