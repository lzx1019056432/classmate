package com.xxx.dao;

import java.util.Date;

import com.xxx.entity.Message;
import com.xxx.entity.User;
import com.xxx.entity.clacur;

public interface Userdao {
	
	//1.登陆登陆以及权限的认证
	public User Login(String name,String password);
	//2.管理员-添加教室
	public int InsertClassroom(String classname,String classloc,int Classnumber,String Classmark );
	//3.管理员-删除教室
	public void delClass(int classid);
	//4.管理员-信息的查看
	public Message rewritemess(int messid,int uid);
	//5.管理员-教室申请的审核
	public void reclassstatus(int ccid,int status);
	//6.管理员-向申请者发送消息
	public void Sendmess(int uid,String messcontent);
	//7.管理员-进行排课
	public void Selectclass(Date time1,int time2,String teacher,String Coursename,int uid,int status,int classid);
	//8.检测是否有新的消息未查看
	public int Selmess(int uid);
	//9.教师被分配课程
	public clacur Selclasstea(int uid);
	//10.教师申请调课
	public void rechangecur(int uid,Date time1,int time2,String location);
	//11.添加教师信息
	public void InsertTeacher(String username,String password,String name,int rol);
}
