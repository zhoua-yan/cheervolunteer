<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="cheer.login.MemberInform" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:useBean id="inform" type="cheer.login.MemberInform" scope="request"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
   	<table>
    		<tr>
    		<th>用户名</th>
    		<th>姓名</th>
    		<th>简介</th>
    		</tr>
    		<tr>    
    		<td><jsp:getProperty property="logname" name="inform"/></td>
    		<td><jsp:getProperty property="name" name="inform"/></td>
    		<td><jsp:getProperty property="message" name="inform"/></td> 
    		</tr>    		
    </table>
  </body>
</html>
