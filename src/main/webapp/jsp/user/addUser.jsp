<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx}/layui/css/layui.css">
<script>
	var ctx = "${ctx}";
</script>
</head>
<body>
	<form class="layui-form" style="width: 80%;" id="auf">
		<div class="layui-form-item">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-inline">
				<input type="text" name="username" id="username" class="layui-input"
					lay-verify="required" placeholder="请输入用户名" value="">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-inline">
				<input type="password" id="password" class="layui-input"
					lay-verify="pass" placeholder="请输入密码" name="password" value="">
			</div>
			<label class="layui-form-label">确认密码</label>
			<div class="layui-input-inline">
				<input type="password" class="layui-input" lay-verify="repass"
					placeholder="请确认密码" value="">
			</div>
		</div>
		<label class="layui-form-label">锁定状态</label>
		<div class="layui-input-inline" style="margin-left: 10px">
					<select name="status" class="" id="status">
						<option value="-1">请选择用户锁定状态</option>
						<option value="0">锁定</option>
						<option value="1">正常</option>
					</select>
				</div>
		<div class="layui-form-item">
			<label class="layui-form-label">角色设置</label>
			<div class="layui-input-inline">
				<select name="roleId">
					<option value="">请选择</option>
					<option value="21">教员</option>
						<option value="22">管理员</option>
						<option value="23">辅导员</option>
						<option value="24">研发专员</option>
						<option value="25">教务</option>
						<option value="26">教质部经理</option>
						<option value="27">单词采集员</option>
						<option value="28">网络推广专员</option>
						<option value="29">网络咨询</option>
						<option value="30">咨询师</option>
						<option value="31">学术经理</option>
						<option value="32">学生</option>
						<option value="33">咨询经理</option>
						<option value="34">项目主任</option>
						<option value="35">研发经理</option>
						<option value="36">助教</option>
					    <option value="37">总经理</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">退出日期</label>
			<div class="layui-input-inline">
				<input type="text" id="birthday" class="layui-input" name="birthday"
					lay-verify="required" placeholder="请输入日期">
			</div>
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-inline">
				<input type="text" id="email" name="email" class="layui-input"
					lay-verify="email" placeholder="请输入邮箱" value="">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">手机号</label>
			<div class="layui-input-inline">
				<input type="text" name="phone" class="layui-input"
					lay-verify="phone" placeholder="请输入手机号" value="">
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit="" lay-filter="addUser">立即提交</button>
			</div>
		</div>
	</form>
	<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
	<script type="text/javascript" src="${ctx }/js/user/addUser.js"></script>
</body>
</html>