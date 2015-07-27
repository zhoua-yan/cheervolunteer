<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import = "cheer.login.Register" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="register" class="cheer.login.Register" scope="session"> </jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
    <jsp:getProperty property="backNews" name="register"/>
 	<br>
 	 
 	<br> 登录用户名：<jsp:getProperty property="logname" name="register"/>
 	<br> 登录会员名称：<jsp:getProperty property="name" name="register"/>
 	<br> 登录会员密码：<jsp:getProperty property="password" name="register"/>
 	<br> 登录会员简介：<jsp:getProperty property="message" name="register"/>
 	  
  </body>
</html>
