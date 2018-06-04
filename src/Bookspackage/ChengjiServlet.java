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

public class ChengjiServlet extends HttpServlet {
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
			String sql = "select * from t_chengji";
			// 执行查询
			ResultSet rs = stmt.executeQuery(sql);
			// 实例化List对象
			List<Chengji> list = new ArrayList<Chengji>();
			// 判断光标向后移动，并判断是否有效
			while(rs.next()){
				// 实例化Book对象
				Chengji chengji = new Chengji();
				// 对id属性赋值
				chengji.setId(rs.getInt("id"));
				// 对term属性赋值
				chengji.setTerm(rs.getString("term"));
				// 对courseCode属性赋值
				chengji.setCourseCode(rs.getString("courseCode"));
				// 对name属性赋值
				chengji.setName(rs.getString("name"));
				// 对score属性赋值
				chengji.setScore(rs.getInt("score"));
				// 对scredit属性赋值
				chengji.setCredit(rs.getFloat("credit"));
				// 对gpa属性赋值
				chengji.setGpa(rs.getDouble("gpa"));
				// 对style属性赋值
				chengji.setStyle(rs.getString("style"));
				// 对college属性赋值
				chengji.setCollege(rs.getString("college"));				
				// 将图书对象添加到集合中
				list.add(chengji);
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
		// 请求转发到book_list.jsp
		request.getRequestDispatcher("chengji_list.jsp").forward(request, response);
	}
}
