﻿<!--_meta 作为公共模版分离出去-->
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
<!--/meta 作为公共模版分离出去-->

<title>教室列表</title>
<meta name="keywords">
<meta name="description">
</head>
<body>
<!--_header 作为公共模版分离出去-->
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml">教室与课程管理系统</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml">H-ui</a> 
			<span class="logo navbar-slogan f-l mr-10 hidden-xs">v1.0</span> 
			<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			<nav class="nav navbar-nav">
		</ul>
	</nav>
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li>超级管理员</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
							<li><a href="#">切换账户</a></li>
							<li><a href="#">退出</a></li>
				</ul>
			</li>
					<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
					<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
							<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
							<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
							<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
							<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
							<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</div>
</div>
</header>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">

	<div class="menu_dropdown bk_2">
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 教室管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="classroom-all.jsp" title="教室总览">教室总览</a></li>
					<li><a href="classroom-list.jsp" title="教室管理">教室列表</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-course">
			<dt><i class="Hui-iconfont">&#xe613;</i> 课程管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="course-list.jsp" title="课程管理">课程管理</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-admin">
			<dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="admin-role.jsp" title="角色管理">角色管理</a></li>
					<li><a href="admin-list.html" title="管理员列表">管理员列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 消息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="feedback-list.jsp" title="未读消息">未读消息</a></li>
					<li><a href="feedback-old-list.jsp" title="已读消息">已读消息</a></li>
				</ul>
			</dd>
		</dl>

	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
		<span class="c-gray en">&gt;</span>
		教室管理
		<span class="c-gray en">&gt;</span>
		教室列表
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<div class="text-c">
				<span class="select-box inline">
				<select name="" class="select">
					<option value="0">选择学期</option>
					<option value="1">2015-2016学年秋</option>
					<option value="2">2016-2017学年春</option>
					<option value="3">2016-2017学年秋</option>
					<option value="4">2017-2018学年春</option>
					<option value="5">2017-2018学年秋</option>
					<option value="6">2018-2019学年春</option>
					<option value="7">2018-2019学年秋</option>
				</select>
				</span>
				<span class="select-box inline">
				<select name="" class="select">
					<option value="0">选择教学楼</option>
					<option value="1">第一公教</option>
					<option value="2">第二公教</option>
					<option value="3">软件园</option>
				</select>
				</span>
				<span class="select-box inline">
				<select name="" class="select">
					<option value="0">选择状态</option>
					<option value="1">有课</option>
					<option value="2">未启用</option>
					<option value="3">已预约</option>
				</select>
				</span>
				日期范围：
				<input type="text" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}'})" id="logmin" class="input-text Wdate" style="width:120px;">
				-
				<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d'})" id="logmax" class="input-text Wdate" style="width:120px;">
				<input type="text" name="" id="" placeholder=" 教室号" style="width:250px" class="input-text">
				<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
				<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
				<a class="btn btn-primary radius" data-title="添加教室" _href="classroom-add.html" onclick="article_add('添加教室','classroom-add.html')" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加教室</a>
				</span>
				<span class="r">共有数据：<strong>54</strong> 条</span>
			</div>
			<div class="mt-20">
				<table class="table table-border table-bordered table-bg table-hover table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" name="" value=""></th>
							<th width="80">序号</th>
							<th width="80">教学楼</th>
							<th width="80">教室号</th>
							<th width="120">时间</th>
							<th width="80">使用者姓名</th>
							<th>用途</th>
							<th width="60">发布状态</th>
							<th width="120">操作</th>
						</tr>
					</thead>
					<tbody>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>10007</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10001')" title="查看">第一公教</u></td>
							<td>A107</td>
							<td>2018.1.5.第一大节</td>
							<td></td>
							<td></td>
							<td class="td-status"><span class="label label-success radius">已预约</span></td>
							<td class="f-14 td-manage"><a style="text-decoration:none" onClick="article_shenhe(this,'10007')" href="javascript:;" title="审核">待审核</a>
								<a style="text-decoration:none" class="ml-5" onClick="classroom_del(this,'10007')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>10001</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10001')" title="查看">第一公教</u></td>
							<td>A101</td>
							<td>2018.1.6.第一大节</td>
							<td>周老师</td>
							<td>英语课</td>
							<td class="td-status"><span class="label label-success radius">有课</span></td>
							<td class="f-14 td-manage"><!--<a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>-->
								<a style="text-decoration:none" class="ml-5" onClick="classroom_edit('编辑','classroom-add.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="classroom_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>10002</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10001')" title="查看">第一公教</u></td>
							<td>A102</td>
							<td>2018.1.6.第一大节</td>
							<td>周老师</td>
							<td>英语课</td>
							<td class="td-status"><span class="label label-success radius">有课</span></td>
							<td class="f-14 td-manage"><!--<a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>-->
								<a style="text-decoration:none" class="ml-5" onClick="classroom_edit('编辑','classroom-add.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="classroom_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>10003</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10001')" title="查看">第一公教</u></td>
							<td>A101</td>
							<td>2018.1.7.第一大节</td>
							<td>周老师</td>
							<td>英语课</td>
							<td class="td-status"><span class="label label-success radius">有课</span></td>
							<td class="f-14 td-manage"><!--<a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>-->
								<a style="text-decoration:none" class="ml-5" onClick="classroom_edit('编辑','classroom-add.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="classroom_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>10004</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10001')" title="查看">第一公教</u></td>
							<td>A101</td>
							<td>2018.1.8.第一大节</td>
							<td>周老师</td>
							<td>英语课</td>
							<td class="td-status"><span class="label label-success radius">有课</span></td>
							<td class="f-14 td-manage"><!--<a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>-->
								<a style="text-decoration:none" class="ml-5" onClick="classroom_edit('编辑','classroom-add.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="classroom_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>10005</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10001')" title="查看">第一公教</u></td>
							<td>A101</td>
							<td>2018.1.9.第一大节</td>
							<td>周老师</td>
							<td>英语课</td>
							<td class="td-status"><span class="label label-success radius">有课</span></td>
							<td class="f-14 td-manage"><!--<a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>-->
								<a style="text-decoration:none" class="ml-5" onClick="classroom_edit('编辑','classroom-add.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="classroom_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>10006</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10002')" title="查看">软件园</u></td>
							<td>B106</td>
							<td>2018.1.10.第一大节</td>
							<td></td>
							<td></td>
							<td class="td-status"><span class="label label-success radius">已预约</span></td>
							<td class="f-14 td-manage"><a style="text-decoration:none" onClick="article_shenhe(this,'10001')" href="javascript:;" title="审核">待审核</a>
								<a style="text-decoration:none" class="ml-5" onClick="classroom_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>10001</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang.html','10001')" title="查看">第一公教</u></td>
							<td>A101</td>
							<td>2018.1.11.第一大节</td>
							<td></td>
							<td></td>
							<td class="td-status"><span class="label label-success radius">未启用</span></td>
							<td class="f-14 td-manage">
								<!--<a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="申请预约">申请预约</a>-->
								<a style="text-decoration:none" class="ml-5" onClick="classroom_edit('编辑','classroom-apply.html','10001')" href="javascript:;" title="申请预约">申请预约</a>
								<a style="text-decoration:none" class="ml-5" onClick="classroom_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</article>
	</div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
		//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		{"orderable":false,"aTargets":[0,8]}// 不参与排序的列
	]
});

