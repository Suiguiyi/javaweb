<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理信息系统首页</title>
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
#main{
left:50px;
right:60px;
top:120px;
bottom:0px;
border:2px solid black;
text-align:center;
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
<div id="main">
<table width=100% height=100% border="1">
<tr>
<td>时间</td><td>星期一</td><td>星期二</td><td>星期三</td><td>星期四</td><td>星期五</td></tr><tr><td>第一，二节</td><td></td><td>计算机网络<br>周二第1,2节{第1-15周|单周}<br>李绪诚<br>明俊楼509D</td>
<td></td><td>数据结构<br>周四第1,2节{第1-16周}<br>朱仲忠<br>明俊楼407D</td><td>面向对象程序设计<br>周五第1,2节{第1-16周}<br>何庆<br>明俊楼408D</td></tr><tr><td>第三，四节</td><td>信息系统分析与设计<br>
周一第3,4节{第1-15周|单周}<br>张永丹<br>明俊楼526D<br>面向对象程序设计<br>周一第3,4节{第2-16周|双周}<br>何庆<br>明俊楼526D</td><td>数字逻辑基础<br>周二第3,4节{第1-16周}<br>顾平<br>明俊楼207D</td>
<td>信息系统分析与设计<br>周三第3,4节{第1-16周}<br>张永丹<br>明俊楼407D</td><td>计算机网络<br>周四第3,4节{第1-16周}<br>李绪诚<br>明俊楼505D</td><td>Web程序设计<br>周五第3,4节{第1-15周单周}<br>
张海宁<br>明俊楼408D</td></tr><tr><td>第五，六节</td><td>大学英语（四）<br>周一第5,6节{第1-12周}<br>顾倩<br>新区西楼212D</td><td>数据结构<br>周二第5,6节{第1-15周|单周}<br>朱仲忠<br>明俊楼132D</td>
<td>大学英语（四）<br>周三第5,6节{第1-12周|单周}<br>顾倩<br>新区西楼513Y<br>大学英语（四）<br>周三第5,6节{第1-12周|双周}<br>顾倩<br>新区西楼502Y</td><td>篮球4周四第5,6节{第1-16周}<br>杨昌能<br>
新区篮球场1</td><td></td></tr><tr><td>第七，八节</td><td>Web程序设计<br>周一第7,8节{第1-16周}<br>张海宁<br>明俊楼408D</td><td>Office办公软件高级应用<br>周二第7,8节{第1-8周}<br>林序<br>崇文楼111</td>
<td>数字逻辑基础<br>周三第7,8节{第1-16周}<br>顾平<br>明俊楼106D</td><td>Office办公软件高级应用<br>周四第7,8节{第1-8周}<br>林序<br>崇文楼111</td>
<td></td>
</tr>
</table>
</div>
</body>
</html>