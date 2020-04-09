<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx }/css/style.css">
<script>
	var ctx = "${ctx}";
</script>
</head>
<body onload="showtime()">
	<div class="b">
		<span id="clock"></span>
	</div>
	<div class="wrap">
		<h1>欢迎你登录</h1>
		<span><strong>后台权限管理系统</strong>
		</span>
	</div>
	<div class="c">
	</div>
	
</body>
</html>