/*资讯-添加*/
function article_add(title,url,w,h){
//	var index = layer.open({
//		type: 2,
//		title: title,
//		content: url
//	});
//	layer.full(index);
	layer_show(title,url,w,h);
}
/*资讯-编辑*/
function classroom_edit(title,url,id,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
// /*资讯-删除*/
// function article_del(obj,id){
// 	layer.confirm('确认要删除吗？',function(index){
// 		$.ajax({
// 			type: 'POST',
// 			url: '',
// 			dataType: 'json',
// 			success: function(data){
// 				$(obj).parents("tr").remove();
// 				layer.msg('已删除!',{icon:1,time:1000});
// 			},
// 			error:function(data) {
// 				console.log(data.msg);
// 			},
// 		});
// 	});
// }

/*图片-删除*/
function classroom_del(obj,id){
    layer.confirm('确认要删除吗？',function(index){
        $(obj).parents("tr").remove();
        layer.msg('已删除!',{icon:1,time:1000});
    });
}
/*申请预约-审核*/
function article_shenhe(obj,id){
	layer.confirm('审核申请？', {
		btn: ['通过','不通过','取消'], 
		shade: false,
		closeBtn: 0
	},
        function(){
            $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary"  href="javascript:;" title="审核通过">审核通过</a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">有课</span>');
            $(obj).remove();
            layer.msg('有课', {icon:6,time:1000});
        },
        function(){
            $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary"  href="javascript:;" title="审核未通过">审核未通过</a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
            $(obj).remove();
            layer.msg('未通过', {icon:5,time:1000});
        });
    // function(){
	// 	$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="审核通过">审核通过</a>');
	// 	$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已预约</span>');
	// 	$(obj).remove();
	// 	layer.msg('已预约', {icon:6,time:1000});
	// },
	// function(){
	// 	$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="审核未通过">审核未通过</a>');
	// 	$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
	// 	$(obj).remove();
    	// layer.msg('未通过', {icon:5,time:1000});
	// });
}
/*资讯-下架*/
function article_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*资讯-发布*/
function article_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*资讯-申请上线*/
function article_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>