<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="Bookspackage.Chengji"%>
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
#chengji{
width:100%;
top:150px;
position:absolute;
}
	td{font-size: 12px;}
	h2{margin: 0px}
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
</ul><div id="chengji">
	<table align="center" width="75%" border="1" height="180" bordercolor="white" bgcolor="blue" cellpadding="0" cellspacing="0">
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
<a href="NewFile3.jsp">添加成绩</a></div>
</body>
</html>