<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
    <table>
    	<form action = "helpShowMember" method="post" name = "form">
    		��ҳ��ʾȫ���Ա
    		<input type="hidden" value="1" name="showPage" size="6"/>
    		<input type="submit" value="��ʾ" name="submit"/>
    		
    	</form>
    	<form action="helpShowMember" method="get" name = "form">
    		������Ҫ���ҵĻ�Ա����
    		<input type="text" name ="logname" size="6"/>
    		<input type="submit" value="��ʾ" name = "submit"/>
    		"
    	</form>
    	
    </table>
  </body>
</html>
