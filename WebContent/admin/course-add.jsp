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
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
<!--/meta 浣滀负鍏叡妯＄増鍒嗙鍑哄幓-->

<title>课程添加</title>
<link href="lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-container">
	<form class="form form-horizontal" id="form-article-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">浣跨敤鏃ユ湡锛�</label>
			<div class="formControls col-xs-8 col-sm-9">
				<!--<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd ',maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})" id="datemin" class="input-text Wdate">-->
				<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd '})" id="datemin" class="input-text Wdate">
			</div>
		</div>
		<!--<div class="row cl">-->
		<!--<label class="form-label col-xs-4 col-sm-2">璇勮缁撴潫鏃ユ湡锛�</label>-->
		<!--<div class="formControls col-xs-8 col-sm-9">-->
		<!--<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'datemin\')}'})" id="datemax" class="input-text Wdate">-->
		<!--</div>-->
		<!--</div>-->

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>涓婅鏃堕棿锛�</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="" class="select">
					<option value="0">绗竴鑺�-绗簩鑺�</option>
					<option value="1">绗笁鑺�-绗洓鑺�</option>
					<option value="2">绗簲鑺�-绗叚鑺�</option>
					<option value="3">绗竷鑺�-绗叓鑺�</option>
					<option value="4">绗節鑺�-绗崄鑺�</option>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>闄㈢郴涓撲笟锛�</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="" class="select">
					<option value="0">璁＄畻鏈虹瀛︿笌鎶�鏈闄�</option>
					<option value="1">鐞嗗闄�</option>
					<option value="2">鏈烘瀛﹂櫌</option>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>璇剧▼鍚嶏細</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="" class="select">
					<option value="0">璁＄畻鏈哄熀纭�</option>
					<option value="1">楂樻暟</option>
					<option value="2">鑻辫</option>
				</select>
				</span> </div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>璇剧▼鍙凤細</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="" name="">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>鏁欏笀鍚嶇О锛�</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="" name="">
			</div>
		</div>


		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>鏁欏鍙凤細</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="" class="select">
					<option value="0">A101</option>
					<option value="1">A102</option>
					<option value="2">A103</option>
				</select>
				</span> </div>
		</div>
	
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 淇濆瓨骞舵彁浜ゅ鏍�</button>
				<button onClick="article_save();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 淇濆瓨鑽夌</button>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;鍙栨秷&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</div>
</div>

<!--_footer 浣滀负鍏叡妯＄増鍒嗙鍑哄幓-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script> 
 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js">
	
 
</script> 

<!--/_footer /浣滀负鍏叡妯＄増鍒嗙鍑哄幓-->

<!--璇峰湪涓嬫柟鍐欐椤甸潰涓氬姟鐩稿叧鐨勮剼鏈�-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript">

</script>
</body>
</html>