package jdbccon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class jdbcclass {
	
	private static String uname="system";
	private static String password="12345";
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";

	public jdbcclass() {
		
		
	}
	
	public static Connection getConection(){
		 Connection con=null;
		 try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection(url,uname,password);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 return con;
		 
	}
	
	public static void closeConnection(Connection con){
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
	}
	public static void closeStatement(PreparedStatement pst){
		if(pst!=null){
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

}
}
