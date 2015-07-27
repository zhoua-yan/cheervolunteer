<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>启乐-注册</title>
</head>
<body>
	<form action = "helpRegister" method="post">
	<table>
		<a>输入信息</a>
		<tr>
		<td>用户名：</td><td><input type="text" name="logname" />*</td>
		</tr>
		<tr>
		<td>密码：</td><td><input type="password" name="password"/>*</td>
		</tr>
		<tr>
		<td>姓名：</td><td><input type="text" name="name"/>*</td>
		</tr>
		<tr>
		<td>简介：</td><td><textarea name="message" Row="6" Cols="30"></textarea></td>
		</tr>
		<tr><td><input type="submit" value="提交"/></td></tr>
	</table>
	</form>
</body>



</html>
