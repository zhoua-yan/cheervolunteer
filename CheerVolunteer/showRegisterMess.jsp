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
 	 
 	<br> ��¼�û�����<jsp:getProperty property="logname" name="register"/>
 	<br> ��¼��Ա���ƣ�<jsp:getProperty property="name" name="register"/>
 	<br> ��¼��Ա���룺<jsp:getProperty property="password" name="register"/>
 	<br> ��¼��Ա��飺<jsp:getProperty property="message" name="register"/>
 	  
  </body>
</html>
