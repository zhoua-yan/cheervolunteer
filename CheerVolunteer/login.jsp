<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to cheervonlunteer!</title>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js">
</script>

<script type="text/javascript">

//登录按钮在输入用户名和密码后激活
$(document).ready(function(e) {
    $("#passwordInput").bind("input propertychange",function(){
		if($("#userInput").val()!=""&&$("#passwordInput").val()!=""){
		$("#submitButton").removeAttr("disabled");
		$("#submitButton").css("cursor","pointer");
		}
		});
});

//在点击后出现浅红色输入框
$(document).ready(function() {
      $("#userInput").bind({
	                "focus":function(){$("#userInput").css("background-color","rgb(330,110,110)");},
	                "blur":function(){$("#userInput").css("background-color","rgb(230,80,80)");}
       });
});
$(document).ready(function() {
      $("#passwordInput").bind({
	                "focus":function(){$("#passwordInput").css("background-color","rgb(330,110,110)");},
	                "blur":function(){$("#passwordInput").css("background-color","rgb(230,80,80)");}
       });
});
$(document).ready(function() {
      $(".inputyanzhengma").bind({
	                "focus":function(){$(".inputyanzhengma").css("background-color","rgb(330,110,110)");},
	                "blur":function(){$(".inputyanzhengma").css("background-color","rgb(230,80,80)");}
       });
});

</script>
<script language="javascript">
function loadimage(){
document.getElementById("randImage").src = "authcode.jsp?"+Math.random();
}
</script> 
<style type="text/css">
body {
	width:960px;
	height:auto;
	font-family:"Microsoft YaHei UI";
	background-color:rgb(50,132,150);
	overflow:hidden;
}
#denglu-yemian{
	height:450px;
	width:800px;
	position:absolute;
	top:50%;
	left:50%;
	margin-left:-400px;
	margin-top:-225px;
	background-image: url(image/denglu-background.jpg);
	background-repeat: no-repeat;
	background-size:855px 560px;
	background-position:center;
	border-radius:10px;
}

#form{
	text-align:left;
	position:relative;	
	left:10cm;
	top:3cm;
}
/*这上面是三个框架，主要实现总体的布局*/

.inputBorder{
	width:310px;
	height:32px;
	margin-bottom:8px;
	text-align:right;
	background-color:rgb(223,80,80);
	border-radius: 6px;
}
.yanZhengMa{width:180px;}

.inputsize{
	font-size:12px;	
	color:#fff;
	outline:none;
	width: 158px;
	height: 25px;
	position:relative;
	top:3px;
	right:2px;
	border: none;
	background-color:rgb(223,80,80);
	border-radius:6px;	
}
.inputyanzhengma{width: 94px;}


#code{
	/*验证码这块要用jsp写，所以就摆了个样子在这里*/
	height:25px;
	width:70px;
	border:none;
	position:relative;
	top:3px;
    font-style:italic;
    color:rgb(223,80,80);
	border-radius:6px;
	background-color:#FFF;
    font-weight:bolder;
}

/*提交按钮还没有实现任何功能*/
#submitButton{
	position:relative;
	left:4.9cm;
	top:-2.1cm;
	width: 125px;
	height: 70px;
	border-radius: 10px;
	background-color: rgb(72,108,205);
	background-image: url(image/denglu-button.jpg);
	background-repeat: no-repeat;
	background-size:cover;
	background-position:center;
	border:none;
	
}
#submitButton:disabled{
	background-image:url(image/denglu-button-disabled.jpg);
}

a {
	font-size: 11px;
	color: #FFF;
}
label{
	font-size:16px;
	color:#fff;
	font-weight:900;
	position:relative;
	top:3px;
	}


</style>
  </head>
  
<body>
<div id="denglu-yemian">
  <div id="form">
  <form action="checkAuthCode.jsp" method="post" >
    <div id="username" class="inputBorder">
    <label>用户名：</label><input type="text" name="logname" id="userInput" class="inputsize" tabindex="1"/>&nbsp;&nbsp;&nbsp;<a href="注册页面.html" target="_blank">未注册？</a>&nbsp;&nbsp;
    </div>
    
    <div id="password" class="inputBorder">
    <label>密&nbsp;&nbsp;&nbsp;码：</label><input name="password" type="password" id="passwordInput" maxlength="16" class="inputsize" tabindex="2"/>&nbsp;<a href="找回密码-验证.html" target="_blank">忘记密码？</a>&nbsp;&nbsp;
    </div>

    <div class="inputBorder yanZhengMa">
    <label>验证码：</label><input type="text" name="rand" class="inputsize inputyanzhengma" tabindex="3"/>&nbsp;
    </div> 

    
    <div class="inputBorder yanZhengMa">
    <img name="randImage" id="randImage" src="authcode.jsp"/> &nbsp;&nbsp;&nbsp;
  <a href="javascript:loadimage();" id="codeChange"" >看不清？</a>&nbsp;&nbsp;&nbsp;
    </div>

    <div>
  <input id="submitButton" name="提交" type="submit"  value="" disabled="disabled" tabindex="4"/>
    </div>
    
  </form>
  </div>
</div>
</body>
  
</html>
