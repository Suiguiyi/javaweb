<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加结果</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>
	<jsp:useBean id="chengji" class="Bookspackage.Chengji"></jsp:useBean>
	<jsp:setProperty property="*" name="chengji"/>
	<%
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/sgy";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "123456";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 添加图书信息的SQL语句
			String sql = "insert into t_chengji(term,courseCode,name,score,credit,gpa,style,college) values(?,?,?,?,?,?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1, chengji.getTerm());
			System.out.println("term："+chengji.getTerm());
			// 对SQL语句中的第2个参数赋值
			ps.setString(2, chengji.getCourseCode());
			// 对SQL语句中的第3个参数赋值
			ps.setString(3,chengji.getName());
			// 对SQL语句中的第4个参数赋值
			ps.setInt(4, chengji.getScore());
			// 对SQL语句中的第5个参数赋值
			ps.setFloat(5, chengji.getCredit());
			// 对SQL语句中的第6个参数赋值
			ps.setDouble(6, chengji.getGpa());
			// 对SQL语句中的第7个参数赋值
			ps.setString(7, chengji.getStyle());
			// 对SQL语句中的第8个参数赋值
			ps.setString(8, chengji.getCollege());			
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				System.out.println("成功");
				response.sendRedirect("NewFile10.jsp");
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			System.out.println("失败");
			response.sendRedirect("NewFile11.jsp");
			e.printStackTrace();
		}
	%>
	<br>
	<a href="ChengjiServlet">返回</a>
</body>
</html>