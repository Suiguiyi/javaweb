<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加图书信息</title>
<style type="text/css">
#list{
width:100%;
height:50px;
}
#list li{
float:left;
list-style-type:none;
}
#list li a{
color:#000000;
text-decoration:none;
padding-top:4px;
display:block;
width:100px;
height:25px;
text-align:center;
background-color:#F9F9F9;
margin-left:2px;
border-radius:5px;
}
#list li a:hover{
background:#BBBBBB;
color：#FFFFFF；
}
#list li a.actiove{
border:1px solid #ffffff;
border-top-color:#808080;
border-left-color:#808080;
background-color:#d4d0c8;
}
#leftt{
width:200px;
height:25px;
text-align:left;
top:10px;
left:10px;
}
#rightt{
width:200px;
height:25px;
text-align:right;
position:absolute;
top:10px;
right:10px;
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
				alert("Email不能为空");
				return false;
			}
			return true;
		}
	}
</script>
</head>
<body background="C:\Users\SGY\Desktop\背景\4.jpg">
<div id="leftt">Welcome to the system！</div>
<div id="rightt">当前用户：${name}</div>
<ul id="list">
  <li><a href="Class.jsp">班级信息</a></li>
  <li><a href="StudentServlet">学生信息</a></li>
  <li><a href="FindServlet">图书</a></li>
  <li><a href="Kebiao.jsp">课表</a></li>
  <li><a href="ChengjiServlet">成绩</a></li>
  <li><a href="denglu.jsp"><b>退出登录</b></a></li>
</ul><br>
	<form action="Addstudent.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加学生信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">学    号：</td>
				<td><input type="text" name="studentId" /></td>
			</tr>
			<tr>
				<td align="right">姓    名：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">性    别：</td>
				<td><input type="text" name="sex" /></td>
			</tr>
			<tr>
				<td align="right">年    龄：</td>
				<td><input type="text" name="age" /></td>
			</tr>
			<tr>
				<td align="right">电    话：</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr>
				<td align="right">Email：</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="添　加">
				</td>
			</tr>
		</table>
	</form>
<a href="StudentServlet">退出</a>
<%out.print("<script language='javascript'>alert('添加失败');window.location.herf='denglu.jsp';</script>"); %>
</body>
</html>