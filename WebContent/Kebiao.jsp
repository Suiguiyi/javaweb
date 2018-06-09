<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理信息系统首页</title>
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
#main{
left:20px;
right:20px;
top:110px;
bottom:0px;
position:absolute;
text-align:center;
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
<div id="main">
<table  border="1" bgcolor="white">
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