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
 * Servlet implementation class Login_c
 */
public class chi_Test extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chi_Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String input_ra = request.getParameter("rating");
		
		String driverName="com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/newpro";
		String id = "root";
		String pw = "Aass258@";
		
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;


		List<Chinese> chi_list = new ArrayList<Chinese>();

		
		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, id, pw);
			String sql = "SELECT Cno, chi, mean, sound, rating From chitable where rating='"+input_ra+"'";
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();

			
			while(rs.next()) {
				
				Chinese chi = new Chinese();
				
				chi.setCno(rs.getString(1));
				chi.setChi(rs.getString(2));
				chi.setMean(rs.getString(3));
				chi.setSound(rs.getString(4));
				chi.setRating(rs.getString(5));
				
				chi_list.add(chi);				
			}
			
			
			
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
		
		request.setAttribute("chi", chi_list);
		getServletContext().getRequestDispatcher("/Testc.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}