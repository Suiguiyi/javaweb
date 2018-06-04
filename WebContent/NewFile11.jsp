<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加成绩信息</title>
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
			if(term.value == ""){
				alert("学年学期不能为空");
				return false;
			}
			if(courseCode.value == ""){
				alert("课程编号不能为空");
				return false;
			}
			if(name.value == ""){
				alert("课程名称不能为空");
				return false;
			}
			if(score.value == ""){
				alert("成绩不能为空");
				return false;
			}
			if(credit.value == ""){
				alert("学分不能为空");
				return false;
			}
			if(gpa.value == ""){
				alert("绩点不能为空");
				return false;
			}
			if(style.value == ""){
				alert("课程性质不能为空");
				return false;
			}
			if(college.value == ""){
				alert("学院名称不能为空");
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
	<form action="AddChengji.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加成绩信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">学      期：</td>
				<td><input type="text" name="term" /></td>
			</tr>
			<tr>
				<td align="right">课程代码：</td>
				<td><input type="text" name="courseCode" /></td>
			</tr>
			<tr>
				<td align="right">课程名称：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">成      绩：</td>
				<td><input type="text" name="score" /></td>
			</tr>
			<tr>
				<td align="right">学      分：</td>
				<td><input type="text" name="credit" /></td>
			</tr>
			<tr>
				<td align="right">绩      点：</td>
				<td><input type="text" name="gpa" /></td>
			</tr>
			<tr>
				<td align="right">课程性质：</td>
				<td><input type="text" name="style" /></td>
			</tr>
			<tr>
				<td align="right">学院名称：</td>
				<td><input type="text" name="college" /></td>
			</tr>												
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="添　加">
				</td>
			</tr>
		</table>
	</form>
<a href="ChengjiServlet">退出</a>
<%out.print("<script language='javascript'>alert('添加失败');window.location.herf='denglu.jsp';</script>"); %>
</body>
</html>