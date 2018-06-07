package Bookspackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class Login
 */
/*@WebServlet("/Login")*/
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		String studentId = request.getParameter("studentId");
		String pwd = request.getParameter("pwd");
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
			String sql ="select * from tb_student_batch where studentId=? and pwd=?";
			PreparedStatement state = conn.prepareStatement(sql);
			state.setString(1, studentId);
			state.setString(2, pwd);
			ResultSet rs = state.executeQuery();
			if(rs.next()) {
				HttpSession session=request.getSession();
				session.setAttribute("studentId", studentId);
				response.sendRedirect("jiemian.jsp");
				
				}else 
					{
						response.sendRedirect("error.jsp");
					}
			state.close();
			conn.close();
			rs.close();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}