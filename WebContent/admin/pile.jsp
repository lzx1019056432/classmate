<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="admin/js/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
if('${requestScope.flag}'=='0')
{	   alert('登录成功,您当前的身份是管理员');
	   window.location.href = "classlist.do";
}
else if('${requestScope.flag}'=='1') 
{	   alert('登录成功,您当前的身份是教师');
	   window.location.href = "admin/tec-classroom-list.jsp";
}
else if('${requestScope.flag}'=='2')
{	   alert('登录失败，请重新登录');
	   window.location.href = "admin/login.jsp";
}

	  
	});
</script>
<body>

</body>
</html>