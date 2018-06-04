<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body background="C:\Users\SGY\Desktop\背景\4.jpg">
Hello!<br>
<form action="Adduser.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加用户</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">用户名：</td>
				<td><input type="text" name="name" value="请输入学号" onfocus="if (this.value=='请输入学号') {this.value='';this.style.color='#000';}" 
				onblur="if (this.value=='') {this.value='请输入学号';this.style.color='gray'}"/></td>
			</tr>
			<tr>
				<td align="right">密&nbsp;&nbsp;码：</td>
				<td><input type="text" name="password" /></td>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="注  册">
				</td>
		</table>
	</form>
<a href="denglu.jsp">退出</a>
</body>
</html>