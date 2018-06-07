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
#time{
position:absolute;
width:100%;
top:150px;
}
</style>
 <script language="javascript">
    function realSysTime(clock){
    	var now=new Date();			//创建Date对象
    	var year=now.getFullYear();	//获取年份
    	var month=now.getMonth();	//获取月份
    	var date=now.getDate();		//获取日期
    	var day=now.getDay();		//获取星期
    	var hour=now.getHours();	//获取小时
    	var minu=now.getMinutes();	//获取分钟
    	var sec=now.getSeconds();	//获取秒钟
    	month=month+1;
    	var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
    	var week=arr_week[day];		//获取中文的星期
    	var time=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minu+":"+sec;	//组合系统时间
    	clock.innerHTML="当前时间："+time;	//显示系统时间
    }
    window.onload=function(){
		window.setInterval("realSysTime(clock)",1000);	//实时获取并显示系统时间
    }
    </script>
</head>

<body background="C:\Users\SGY\Desktop\背景\12.jpg">
<div id="top">
<div id="leftt">信管161 学生管理信息系统</div>
<div id="rightt">当前用户：${studentId}<a href="denglu.jsp">退出</a></div></div>

<ul id="list">
 <li><a href="jiemian.jsp">返回首页</a></li>
  <li><a href="GerenServlet">个人信息</a></li>
  <li><a href="Class.jsp">班级信息</a></li>
  <li><a href="StudentServlet">学生信息</a></li>
  <li><a href="FindServlet">图书</a></li>	
  <li><a href="Kebiao.jsp">课表</a></li>
  <li><a href="ChengjiServlet">成绩</a></li>
</ul>
<div id="time">
   <div id="clock"></div>
</div>
</body>
</html>