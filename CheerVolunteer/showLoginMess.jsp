<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page import = "cheer.login.Login" %>

<jsp:useBean id="login" type="cheer.login.Login" scope="session"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
 	<jsp:getProperty property="backNews" name="login"/>
 	<br>
 	<% if(login.getSuccess()==true){
 	%> <br> ��¼��Ա���ƣ�<jsp:getProperty property="logname" name="login"/>
 	<% }
 	   else{ 
 	%> <br> ��¼��Ա���ƣ�<jsp:getProperty property="logname" name="login"/>
 	   <br> ��¼��Ա���룺<jsp:getProperty property="password" name="login"/>
 	   <%} %>
  </body>
</html>
