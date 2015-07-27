<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import = "cheer.login.ShowByPage" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="show" type="cheer.login.ShowByPage" scope="session"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
    	当前显示内容是：
    	<table>
    		<tr>
    		<th>用户名</th>
    		<th>姓名</th>
    		<th>简介</th>
    		</tr>
    		<jsp:getProperty property="presentPageResult" name="show"/>
    	</table>
    	<br/>每页最多显示<jsp:getProperty name="show" property="pageSize"/>条信息
    	<br/>当前显示第<jsp:getProperty name="show" property="showPage"/>页，共有
    	<jsp:getProperty name="show" property="pageAllCount"/>页.
    	<br/>单击”上一页“或”下一页“按钮查看信息
    	
    	<table>
    		<tr>
    		<td>
    			<form action="helpShowMember" method="post">
    				<input type="hidden" name="showPage" value="<%= show.getShowPage()-1 %>"/>
    				<input type="submit" name="g" value="上一页"/>   	
    			</form>
    		</td>
    		<td>
    			<form action="helpShowMember" method="post">
    				<input type="hidden" name="showPage" value="<%= show.getShowPage()+1 %>"/>
    				<input type="submit" name = "g" value="下一页"/>
    				"
    			</form>
    		</td>
    		<td>
    			<form action="helpShowMember" method="post">
    				输入页码：<input type="text" name="showPage" size=5/>
    				<input type="submit" name="g" value="提交"/>
    			</form>
    		</td>
    		</tr>
    	</table>
    	
  </body>
</html>
