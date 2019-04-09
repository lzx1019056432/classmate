package com.xxx.entity;

public class User {
	
	private int uid;
	private String username;
	private String password;
	private String name;//姓名 比如梁振兴老师
	private int uid_rol;//角色的权限
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUid_rol() {
		return uid_rol;
	}
	public void setUid_rol(int uid_rol) {
		this.uid_rol = uid_rol;
	}
	
	

}
