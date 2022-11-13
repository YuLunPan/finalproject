package com.finalProject.demo.model.entity.product;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * @author AJ
 *
 */
@Entity
@Table(name = "Product_Descript")
public class DescriptText {   
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long descriptId;
	
	@Column(name = "text", columnDefinition = "nvarchar(MAX)")
	private String text;


	

	public DescriptText() {
		super();
	}

	public DescriptText(Long descriptId, String text) {
		super();
		this.descriptId = descriptId;
		this.text = text;
	}
	
	//getter/setter
	public Long getDescriptId() {
		return descriptId;
	}

	public void setDescriptId(Long descriptId) {
		this.descriptId = descriptId;
	}

	public String getText() {
		try {
			return DescriptText.replaceOut(text);
		} catch (Exception e) {
			System.out.println(e.getClass().getName() + ", ex.getMessage()=" + e.getMessage());
		}
		return "";
	}

	public void setText(String text) {
		try {
			this.text = DescriptText.replaceIn(text);
		} catch (Exception e) {
			System.out.println(e.getClass().getName() + ", ex.getMessage()=" + e.getMessage());
		}
	}

	
	
	/**
	 * 對輸入DB的textArea進行空白及換行處理
	 * @param text
	 * @return
	 * @throws Exception
	 */
	public static String replaceIn(String text) throws Exception {
		while(text.contains("\n")) {
			text = text.replace("\n", "<br>");
		}
		while(text.contains(" ")) {
			text = text.replace(" ","&nbsp;");
		}
		return text;
	}
	
	
	/**
	 * 對輸出的DB資料進行處理
	 * @param text
	 * @return
	 * @throws Exception
	 */
	public static String replaceOut(String text)throws Exception {
		while(text.contains("<br>")) {
			text = text.replace("<br>", "\n");
		}
		while(text.contains("&nbsp;")) {
			text = text.replace("&nbsp;"," ");
		}
		return text;
	}



}
