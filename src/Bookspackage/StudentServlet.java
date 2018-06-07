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
			// �������ݿ�������ע�ᵽ����������
			Class.forName("com.mysql.jdbc.Driver");
			// ���ݿ������ַ���
			String url = "jdbc:mysql://localhost:3306/sgy";
			// ���ݿ��û���
			String username = "root";
			// ���ݿ�����
			String password = "123456";
			// ����Connection����
			Connection conn = DriverManager.getConnection(url,username,password);
			// ��ȡStatement
			Statement stmt = conn.createStatement();
			// ���ͼ����Ϣ��SQL���
			String sql = "select id,studentId,name,sex,age,phone,email from tb_student_batch";
			// ִ�в�ѯ
			ResultSet rs = stmt.executeQuery(sql);
			// ʵ����List����
			List<Student> list = new ArrayList<Student>();
			// �жϹ������ƶ������ж��Ƿ���Ч
			while(rs.next()){
				// ʵ����Student����
				Student student = new Student();
				// ��id���Ը�ֵ
				student.setId(rs.getInt("id"));
				// ��studentId���Ը�ֵ
				student.setStudentId(rs.getString("studentId"));
				// ��name���Ը�ֵ
				student.setName(rs.getString("name"));
				// ��sex���Ը�ֵ
				student.setSex(rs.getString("sex"));
				// ��age���Ը�ֵ
				student.setAge(rs.getString("age"));
				// ��phone���Ը�ֵ
				student.setPhone(rs.getString("phone"));
				// ��email���Ը�ֵ
				student.setEmail(rs.getString("email"));
				// ��ͼ�������ӵ�������
				list.add(student);
			}
			// ��ͼ�鼯�Ϸ��õ�request֮��
			request.setAttribute("list", list);
			rs.close();		// �ر�ResultSet
			stmt.close();	// �ر�Statement
			conn.close();	// �ر�Connection
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// ����ת����student_list.jsp
		request.getRequestDispatcher("student_list.jsp").forward(request, response);
	}
}
