package com.xxx.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xxx.dao.Userdao;
import com.xxx.entity.Message;
import com.xxx.entity.User;
import com.xxx.entity.clacur;
import com.xxx.entity.classroom;



@Controller
public class controller {
	@Autowired
	private Userdao userdao;

	//1.用户登陆权限验证
	@RequestMapping(value="/Login")
	public String test1(ModelMap map,String username,String password,HttpSession session)
	{  
		User user = userdao.Login(username, password);
		 int flag;
		if(user==null)
		{
			map.addAttribute("flag", "2");
		}else{
			flag = user.getUid_rol();
			if(flag==0)
			map.addAttribute("flag", "0");
			else
			map.addAttribute("flag", "1");
			 session.setAttribute("users", user);
		}
		System.out.println("flag:");
		return "forward:admin/pile.jsp";
		
	}
	//2.教室添加
		@RequestMapping("Addclass")
		public void test2(ModelMap map,classroom cr,HttpSession session,HttpServletResponse response) throws IOException
		{  
			int flag = userdao.InsertClassroom(cr.getClass_name(), cr.getClass_loc(), cr.getClass_number(), cr.getClass_remark());
			System.out.println("添加教室操作");
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close();
			 
		}
		//3.教室列表显示-管理
		@RequestMapping(value="/classlist")
		public String test3(ModelMap map,HttpSession session)
		{  
			
			List<classroom> list = userdao.listroom();
			int number = userdao.Classroomnumber();
			User user = (User)session.getAttribute("users");
			//int messalert = userdao.Selmess(user.getUid(), 0);
			List<Message> List = userdao.showmess(1,0);
			int messalert = List.size();
			 map.addAttribute("list", list);
			 map.addAttribute("number", number);
			 session.setAttribute("messlaert", messalert);
			 
			 System.out.println("list"+list.size());
			return "admin/classroom-all";
		}
		
