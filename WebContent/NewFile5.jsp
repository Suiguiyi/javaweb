<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理信息系统登录</title>

<style type="text/css">
#top{
width:100%;
height:100px;
text-align:center;
margin:0 auto;
font-size:26px;
}
#main{
width:250px;
height:125px;
border:2px solid blue;
background-color:white;
text-align:center;
margin:0 auto;
top:80px;

}
#footer{
width:100%;
height:10px;
text-align:right;
position:absolute;
bottom:0px;
}
</style>
</head>
<body background="C:\Users\SGY\Desktop\背景\4.jpg">
<div id="top">
<b>用户登录</b>
</div>
<br/><br/>
<form action="Login" method="post">
<div id="main"><br/>
用户名：<input name="name" type="text" id="name" 
value="请输入学号" onfocus="if (this.value=='请输入学号') {this.value='';this.style.color='#000';}" onblur="if (this.value=='') {this.value='请输入学号';this.style.color='gray'}" maxlength="50"/><br/><br/>
密&nbsp;&nbsp;码：<input name="password" type="password" id="password" size="20" maxlength="50"><br/><br/>
	
	<input type="submit" name="Button" value="登陆" id="Button"/>
	
	<a href="CHZHmima.jsp">重置密码</a>
</div>
<div id="footer">
<small>信管161班web开发 联系：12345xx</small>
</div>
</form>
<%out.print("<script language='javascript'>alert('注册成功');window.location.herf='denglu.jsp';</script>"); %></body>
</html>