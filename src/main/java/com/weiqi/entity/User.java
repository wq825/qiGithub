
package com.weiqi.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class User {
	
	private int id;
	
	private String username;
	
	private String password;
	
	
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date birthday;
	
	private String phone;
	
	private String email;
	

	private String note;
	
	private int status;
	
	private int roleId;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
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



	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ",  birthday="
				+ birthday + ", phone=" + phone + ", email=" + email + ",  note=" + note
				+ ", status=" + status + ", roleId=" + roleId + ", createTime=" + createTime + "]";
	}
	
}
