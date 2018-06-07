package Bookspackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			// 获取Statement
			Statement stmt = conn.createStatement();
			// 添加图书信息的SQL语句
			String sql = "select id,studentId,name,sex,age,phone,email from tb_student_batch";
			// 执行查询
			ResultSet rs = stmt.executeQuery(sql);
			// 实例化List对象
			List<Student> list = new ArrayList<Student>();
			// 判断光标向后移动，并判断是否有效
			while(rs.next()){
				// 实例化Student对象
				Student student = new Student();
				// 对id属性赋值
				student.setId(rs.getInt("id"));
				// 对studentId属性赋值
				student.setStudentId(rs.getString("studentId"));
				// 对name属性赋值
				student.setName(rs.getString("name"));
				// 对sex属性赋值
				student.setSex(rs.getString("sex"));
				// 对age属性赋值
				student.setAge(rs.getString("age"));
				// 对phone属性赋值
				student.setPhone(rs.getString("phone"));
				// 对email属性赋值
				student.setEmail(rs.getString("email"));
				// 将图书对象添加到集合中
				list.add(student);
			}
			// 将图书集合放置到request之中
			request.setAttribute("list", list);
			rs.close();		// 关闭ResultSet
			stmt.close();	// 关闭Statement
			conn.close();	// 关闭Connection
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 请求转发到student_list.jsp
		request.getRequestDispatcher("student_list.jsp").forward(request, response);
	}
}
