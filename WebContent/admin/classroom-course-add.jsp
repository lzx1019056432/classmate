<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico" >
<link rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>	 
	<script type="text/javascript" src="js/layer/2.4/layer.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>教室与课程管理系统</title>
<meta name="keywords">
<meta name="description">
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-article-add">
		<!--<div class="row cl">-->
			<!--<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>序号</label>-->
			<!--<div class="formControls col-xs-8 col-sm-9">-->
				<!--<input type="text" class="input-text" value="" placeholder="" id="" name="">-->
			<!--</div>-->
		<!--</div>-->
		<!--<div class="row cl">-->
			<!--<label class="form-label col-xs-4 col-sm-2">使用日期：</label>-->
			<!--<div class="formControls col-xs-8 col-sm-9">-->
				<!--<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd '})" id="datemin" class="input-text Wdate">-->
			<!--</div>-->
		<!--</div>-->
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>教学楼：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select id="class_loc" name="class_loc" class="select">
					<option value="第一公教">第一公教</option>
					<option value="第二公教">第二公教</option>
					<option value="软件园">软件园</option>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>教室号：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select id="class_name" name="class_name" class="select">
					<option value="A101">A101</option>
					<option value="A102">A102</option>
					<option value="A103">A103</option>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>使用时间1：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" onfocus="WdatePicker()" id="cc_time1" class="input-text Wdate" style="width:120px;">
					<button  class="btn btn-secondary radius" id="search" type="button" style="margin-left:20px;"><i class="Hui-iconfont">&#xe709;</i> 查询</button>
			
			</div>
			
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>使用时间2：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select id="cc_time2" name="cc_time2" class="select">
					<option value="0" id="opt1">第一大节</option>
					<option value="1" id="opt2">第二大节</option>
					<option value="2" id="opt3">第三大节</option>
					<option value="3" id="opt4">第四大节</option>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>使用者姓名：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select id="uid" name="uid" class="select">
					<option value="2">梁老师</option>
					<option value="1">李老师</option>
					<option value="3">刘老师</option>
					<option value="4">张老师</option>
				</select>
				</span> </div>
		</div>
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>用途：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="上课" id="Coursename" name="Coursename">
			</div>
		</div>
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button type="button" id="submitclassmess" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
				<button onClick="removeIframe();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script> 
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>   
<script type="text/javascript" src="lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#search").click(function(){
		//alert($("#selectroom option:selected").text());
		//jquery 获得select的值，通过传值
  	$.post("../searchhaving.do",
	{class_name:$("#class_name option:selected").text(),
	 class_loc:$("#class_loc option:selected").text(),
	 cc_time1:$("#cc_time1").val(),
	},
	function(result){
		 layer.msg('查询完毕',{time:2000});
		var jsobject = JSON.parse(result);
		 for(var i = 0; i < jsobject.length; i++)
			 {
			 if(jsobject[i].cc_time2==0)
				 $("#opt1").text("已占用");
		 	if(jsobject[i].cc_time2==1)
			 $("#opt2").text("已占用");
		   if(jsobject[i].cc_time2==2)
			 $("#opt3").text("已占用");
		  if(jsobject[i].cc_time2==3)
		    $("#opt4").text("已占用");
			 }
		   
	}); 
	}); 
	
});

//数据的插入
$(document).ready(function(){
	$("#submitclassmess").click(function(){
		//alert($("#selectroom option:selected").text());
		//jquery 获得select的值，通过传值
  	$.post("../addclacur.do",
	{class_name:$("#class_name option:selected").text(),
	 class_loc:$("#class_loc option:selected").text(),
	 cc_time1:$("#cc_time1").val(),
	 cc_time2:$("#cc_time2 option:selected").val(),
	 uid:$("#uid option:selected").val(),
	 Coursename:$("#Coursename").val()
	},
	function(result){
		layer.msg('插入完毕，请点击右上角关闭',{time:2000});
		   
});   
	}); 
	
});

</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>