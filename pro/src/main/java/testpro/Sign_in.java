package testpro;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import testpro.UserInfo;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class Sign_in
 */
public class Sign_in extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sign_in() {
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
		String input_Uid = request.getParameter("Uid");
		
		String driverName="com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/newpro";
		String id = "root";
		String pw = "Aass258@";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		UserInfo info = new UserInfo();
		int result = 0;

		try {
			Class.forName(driverName);		
			conn = DriverManager.getConnection(url,id,pw);
			String sql = "INSERT INTO `newpro`.`user1` (`Uid`, `pw`, `Uname`) VALUES ('"+input_id+"','"+input_pw+"','"+input_Uid+"')";
//			등록할 떄는 user ID 값을 키값으로 지정해야 중복 아이디를 막을 수 있다.
//			String sql = "SELECT id, pw, name, img From login where id='"+input_id+"'";
//			INSERT INTO `newpro`.`user` (`Uid`, `Pw`, `Uname`) VALUES ('aass258', 'qwer1234@', '신종민');
				
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
//			pstmt.setString(1,input_id);

		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("연결실패");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("등록실패");
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("대실패");
			
		}
	
		System.out.println(result);
		
		request.setAttribute("pw", result);
		getServletContext().getRequestDispatcher("/sign_in.jsp").forward(request, response);
		
	}
		
//		switch(result) {
//		case 0: response.getWriter().print("<h1>등록실패</h1>");
//			break;
//			
//		case 1:
//		{
////			얘는 성공
////			팝업 등장시키고
////			정보 들고 가야함
//			
//			response.sendRedirect("login.jsp");	
//		}
//		
//		case 2: response.getWriter().print("<h1>얘도 실패</h1>");		
////		팝업이 등장하고 ~~에 실패하였습니다
////		다시 sign_in페이지로 돌아와야함
//		
//		
//			break;
//		case -1: response.getWriter().print("<h1>너도 실패</h1>");			
//			break;
//		}
		
		
		
//		sign눌러
//
//		입력성공  == 1
//		팝업 등장 등록하였습니다
//		로그인 페이지로 이동 ok
//
//		입력실패  = -1,0,2
//		팝업 등장 등록실패(이유 알려주고)   ?
//		sign페이지 유지   ?
		
//		팝업나오고
//		어짜피 sign-in.jsp로 온다음
//		거기서 가입된경우 아닌경우판단해서 보내기

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
