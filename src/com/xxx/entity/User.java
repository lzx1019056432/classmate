package com.xxx.entity;

public class User {
	
	private int uid;
	private String username;
	private String password;
	private String name;//姓名 比如梁振兴老师
	private int uid_rol;//角色的权限
	private int uid_run;//角色被不被允许登录
	private int uid_phone;
	private String uid_email;
	private String uid_time;
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
	public int getUid_run() {
		return uid_run;
	}
	public void setUid_run(int uid_run) {
		this.uid_run = uid_run;
	}
	public int getUid_phone() {
		return uid_phone;
	}
	public void setUid_phone(int uid_phone) {
		this.uid_phone = uid_phone;
	}
	public String getUid_email() {
		return uid_email;
	}
	public void setUid_email(String uid_email) {
		this.uid_email = uid_email;
	}
	public String getUid_time() {
		return uid_time;
	}
	public void setUid_time(String uid_time) {
		this.uid_time = uid_time;
	}
		
}
