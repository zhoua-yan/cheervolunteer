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
    	��ǰ��ʾ�����ǣ�
    	<table>
    		<tr>
    		<th>�û���</th>
    		<th>����</th>
    		<th>���</th>
    		</tr>
    		<jsp:getProperty property="presentPageResult" name="show"/>
    	</table>
    	<br/>ÿҳ�����ʾ<jsp:getProperty name="show" property="pageSize"/>����Ϣ
    	<br/>��ǰ��ʾ��<jsp:getProperty name="show" property="showPage"/>ҳ������
    	<jsp:getProperty name="show" property="pageAllCount"/>ҳ.
    	<br/>��������һҳ������һҳ����ť�鿴��Ϣ
    	
    	<table>
    		<tr>
    		<td>
    			<form action="helpShowMember" method="post">
    				<input type="hidden" name="showPage" value="<%= show.getShowPage()-1 %>"/>
    				<input type="submit" name="g" value="��һҳ"/>   	
    			</form>
    		</td>
    		<td>
    			<form action="helpShowMember" method="post">
    				<input type="hidden" name="showPage" value="<%= show.getShowPage()+1 %>"/>
    				<input type="submit" name = "g" value="��һҳ"/>
    				"
    			</form>
    		</td>
    		<td>
    			<form action="helpShowMember" method="post">
    				����ҳ�룺<input type="text" name="showPage" size=5/>
    				<input type="submit" name="g" value="�ύ"/>
    			</form>
    		</td>
    		</tr>
    	</table>
    	
  </body>
</html>
