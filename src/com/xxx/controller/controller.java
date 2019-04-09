package com.xxx.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xxx.dao.Userdao;
import com.xxx.entity.User;



@Controller
public class controller {
	@Autowired
	private Userdao userdao;

	//1.用户登陆权限验证
	@RequestMapping(value="/Login",method=RequestMethod.POST)
	@ResponseBody
	public int test1(ModelMap map,String username,String password,HttpSession session)
	{  
		User user = userdao.Login(username, password);
		int flag=-1;
		int rol;
		if(user==null)
		{
			return flag;
		}else{
			rol = user.getUid_rol();
			 session.setAttribute("users", user);
			return rol;
		}
	
		
	}
	

}
