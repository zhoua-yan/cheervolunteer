<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'checkAuthCode.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  <%
String rand = (String)session.getAttribute("rand");
String input = request.getParameter("rand");
if(rand.equals(input)){
out.print("<script>alert('��֤ͨ����');</script>");
%>
<jsp:forward page="helpLogin"/> <%
} 
else{
out.print("<script>alert('��������ȷ����֤�룡');location.href='login.jsp';</script>");
}
%> 
</body>
</html>
