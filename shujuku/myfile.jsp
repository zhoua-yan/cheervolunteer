<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询个人信息</title>
</head>
<body>
<%
  Connection conn=null;
  String id=request.getParameter("id");
  try
  {
     Class.forName("com.mysql.jdbc.Driver");
     conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","cheervolunteer");
     Statement stmt=conn.createStatement();
     ResultSet ra=stmt.executeQuery("select * from personal_information where 登录邮箱=id");  
%>
<center><h2>个人档案</h2></center>
<table border="1" align="center" id=one>
   <tr>
      <th>姓名</th>
      <th>性别</th>
      <th>年龄</th>
      <th>学校</th>
      <th>专业</th>
      <th>特长</th>
      <th>爱好</th>
   </tr>
   <% while(ra.next()) { %>
   <tr bgcolor="lightblue">
     <td><%=ra.getString("name") %></td>
     <td><%=ra.getString("sex") %></td>
     <td><%=ra.getString("age") %></td>
     <td><%=ra.getInt("school") %></td>
     <td><%=ra.getString("major") %></td>
     <td><%=ra.getString("stren") %></td>
     <td><%=ra.getString("hobby") %></td>
   </tr> 
  <% } %>
</table>

 <%
  ra.close();
  stmt.close();
  conn.close();
  }
  catch(Exception e)
  {
     out.println(e.getMessage());
  }
%>
</body>
</html>
