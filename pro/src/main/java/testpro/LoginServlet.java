package testpro;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String input_id = request.getParameter("id");
		String input_pw = request.getParameter("pw");
		
		String driverName="com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/newpro";
		String id = "root";
		String pw = "Aass258@";
		
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		UserInfo info = new UserInfo();
		int result = -1;
		HttpSession session = request.getSession();
		
		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, id, pw);
			String sql = "SELECT Uid, Pw, Uname From user1 where Pw='"+input_pw+"'";
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			System.out.println("연결성공");
			
			
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("driver문제");
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("쵸비상");
		}
		
		try {
			if(rs.next() == false) {
				result = 0;
				request.setAttribute("info", result);
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
				
				
			} else {
				do {
					if(rs.getString(2).equals(input_pw)) {
						result = 1;
						info.setUid(rs.getString(1));
						info.setUname(rs.getString(3));
						
						request.setAttribute("info", info);
						session.setAttribute("info", info);
						getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
						
//						���� 3���� try�� �ۿ� �־ �׳� index.jsp�� ���� �̵���Ų��?
						
					} else {
						result = 2;
						request.setAttribute("info", result);
						getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
					}
				}while(rs.next());
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
//		response.setContentType("text/html; charset=UTF-8");
		
//		request.setAttribute("info", info);
//		session.setAttribute("info", info);
//		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
//		
		
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
