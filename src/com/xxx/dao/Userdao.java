package com.xxx.dao;

import java.util.Date;
import java.util.List;

import com.xxx.entity.Message;
import com.xxx.entity.User;
import com.xxx.entity.clacur;
import com.xxx.entity.classroom;

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
	public int Selmess(int uid,int mess_status);
	//9.教师被分配课程
	public clacur Selclasstea(int uid);
	//10.教师申请调课
	public void rechangecur(int uid,Date time1,int time2,String location);
	//11.添加教师信息
	public void InsertTeacher(String username,String password,String name,int rol);
	//12.管理员-教师-教室资源查看
	public List<classroom> listroom();
	//13.共有多少条教室数据
	public int Classroomnumber();
	//14.根据教室号和地点查找教室
	public List<classroom> searchroom(String class_name,String class_loc);
	//15.共有多少条教室数据-与上面的那个方法配套使用
	public int Classroomnumberwithtop(String class_name,String class_loc);
	//16.查询可供选择的教室
	public List<clacur> searchhave(String class_loc,String class_name,String cc_time1);
	//17.教室课程分配
	public void insertclasscour(int Classid,int uid,String Coursename,String ccteacher,String cc_time1,int cc_time2,int cc_status,String ccuse);
	//18.与上一个方法搭配，查出教师名字
	public String selectname(int uid);
	//19.根据教室地点和名称查询教室classid
	public int selectlcassid(String class_name,String calss_loc);
	//20.显示教室安排-所有的安排
	public List<classroom> showarrange();
	//21.删除已安排的教室，参数ccid
	public void delectarranged(int ccid);
	//22.根据教室地点，名字，时间等等多条件查询
	public List<classroom> showbysomething(String class_name,String calss_loc,String cc_time1,String cc_time2,int status);
	//23.管理员添加教师信息--未使用
	public void insertinfoteacher(String username,String password,String name,int uid_rol,int uid_run);
	//24.显示教师所有信息
	public List<User> teacherinfo(int rol);
	//25.停用教师
	public void updateteainfo(int run,int uid);
	//26.启动教师
	public void updateteainfo2(int run,int uid);
	//27.删除教师
	public void deleteteacher(int uid);
	//28.插入教师
	public void insertteacher(String username,String password,String name,int uid_rol,int uid_run,int uid_phone,String uid_email,String uid_time);
	//29.显示未查看消息
	public List<Message> showmess(int uid,int mess_status);
	//30.显示已查看消息
	public List<Message> showmessed(int uid,int mess_status);
	//31.进行未查看向查看转化
	public void updatemess(int mess_status,int mesid);
}
