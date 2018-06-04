<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="Bookspackage.Book"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理信息系统</title>
<style type="text/css">
	form{margin: 0px;}
	td{font-size: 12px;}
	h2{margin: 2px}
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
<script type="text/javascript">
	function check(form){
		with(form){
			if(bookCount.value == ""){
				alert("请输入更新数量！");
				return false;
			}
			if(isNaN(bookCount.value)){
				alert("格式错误！");
				return false;
			}
			return true;;
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
</ul>
	<table align="center" width="600" border="1" height="170" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="10">
				<h2>所有图书信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1" >
			<td><b>ID</b></td>
			<td><b>图书名称</b></td>
			<td><b>价格</b></td>
			<td><b>数量</b></td>
			<td><b>作者</b></td>
			<td><b>删　除</b></td>
		</tr>
			<%
				// 获取图书信息集合
					List<Book> list = (List<Book>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历图书集合中的数据
						for(Book book : list){
			%>
				<tr align="center" bgcolor="white">
					<td><%=book.getId()%></td>
					<td><%=book.getName()%></td>
					<td><%=book.getPrice()%></td>
					<td><%=book.getBookCount()%></td>
					<td><%=book.getAuthor()%></td>
					<td>
						<a href="DeleteServlet?id=<%=book.getId()%> " style="text-decoration:none;">删除</a>
					</td>
				</tr>
			<%
					}
				}
					
			%>
				<tr>
		<td align="center" colspan="10" bgcolor="white">
			<%=request.getAttribute("bar")%>
		</td>
	</tr>
	</table>
<br><br>
<a href="NewFile1.jsp">添加图书</a>
<a href="XgCountServlet">修改数量</a>
</body>
</html>
