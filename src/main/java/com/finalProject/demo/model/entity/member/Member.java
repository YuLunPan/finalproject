package com.finalProject.demo.model.entity.member;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "Member")
public class Member {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "memberId", unique = true, nullable = false)
	private Long memberId;
	
	@Column(name = "memberName", nullable = false,columnDefinition ="nvarchar(10)" )
	private String memberName;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "birthday", nullable = false,columnDefinition = "nvarchar(20)")
	private String birthday;
	
	@Column(name = "phone", nullable = false)
	private String phone;
	
	@Column(name = "email", nullable = false,columnDefinition = "nvarchar(50)")
	private String email;

	@Column(name ="password", nullable = false,columnDefinition = "nvarchar(Max)")
	private String password;

	public Member() {
	}
	
	

	//getter/setter
	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	} 
	
	
}