		//3.教室列表显示-管理
		@RequestMapping(value="/searchroom.do")
		public String test7(ModelMap map,String class_name,String class_loc,HttpSession session)
		{  
			
			List<classroom> list = userdao.searchroom(class_name, class_loc); 
			System.out.println("class_name"+class_name+"----"+class_loc);
			int number = userdao.Classroomnumberwithtop(class_name, class_loc);
			 map.addAttribute("list", list);
			 map.addAttribute("number", number);
			 
			 System.out.println("list-classroom"+list.size()); 
			return "admin/classroom-all";
		}
				
		
		//4.教室列表显示-教师
		@RequestMapping(value="/tecclasslist")
		public String test4(ModelMap map,HttpSession session)
		{  
			
			List<classroom> list = userdao.listroom();
			 map.addAttribute("list", list);
			return "tec-classroom-list";
		}
		//5.删除教室
		@RequestMapping(value="/delclassroom")
		public void test8(ModelMap map,int classid,HttpSession session,HttpServletResponse response) throws IOException
		{  
			System.out.println("classid---"+classid);
			userdao.delClass(classid);
			System.out.println("已删除");
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close();	 
		}
		//6.显示剩余教室
		@RequestMapping(value="/searchhaving")
		public void test9(ModelMap map,String class_loc,String class_name,String cc_time1,HttpSession session,HttpServletResponse response) throws IOException
		{  
			
			List<clacur> list = userdao.searchhave(class_loc, class_name, cc_time1);
			
			 String jsonStr = JSON.toJSONString(list);
			 System.out.println("jsonStr*****************"+jsonStr);
			PrintWriter out = response.getWriter();
		    out.print(jsonStr);
	        out.flush();
	        out.close(); 
		}
		//7.添加教室-课程安排以及申请
		@RequestMapping(value="/addclacur")
		public void test10(ModelMap map,clacur cla,int uid,String class_name,String class_loc,String Coursename,HttpSession session,HttpServletResponse response) throws IOException
		{  
			System.out.println("run success");
			String name=userdao.selectname(uid);
			int classid = userdao.selectlcassid(class_name, class_loc);
			System.out.println("name"+name);
			userdao.insertclasscour(classid, uid, Coursename, name, cla.getCc_time1(), cla.getCc_time2(), cla.getCc_status(), "无");
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close(); 
		}	
		//8.显示所有安排好的教室
		@RequestMapping(value="/showarrange")
		public String test11(ModelMap map,HttpSession session)
		{  
			
			List<classroom> list = userdao.showarrange();
			 map.addAttribute("shownumber", list.size());
			System.out.println("=============="+list.size());
			 map.addAttribute("list", list);
			return "admin/classroom-list";
		}
		//9.删除已经安排好的教室
		@RequestMapping(value="/deletearranged")
		public void test12(ModelMap map,HttpSession session,int ccid,HttpServletResponse response) throws IOException
		{  
			
			userdao.delectarranged(ccid);
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close(); 
			 
		}
		//10.显示根据条件查询到的项目
		@RequestMapping(value="/searchbythings")
		public String test13(ModelMap map,String class_name,String class_loc,String cc_time1,String cc_time12,int status,HttpSession session)
		{  
			System.out.println(class_name+""+class_loc+""+cc_time1+""+cc_time12+""+status);
			List<classroom> list = userdao.showbysomething(class_name, class_loc, cc_time1, cc_time12, status);
			 map.addAttribute("list", list);
			 map.addAttribute("shownumber", list.size());
			 System.out.println("show:"+list.size());
			return "admin/classroom-list";
		}
		//11.课程管理中的所有显示操作
				@RequestMapping(value="/courselist")
				public String test14(ModelMap map,HttpSession session)
				{  
					
					List<classroom> list = userdao.showarrange();
					 map.addAttribute("shownumber", list.size());
					 map.addAttribute("list", list);
					return "admin/course-list";
				}
		//12.教室列表显示-教师
		@RequestMapping(value="/teacherlist")
		public String test5(ModelMap map,HttpSession session)
		{  
			
			List<User> list = userdao.teacherinfo(1);
			map.addAttribute("teanumber", list.size());
			 map.addAttribute("list", list);
			return "admin/admin-list";
		}
		//13.停用教师
		@RequestMapping(value="/stopteacher")
		public void test15(ModelMap map,int uid,HttpSession session,HttpServletResponse response) throws IOException
		{  
			
			userdao.updateteainfo(1, uid);
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close(); 
		}
		//14.启用教师
		@RequestMapping(value="/startteacher")
		public void test16(ModelMap map,int uid,HttpSession session,HttpServletResponse response) throws IOException
		{  
			userdao.updateteainfo2(0, uid);
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close(); 
		}
		//15.删除教师
		@RequestMapping(value="/deleteteacher")
		public void test17(ModelMap map,int uid,HttpSession session,HttpServletResponse response) throws IOException
		{  
			userdao.deleteteacher(uid);
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close(); 
		}
		//16。添加教师
		@RequestMapping(value="/insertteacher")
		public void test18(ModelMap map,User user,HttpSession session,HttpServletResponse response) throws IOException
		{  
			Date day = new Date();
			SimpleDateFormat format0 = new SimpleDateFormat("yyyy-MM-dd");
	        String time = format0.format(day.getTime());//这个就是把时间戳经过处理得到期望格式的时间

			userdao.insertteacher(user.getUsername(), user.getPassword(), user.getName(), user.getUid_rol(), user.getUid_run(), user.getUid_phone(), user.getUid_email(), time);
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close(); 
		}
		//17.进行转化
		@RequestMapping(value="/uodatemess")
		public void test19(ModelMap map,int mesid,HttpSession session,HttpServletResponse response) throws IOException
		{ 
			userdao.updatemess(1, mesid);
			PrintWriter out = response.getWriter();
		    out.print("1");
	        out.flush();
	        out.close(); 
		}
		//18.显示未查看消息
		@RequestMapping(value="/showmess")
		public String test20(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException
		{ 
			/*User user = (User)session.getAttribute("users");
			userdao.showmess(user.getUid());*/
			List<Message> List = userdao.showmess(1,0);
			map.addAttribute("list", List);
			map.addAttribute("number", List.size());
			return "admin/feedback-list";
			 

		}
		//19.显示已查看消息
		@RequestMapping(value="/showmessed")
		public String test21(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException
		{ 
			/*User user = (User)session.getAttribute("users");
			userdao.showmess(user.getUid());*/
			List<Message> List  = userdao.showmessed(1,1);
			map.addAttribute("list", List);
			map.addAttribute("number", List.size());
			System.out.println("run");
			return "admin/feedback-old-list";
		}
}
