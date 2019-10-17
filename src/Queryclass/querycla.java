package Queryclass;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbccon.jdbcclass;

public class querycla {
	
	private Connection con=jdbcclass.getConection();
	private PreparedStatement st=null;
    private ResultSet rs=null;

	public querycla() {
		// TODO Auto-generated constructor stub
	}
	
public void validate_login(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
		
	  System.out.println("ks");
		
		String username=  request.getParameter("username");
		String pwd=  request.getParameter("password");
		String role=  request.getParameter("Role");
		String query = "select * from login";
		RequestDispatcher rd= null;
		
		st = con.prepareStatement(query);
		//st.setString(1, username);
	
		
		rs = st.executeQuery();
		
		while (rs.next()) {
			 System.out.println("khg");
		    if(username.equals(rs.getString("username"))&& pwd.equals(rs.getString("password"))&& role.contentEquals(rs.getString("role"))){
		  
		 
	   		if(role.equals("Admin")) {
		    		rd=request.getRequestDispatcher("Adminhomepage.jsp");
	  				rd.include(request, response);
		    	}
		    	else if (role.equals("Operator")) {
		    		rd=request.getRequestDispatcher("OperatorHomePage.jsp");
	  				rd.include(request, response);
		    	}
		    	else if(role.equals("Customer")){
		    		System.out.println("in customer");
		    		rd=request.getRequestDispatcher("CustomerHomePage.jsp");
	  				rd.include(request, response);
		    	}
		        
		    }
		    else {
		    	System.out.println("Login failed");	
		    	rd=request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
		    }
		    }

	}
	
	
	public void login_insert(HttpServletRequest request) throws ClassNotFoundException, SQLException{
		
		
		
		String username=  request.getParameter("username");
		String pwd=  request.getParameter("password");
		String role=  request.getParameter("Role");
		String query = "insert into login values(?,?,?) ";
		
		
		st = con.prepareStatement(query);
		st.setString(1, username);
		st.setString(2, pwd);
		st.setString(3, role);
		
		
		rs = st.executeQuery();

	}
	
	
	
	
	/*------------ All the sql methods --------------*/
	public void create_operator(HttpServletRequest request) throws ClassNotFoundException, SQLException{
		
		
		System.out.println(request.getParameter("creation date"));
		String First_Name =  request.getParameter("first_name");
		String Last_Name =  request.getParameter("last_name");
		String Email =  request.getParameter("email");
		String Phone_No =  request.getParameter("contact");
		String Shift_Time_Start =  request.getParameter("start time");
		String Shift_Time_End =  request.getParameter("End time");
		String Max_No_of_Customers =  request.getParameter("max customers");
		String Creation_Date =  request.getParameter("creation date");
		String query = "insert into operator values(operator_id_seq.nextVal,?,?,?,?,?,?,?,?)";
		
		
		
		st = con.prepareStatement(query);
		st.setString(1, First_Name);
		st.setString(2, Last_Name);
		st.setString(3, Email);
		st.setInt(4, Integer.parseInt(Phone_No));
		st.setString(5, Shift_Time_Start);
		st.setString(6, Shift_Time_End);
		st.setString(7, Max_No_of_Customers);
		st.setDate(8, java.sql.Date.valueOf(Creation_Date));
		//st.setDate(8, java.sql.Date.valueOf("2013-09-04"));
		rs = st.executeQuery();

		
	  
		}
		
		public void search_operator(HttpServletRequest request) throws ClassNotFoundException, SQLException{
			
			
			
			
			String Operator_Id =  request.getParameter("Operator_Id");
			String query = "select * from operator where operator_id =?";
			
			
			
			st = con.prepareStatement(query);
			st.setInt(1, Integer.parseInt(Operator_Id));
			
			rs = st.executeQuery();
			
			while (rs.next()) {
				System.out.println(rs.getInt(1)+rs.getInt(2)+rs.getInt(3)+rs.getInt(4)+rs.getInt(5)
				+rs.getInt(6)+rs.getInt(7)+rs.getInt(8)+rs.getInt(9));
			}
			
		}
		
	public void update_operator(HttpServletRequest request) throws ClassNotFoundException, SQLException{
			
		
			
			String Operator_Id =  request.getParameter("Operator_Id");
			String First_Name =  request.getParameter("first_name");
			String Last_Name =  request.getParameter("last_name");
			String Email =  request.getParameter("email");
			String Phone_No =  request.getParameter("contact");
			String Shift_Time_Start =  request.getParameter("start time");
			String Shift_Time_End =  request.getParameter("End time");
			String Max_No_of_Customers =  request.getParameter("max customers");
			String Creation_Date =  request.getParameter("creation date");
			String query = "update operator set operator_id =?, first_name =?, last_name =?, "
					+ "email =?,phone_no =?,Shift_Time_Start=?,Shift_Time_End=?, Max_No_of_Customers=?"
					+ ",Creation_Date=?";
			
			
			st = con.prepareStatement(query);
			st.setInt(1, Integer.parseInt( Operator_Id));
			st.setString(2, First_Name);
			st.setString(3, Last_Name);
			st.setString(4, Email);
			st.setInt(5, Integer.parseInt(Phone_No));
			st.setTime(6, java.sql.Time.valueOf(Shift_Time_Start));
			st.setTime(7, java.sql.Time.valueOf(Shift_Time_End));
			st.setString(8, Max_No_of_Customers);
			st.setDate(9, java.sql.Date.valueOf(Creation_Date));
			
			rs = st.executeQuery();

		}

	public void delete_operator(HttpServletRequest request) throws ClassNotFoundException, SQLException{
		
		
		
		String Operator_Id =  request.getParameter("Operator_Id");
		
		String query = "delete operator where operator_id =?";
		
		
		st = con.prepareStatement(query);
		st.setString(1, Operator_Id);
		
		rs = st.executeQuery();

	}
	
	
	/*-----------------------------------------------*/
	
	

}
