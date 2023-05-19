package testpro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Login_c {
	
    Connection conn = null;
    public void board() {

    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/newpro";
        conn = DriverManager.getConnection(url, "root", "Aass258@");
        System.out.println("연결성공");

    }
    catch(ClassNotFoundException e){
        System.out.println("연결실패");
    }
    catch(SQLException e){
        System.out.println("접속실패" + e);
    }
   
}



//    public void insertBoard() {
//    	String sql = "insert into test1 values(?,?,?,?,?)";
//    	
//    	PreparedStatement pstmt =null;
//    	try {
//    	
//    		pstmt = conn.prepareStatement(sql);
//    		pstmt.setString(1, "2");
//    		pstmt.setString(2, "8급");
//    		pstmt.setString(3, "雅");
//    		pstmt.setString(4, "몰라");
//    		pstmt.setString(5, "몰라2");
//    		
//    		int result = pstmt.executeUpdate();
//    		if(result==1) {
//                System.out.println("데이터입력성공");   
//            }
//            } catch (Exception e) {
//                System.out.println("데이터입력실패");
//            }
//    		
//    	}
}

