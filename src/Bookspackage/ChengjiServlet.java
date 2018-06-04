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
			String sql = "select * from t_chengji";
			// ִ�в�ѯ
			ResultSet rs = stmt.executeQuery(sql);
			// ʵ����List����
			List<Chengji> list = new ArrayList<Chengji>();
			// �жϹ������ƶ������ж��Ƿ���Ч
			while(rs.next()){
				// ʵ����Book����
				Chengji chengji = new Chengji();
				// ��id���Ը�ֵ
				chengji.setId(rs.getInt("id"));
				// ��term���Ը�ֵ
				chengji.setTerm(rs.getString("term"));
				// ��courseCode���Ը�ֵ
				chengji.setCourseCode(rs.getString("courseCode"));
				// ��name���Ը�ֵ
				chengji.setName(rs.getString("name"));
				// ��score���Ը�ֵ
				chengji.setScore(rs.getInt("score"));
				// ��scredit���Ը�ֵ
				chengji.setCredit(rs.getFloat("credit"));
				// ��gpa���Ը�ֵ
				chengji.setGpa(rs.getDouble("gpa"));
				// ��style���Ը�ֵ
				chengji.setStyle(rs.getString("style"));
				// ��college���Ը�ֵ
				chengji.setCollege(rs.getString("college"));				
				// ��ͼ�������ӵ�������
				list.add(chengji);
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
		// ����ת����book_list.jsp
		request.getRequestDispatcher("chengji_list.jsp").forward(request, response);
	}
}
