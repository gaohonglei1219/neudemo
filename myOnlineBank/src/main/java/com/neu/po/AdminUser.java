package com.neu.po;

public class AdminUser {
	private int adminId;
	private String password;
	private String username;
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "AdminUser [adminId=" + adminId + ", password=" + password + ", username=" + username + "]";
	}
	
}
