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
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>修改涉案情况</title>
		<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
		<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
		<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
			type="text/css" />

		<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
		<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="js/pageKit.js"></script>
		<script type="text/javascript" src="js/checkUtil.js"></script>
	</head>

	<body>
		<form name="lawcaseUpdateForm" action="lawcaseAction!update" method="post"
			onsubmit="return checkLawcase();">
			<s:hidden name="lawcase.id"></s:hidden>
			
			<s:if test="lawcase.person!=null">
			<s:hidden name="lawcase.person.id"></s:hidden>
			</s:if>
			<s:if test="lawcase.clue!=null">
			<s:hidden name="lawcase.clue.id"></s:hidden>
			</s:if>
			<div class="pd-20">
				<div class="row cl mb-10">
					<div class="col-2">
						<label class="form-label text-r">
							案件编号：
						</label>
					</div>
					<div class="col-4">
							<s:textfield  id="caseNumber" cssClass="input-text radius size-M"
							cssStyle="width:200px;" name="lawcase.caseNumber"></s:textfield>
					</div>
					<div class="col-2">
						<label class="form-label text-r">
							案件性质：
						</label>
					</div>
					<div class="col-4">
					<s:textfield id="caseType" cssClass="input-text radius size-M"
							cssStyle="width:200px;" name="lawcase.caseType"></s:textfield>
					</div>
				</div>
				<div class="row cl mb-10">
					<div class="col-2">
						<label class="form-label text-r">
							案件名称：
						</label>
					</div>
					<div class="col-4">
						<s:textfield id="caseName" cssClass="input-text radius size-M"
							cssStyle="width:200px;" name="lawcase.caseName"></s:textfield>
					</div>
					<div class="col-2">
						<label class="form-label text-r">
							填报人：
						</label>
					</div>
					<div class="col-4">
					<s:textfield  id="fillName" cssClass="input-text radius size-M"
							cssStyle="width:200px;" name="lawcase.fillName"></s:textfield>
					</div>
				</div>
				<div class="row cl mb-10">
					<div class="col-2">
						<label class="form-label text-r">
							填报时间：
						</label>
					</div>
					<div class="col-4">
						<input type="text" name="lawcase.fillTime"
							onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"
							id="fillTime" class="input-text Wdate" style="width: 200px;" value="${lawcase.fillTime}">
					</div>
					<div class="col-2">
						<label class="form-label text-r">
							填报单位：
						</label>
					</div>
					<div class="col-4">
						<s:textfield  id="fillUnit" cssClass="input-text radius size-M"
							cssStyle="width:200px;" name="lawcase.fillUnit"></s:textfield>
					</div>
				</div>
				<div class="row cl mb-10">
					<div class="col-2">
						<label class="form-label text-r">
							简要案情：
						</label>
					</div>
					<div class="col-4"></div>
					<div class="col-10">
							<s:textarea name="lawcase.briefCase" cssClass="input-text radius size-M "
							cssStyle="width: 95%; height: 80px;"></s:textarea>
					</div>
				</div>
				<div class="row cl">
				    <s:token></s:token>
			    <div class="col-10 col-offset-2">
			      <input type="submit"  class="btn btn-primary radius" value="保存并提交"> </input>
			      <button onclick="childPage_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			    </div>
			</div>
	</body>
</html>
