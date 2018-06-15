<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/stringDeal" prefix="Bookspackage"%>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理信息系统</title>
<%
	// 权限验证
	if(session.getAttribute("studentId")==null){
		response.sendRedirect("denglu.jsp");
		return;
	}
%>
<style type="text/css">
#list{
background-color:#BDD2ED;
width:100%;
height:30px;
padding-top:1px;
padding-left:1px;
border-bottom:1px solid blue;
padding-bottom:1px;
padding-right:1px;
top:35px;left:0;right:0;
position:absolute;
font-family:"微软雅黑";
}
#list li{
float:left;
list-style-type:none;
}
#list li a{
color:#000000;
text-decoration:none;
padding-top:0px;
display:block;
width:100px;
height:25px;
text-align:center;
background-color:#77E877;
margin-left:1px;
border-radius:5px;
}
#list li a:hover{
background:#DFE9F5;
color：#FFFFFF；
}
#list li a.actiove{
border:1px solid #ffffff;
border-top-color:#808080;
border-left-color:#808080;
background-color:#D1E4FD;
}
#top{
background-color:#DFE9F5;
border-bottom:1px solid blue;
width:100%;
height:50px;
top:0;left:0;right:0;
position:absolute;

}
#leftt{
width:400px;
height:43px;
text-align:center;
top:5px;
left:0;
font-size:32px;
font-family:"华文隶书";
position:absolute;
}
#rightt{
width:220px;
height:43px;
text-align:left;
position:absolute;
top:5px;
right:0;
font-size:16px;
font-family:"黑体";
}
#center{
border-top:1px solid blue;
border-bottom:1px solid blue;
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
</style>
</head>
<body background="C:\Users\SGY\Desktop\背景\12.jpg">
<div id="top">
<div id="leftt">信管161 学生管理信息系统</div>
<div id="rightt">当前用户：${studentId}<a href="denglu.jsp">退出</a></div></div>
<ul id="list">
<li><a href="jiemian.jsp">返回首页</a></li>
  <li><a href="Class.jsp">班级信息</a></li>
  <li><a href="StudentServlet">学生信息</a></li>
  <li><a href="FindServlet">图书</a></li>
  <li><a href="Kebiao.jsp">课表</a></li>
  <li><a href="ChengjiServlet">成绩</a></li>
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
${Bookspackage:shiftEnter(param.content)}</div>
</body>
</html>