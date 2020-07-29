package com.farm.web.entity;

import java.util.Date;

public class Member {

	private int id;
	private String uid;
	private String pwd;
	private String name;
	private String email;
	private String address;
	private int mobile;
	private int phone;
	private Date regDate;
	private int enabled;
	private String role;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(int id, String uid, String pwd, String name, String email, String address, int mobile, int phone,
			Date regDate, int enabled, String role) {
		super();
		this.id = id;
		this.uid = uid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.address = address;
		this.mobile = mobile;
		this.phone = phone;
		this.regDate = regDate;
		this.enabled = enabled;
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", uid=" + uid + ", pwd=" + pwd + ", name=" + name + ", email=" + email
				+ ", address=" + address + ", mobile=" + mobile + ", phone=" + phone + ", regDate=" + regDate
				+ ", enabled=" + enabled + ", role=" + role + "]";
	}
	
	
}
