<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/stringDeal" prefix="Bookspackage"%>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理信息系统</title>
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
#center{
border:1px solid blue;
position:absolute;
top:110px;
left:332px;
right:342px;
bottom:6px;
}
#left{
border:1px solid blue;
width:300px;
position:absolute;
top:110px;
left:30px;
bottom:6px;
}
#right{
border:1px solid blue;
width:300px;
position:absolute;
top:110px;
right:40px;
bottom:6px;
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
</ul>

<div id="left">
<br>
<center>班级信息墙</center><br>
所属院系：贵州大学大数据与信息工程学院<br>
所属专业：信息管理与信息系统<br>
行政班级：信管161<br>
班级人数：52<br>
${Bookspackage:shiftEnter(param.content)}
<a href="xiugaiclass.jsp"></a>
</div>
<div id="center">
<br>
<center>班级友谊墙</center><br>
${Bookspackage:shiftEnter(param.content)}
</div>
<div id="right">
<br>
<center>班级荣誉墙</center><br>
${Bookspackage:shiftEnter(param.content)}
</div>
</body>
</html>