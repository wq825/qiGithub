<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx}/layui/css/layui.css">
<link rel="stylesheet" href="${ctx }/css/list.css" media="all" />
<link rel="stylesheet" href="${ctx }/css/font_eolqem241z66flxr.css"
	media="all" />
<script>
	var ctx = "${ctx}";
</script>
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote news_search">
		<form class="layui-form">
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" id="username" value="" placeholder="请输入用户名"
						class="layui-input search_input ">
				</div>
				
				<div class="layui-input-inline" style="margin-left: 10px">
					<select name="status" class="" id="status">
						<option value="-1">请选择用户锁定状态</option>
						<option value="0">锁定</option>
						<option value="1">正常</option>
					</select>
				</div>
				<div class="layui-input-inline" style="margin-left: 10px">
					<select name="roleId" class="" id="roleId">
						<option value="0">请选择用户角色</option>
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
					<div class="layui-inline">
					<input type="text" id="createTimeStart" class="layui-input"
						name="createTimeStart" placeholder="登陆时间(开始)" value="">
				</div>
				-
				<div class="layui-inline">
					<input type="text" id="createTimeEnd" class="layui-input"
						name="createTimeEnd" placeholder="登陆时间(结束)" value="">
				</div>
				<a style="margin-left: 10px" class="layui-btn search_btn" lay-submit="" data-type="search"
					lay-filter="search">查询</a>
			
				<div class="layui-inline" style="margin-left: 10px">
					<a class="layui-btn layui-btn-normal userAdd_btn">添加用户</a>
				</div>
			</div>
		</form>
	</blockquote>
	<div class="layui-form">
		<table id="userList" lay-filter="userList"></table>
	</div>
	<script type="text/html" id="sexTpl">
 		 {{#  if(d.sex == 0){ }}
   			 <span style="color: #F581B1;">女</span>
  		{{#  } else if(d.sex == 1){ }}
   		 	<span style="color: #1e9fff;">男</span>
		{{#  } else{ }}
   		 	<span style="color: #08f55f;">保密</span>
  		{{#  } }}
	</script>
	<script type="text/html" id="statusTpl">
		<input type="checkbox" name="status" value="{{d.id}}" lay-skin="switch" lay-text="正常|禁用" lay-filter="statusSwitch" {{ d.status == 1 ? 'checked' : '' }}>
	</script>
	<script type="text/html" id="levelTpl">
		{{#  if(d.roleId == 21){ }}
   			 <span style="color: #c9c5c5;">教员</span>
		{{#  } else if(d.roleId == 22){ }}
   		 	<span style="color: #f8d207;">管理员</span>
         {{#  } else if(d.roleId == 22){ }}
   		 	<span style="color: #f8d207;">辅导员</span>  
        {{#  } else if(d.roleId == 22){ }}
   		 	<span style="color: #f8d207;">研发专员</span>
        {{#  } else if(d.roleId == 22){ }}
    		 	<span style="color: #f8d207;">教务</span>
        {{#  } else if(d.roleId == 22){ }}
   		 	<span style="color: #f8d207;">教质部经理</span>
        {{#  } else if(d.roleId == 22){ }}
   		 	<span style="color: #f8d207;">单词采集员</span>
        {{#  } else if(d.roleId == 22){ }}
   		 	<span style="color: #f8d207;">网络推广专员</span> 
		{{#  } else if(d.roleId == 23){ }}
   		 	<span style="color: #f72525;">网络咨询</span>
		{{#  } else if(d.roleId == 24){ }}
   		 	<span style="color: #cc1df8;">咨询师</span>
         {{#  } else if(d.roleId == 24){ }}
   		 	<span style="color: #cc1df8;">学术经理</span>
         {{#  } else if(d.roleId == 24){ }}
   		 	<span style="color: #cc1df8;">学生</span>
        {{#  } else if(d.roleId == 24){ }}
   		 	<span style="color: #cc1df8;">咨询经理</span>
        {{#  } else if(d.roleId == 24){ }}
   		 	<span style="color: #cc1df8;">项目主任</span>
        {{#  } else if(d.roleId == 24){ }}
   		 	<span style="color: #cc1df8;"研发经理</span>
        {{#  } else if(d.roleId == 24){ }}
   		 	<span style="color: #cc1df8;">助教</span>
		{{#  } else{ }}
   		 	<span style="color: #c9c5c5;">总经理</span>
  		{{#  } }}
	</script>
	<script type="text/html" id="barDemo">
		<a class="layui-btn layui-btn-sm" lay-event="edit">
            <i class="layui-icon">&#xe642;</i>编辑
        </a>
        <a class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">
            <i class="layui-icon">&#xe640;</i>删除
        </a>
    </script>
	<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
	<script type="text/javascript" src="${ctx }/js/user/userList.js"></script>
</body>

</html>
