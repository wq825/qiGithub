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
	<form class="layui-form" style="width: 80%;">
		<!-- 管理员id -->
		<input type="hidden" name="id" value="${user.id }" id="id" />
		<div class="layui-form-item">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-block">
				<input type="text" id="username" class="layui-input"
					name="username" value="${user.username }"
					disabled="disabled">
			</div>
			<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-inline">
				<input type="password" id="password" class="layui-input"
					lay-verify="pass" placeholder="请输入密码" name="password" value="${user.password }">
			</div>
		</div>
				<div class="layui-form-item">
				<label class="layui-form-label">角色设置</label>
				<div class="layui-input-inline">
					<select name="roleId">
					<option value="21" <c:if test="${user.roleId==21}">selected</c:if>>教员</option>
						<option value="22" <c:if test="${user.roleId==22}">selected</c:if>>管理员</option>
						<option value="23" <c:if test="${user.roleId==23}">selected</c:if>>辅导员</option>
						<option value="24" <c:if test="${user.roleId==24}">selected</c:if>>研发专员</option>
						<option value="25" <c:if test="${user.roleId==25}">selected</c:if>>教务</option>
						<option value="26" <c:if test="${user.roleId==26}">selected</c:if>>教质部经理</option>
						<option value="27" <c:if test="${user.roleId==27}">selected</c:if>>单词采集员</option>
						<option value="28" <c:if test="${user.roleId==28}">selected</c:if>>网络推广专员</option>
						<option value="29" <c:if test="${user.roleId==29}">selected</c:if>>网络咨询</option>
						<option value="30" <c:if test="${user.roleId==30}">selected</c:if>>咨询师</option>
						<option value="31" <c:if test="${user.roleId==31}">selected</c:if>>学术经理</option>
						<option value="32" <c:if test="${user.roleId==32}">selected</c:if>>学生</option>
						<option value="33" <c:if test="${user.roleId==33}">selected</c:if>>咨询经理</option>
						<option value="34" <c:if test="${user.roleId==34}">selected</c:if>>项目主任</option>
						<option value="35" <c:if test="${user.roleId==35}">selected</c:if>>研发经理</option>
						<option value="36" <c:if test="${user.roleId==36}">selected</c:if>>助教</option>
					    <option value="37" <c:if test="${user.roleId==37}">selected</c:if>>总经理</option>
					</select>
				</div>
			</div>
		<div class="layui-form-item">
				<label class="layui-form-label">登录日期</label>
				<div class="layui-input-block">
					<input type="text" id="birthday" class="layui-input"
						autocomplete="off" name="birthday" lay-verify="date"
						placeholder="yyyy-MM-dd"
						value="<fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd"/>">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">退出日期</label>
				<div class="layui-input-block">
					<input type="text" id="birthday" class="layui-input"
						autocomplete="off" name="birthday" lay-verify="date"
						placeholder="yyyy-MM-dd"
						value="<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>">
				</div>
			</div>
			<div class="layui-form-item">
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-block">
				<input type="text" name="email" id="email" class="layui-input"
					lay-verify="email" placeholder="请输入邮箱" value="${user.email }">
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">手机号</label>
				<div class="layui-input-block">
					<input type="text" name="phone" class="layui-input"
						lay-verify="phone" placeholder="请输入手机号" value="${user.phone }">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit="" lay-filter="updateUser">立即保存</button>
				</div>
			</div>
	</form>
	<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
	<script type="text/javascript" src="${ctx }/js/user/editUser.js"></script>
</body>
</html>