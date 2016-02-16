<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport"
			content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
		<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
		<link href="css/ncss.css" rel="stylesheet" type="text/css" />
		<link href="lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
		<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
			type="text/css" />
		<link href="lib/webuploader/0.1.5/webuploader.css" rel="stylesheet"
			type="text/css" />
						<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
			<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
			<script type="text/javascript"
				src="lib/My97DatePicker/WdatePicker.js"></script>
			<script type="text/javascript" src="lib/icheck/jquery.icheck.min.js"></script>
			<script type="text/javascript"
				src="lib/Validform/5.3.2/Validform.min.js"></script>
			<script type="text/javascript"
				src="lib/webuploader/0.1.5/webuploader.min.js"></script>
			<script type="text/javascript"
				src="lib/ueditor/1.4.3/ueditor.config.js"></script>
			<script type="text/javascript"
				src="lib/ueditor/1.4.3/ueditor.all.min.js"> </script>
			<script type="text/javascript"
				src="lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
			<script type="text/javascript" src="js/H-ui.js"></script>
			<script type="text/javascript" src="js/H-ui.admin.js"></script>
		<script type="text/javascript" src="js/pageKit.js"></script>
		<script type="text/javascript" src="js/checkUtil.js"></script>
		<script type="text/javascript" src="js/commonUtil.js"></script>
		<title>新增案件</title>
	</head>
	<body>
			<form name="injurycaseAddForm" action="injurycaseAction!add" method="post"
			enctype="multipart/form-data" onsubmit="">
			<input type="hidden" name="injurycase.itype"
				value="<s:property value="itype"/>" />
		<div class="pd-20">
			<div class="row cl">
				<div class="col-6 col-offset-6 ">
					<div class="col-6 col-offset-6 ">
						<div class=" f-r pr-5">
							<s:token></s:token>
							<input type="submit" class="btn btn-success radius" id="button"
								value="保存并提交"></input>
						</div>
					</div>
				</div>
			</div>

			<div style="width: 100%">
				<div id="tab_demo" class="HuiTab">
					<div class="tabBar cl">
						<span>信息录入</span>
					</div>
					<div class="tabCon">
						<div class="row cl text-c">
							<h1 style="line-height: 80px;">
								<small style="color: #000;"><s:property
											value="pageTileName" />信息表</small>
							</h1>
						</div>
						<div class="col-12 mb-10  c-primary f-16"
							style="border-bottom: solid 2px #2DABF7">
							案件基本信息
						</div>
						<div class="row cl">
							<div class="row cl mb-10">
								<div class="col-2">
									<label class="form-label text-r">
										案件编号：
									</label>
								</div>
								<div class="col-4">
										<s:textfield id="caseNumber" name="injurycase.caseNumber"
												cssClass="input-text radius size-M "
												cssStyle="width: 200px;"></s:textfield>
								</div>
								<div class="col-2">
									<label class="form-label text-r">
										案件名称：
									</label>
								</div>
								<div class="col-4">
										<s:textfield id="caseName" name="injurycase.caseName"
												cssClass="input-text radius size-M "
												cssStyle="width: 200px;"></s:textfield>
								</div>
							</div>
							</div>
							<div class="row cl mb-10">
								<div class="col-2">
									<label class="form-label text-r">
										鉴定人：
									</label>
								</div>
								<div class="col-4">
									<s:textfield id="appraiser" name="injurycase.appraiser"
												cssClass="input-text radius size-M "
												cssStyle="width: 200px;"></s:textfield>
								</div>
								<div class="col-2">
									<label class="form-label text-r">
										联系电话：
									</label>
								</div>
								<div class="col-4">
										<s:textfield id="telphone" name="injurycase.telphone"
												cssClass="input-text radius size-M "
												cssStyle="width: 200px;"></s:textfield>
								</div>
							</div>
							<div class="row cl mb-10">
								<div class="col-2">
									<label class="form-label text-r">
										简要案情：
									</label>
								</div>
								<div class="col-10">
										<s:textfield name="injurycase.briefCase"
												cssClass="input-text" id="input9"
												cssStyle="width: 100%; height: 80px; float: left;"
												placeholder="简要案情"></s:textfield>
								</div>
							</div>
							
							<s:if test="itype==2">
							<div class="row cl mb-10">
								<div class="col-2">
									<label class="form-label text-r">
										伤势评估：
									</label>
								</div>
								<div class="col-10">
										<s:textfield name="injurycase.injuryAssess"
												cssClass="input-text" id="input9"
												cssStyle="width: 100%; height: 80px; float: left;"
												placeholder="伤势评估"></s:textfield>
								</div>
							</div>
							</s:if>
							
							<div class="row cl mb-10"></div>
						</div>


			</div>
			<script type="text/javascript">

$(function(){
$.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
});

/*新增关系人*/
function addgxr(title,url,w,h){
	layer.open({
    type: 2,
    area: ['800px', '500px'],
    fix: false, //不固定
	title:title,
    maxmin: true,
    content: url
});
}
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '10%'
	});
});

/*布控人-添加*/
function bukongman_add(title,url,w,h){
	var index = layer.open({
		type: 2,
		area: ['800px', '500px'],
		title: title,
		content: url
	});
	
}
/*机构流转*/
function Department_change(title,url,w,h){
	var index = layer.open({
		type: 2,
		area: ['800px', '500px'],
		title: title,
		content: url
	});
	
}
/*案例-发布*/
function article_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*案例-疑难*/
function difficult_start(title,url,w,h){
	var index = layer.open({
		type: 2,
		area: ['800px', '500px'],
		title: title,
		content: url
	});
	
}
/*案例-保存*/
function article_save(obj,id){
	layer.confirm('确认要保存吗？',function(index){
		layer.msg('已保存!',{icon: 6,time:1000});
	});
}
</script>
	</body>
</html>