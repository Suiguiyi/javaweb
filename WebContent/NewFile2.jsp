<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<%
	// 权限验证
	if(session.getAttribute("studentId")==null){
		response.sendRedirect("denglu.jsp");
		return;
	}
%>
<style type="text/css">
#main{
color:white;
}
</style>
<script type="text/javascript">
	function check(form){
		with(form){
			if(studentId.value == ""){
				alert("学号不能为空");
				return false;
			}
			if(name.value == ""){
				alert("姓名不能为空");
				return false;
			}
			if(sex.value == ""){
				alert("性别不能为空");
				return false;
			}
			if(age.value == ""){
				alert("年龄不能为空");
				return false;
			}
			if(phone.value == ""){
				alert("电话不能为空");
				return false;
			}
			if(email.value == ""){
				alert("邮箱不能为空");
				return false;
			}
			if(pwd.value == ""){
				alert("密码不能为空");
				return false;
			}
			if(question.value == ""){
				alert("提示问题不能为空");
				return false;
			}		
			if(answer.value == ""){
				alert("问题答案不能为空");
				return false;
			}
			return true;
		}
	}
</script>
</head>
<body background="C:\Users\SGY\Desktop\背景\6.jpg">
<div id="main">
	<form action="AddUser.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>用户注册</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">学      号：</td>
				<td><input type="text" name="studentId" /></td>
			</tr>
			<tr>
				<td align="right">姓      名：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">性      别：</td>
				<td><input type="text" name="sex" /></td>
			</tr>
			<tr>
				<td align="right">年      龄：</td>
				<td><input type="text" name="age" /></td>
			</tr>
			<tr>
				<td align="right">电      话：</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr>
				<td align="right">邮      箱：</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td align="right">密      码：</td>
				<td><input type="text" name="pwd" /></td>
			</tr>
			<tr>
				<td align="right">提示问题：</td>
				<td><input type="text" name="question" /></td>
			</tr>	
			<tr>
				<td align="right">问题答案：</td>
				<td><input type="text" name="answer" /></td>
			</tr>											
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="注    册">
				</td>
			</tr>
		</table>
	</form>
	<a href="denglu.jsp">返回</a></div>
</body>
</html>