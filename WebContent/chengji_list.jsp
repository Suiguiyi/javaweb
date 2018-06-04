<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="Bookspackage.Chengji"%>
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
	td{font-size: 12px;}
	h2{margin: 0px}
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
	<table align="center" width="700" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="10">
				<h2>所有成绩信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1" >
			<td><b>ID</b></td>
			<td><b>学年学期</b></td>
			<td><b>课程编号</b></td>
			<td><b>课程名称</b></td>
			<td><b>成绩</b></td>
			<td><b>学分</b></td>
			<td><b>绩点</b></td>
			<td><b>课程性质</b></td>
			<td><b>学院名称</b></td>
			<td><b>删除</b></td>
		</tr>
			<%
				// 获取图书信息集合
					List<Chengji> list = (List<Chengji>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历图书集合中的数据
						for(Chengji chengji : list){
			%>
				<tr align="center" bgcolor="white">
					<td><%=chengji.getId()%></td>
					<td><%=chengji.getTerm()%></td>
					<td><%=chengji.getCourseCode()%></td>
					<td><%=chengji.getName()%></td>
					<td><%=chengji.getScore()%></td>
					<td><%=chengji.getCredit()%></td>
					<td><%=chengji.getGpa()%></td>
					<td><%=chengji.getStyle()%></td>
					<td><%=chengji.getCollege()%></td>
					<td>
					<a href="DeleteCjServlet?id=<%=chengji.getId()%>"style="text-decoration:none;">删除</a>
					</td>
				</tr>
			<%
					}
				}
			%>
	</table>
<a href="NewFile3.jsp">添加成绩</a>
</body>
</html>