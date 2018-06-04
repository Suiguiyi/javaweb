package Bookspackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * ��Ʒ���ݿ����
 * @author Liz YongQiang
 *
 */

public class ProductDao {
	/**
	 * ��ȡ���ݿ�����
	 * @return Connection����
	 */
	public Connection getConnection(){
		// ���ݿ�����
		Connection conn = null;
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
			conn = DriverManager.getConnection(url,username,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// �������ݿ�����
		return conn;
	}
	
	/**
	 * ��ҳ��ѯ������Ʒ��Ϣ
	 * @param page ҳ��
	 * @return List<Product>
	 */
	public List<Book> find(int page){
		// ����List
		List<Book> list = new ArrayList<Book>();
		// ��ȡ���ݿ�����
		Connection conn = getConnection();
		// ��ҳ��ѯ��SQL���
		String sql = "select * from t_books order by id desc limit ?,?";
		try {
			// ��ȡPreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����еĵ�1��������ֵ
			ps.setInt(1, (page - 1) * Book.PAGE_SIZE);
			// ��SQL����еĵ�2��������ֵ
			ps.setInt(2, Book.PAGE_SIZE);
			// ִ�в�ѯ����
			ResultSet rs = ps.executeQuery();
			// �������ƶ������ж��Ƿ���Ч
			while(rs.next()){
				// ʵ����Product
				Book p = new Book();
				// ��id���Ը�ֵ
				p.setId(rs.getInt("id"));
				// ��name���Ը�ֵ
				p.setName(rs.getString("name"));
				// ��price���Ը�ֵ
				p.setPrice(rs.getDouble("price"));
				// ��bookCount���Ը�ֵ
				p.setBookCount(rs.getInt("bookCount"));
				// ��author���Ը�ֵ
				p.setAuthor(rs.getString("author"));
				// ��Product��ӵ�List������
				list.add(p);
			}
			// �ر�ResultSet
			rs.close();
			// �ر�PreparedStatement
			ps.close();
			// �ر�Connection
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * ��ѯ�ܼ�¼��
	 * @return �ܼ�¼��
	 */
	public int findCount(){
		// �ܼ�¼��
		int count = 0;
		// ��ȡ���ݿ�����
		Connection conn = getConnection();
		// ��ѯ�ܼ�¼��SQL���
		String sql = "select count(*) from t_books";
		try {
			// ����Statement
			Statement stmt = conn.createStatement();
			// ��ѯ����ȡResultSet
			ResultSet rs = stmt.executeQuery(sql);
			// �������ƶ������ж��Ƿ���Ч
			if(rs.next()){
				// ���ܼ�¼����ֵ
				count = rs.getInt(1);
			}
			// �ر�ResultSet
			rs.close();
			// �ر�Connection
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// �����ܼ�¼��
		return count;
	}
}
