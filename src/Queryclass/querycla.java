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
    RequestDispatcher rd= null;

	public querycla() {
		// TODO Auto-generated constructor stub
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
public void validate_login(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
		
		
		String username=  request.getParameter("username");
		String pwd=  request.getParameter("password");
		String role=  request.getParameter("Role");
		String query = "select * from login ";
		
		
		st = con.prepareStatement(query);

	
		
		rs = st.executeQuery();
		
		while (rs.next()) {
		    if(username.equals(rs.getString("username"))&& pwd.equals(rs.getString("password"))&& role.equals(rs.getString("role"))){
		  
		 
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
	
	
	
	
	
	/*------------ All the sql methods --------------*/
public void create_operator(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
	
	System.out.println("entered into create method");
	String First_Name =  request.getParameter("firstname");
	String Last_Name =  request.getParameter("lastname");
	String Email =  request.getParameter("email");
	String Phone_No =  request.getParameter("phonenum");
	String Shift_Time_Start =  request.getParameter("shift start time");
	String Shift_Time_End =  request.getParameter("shift end time");
	String Max_No_of_Customers =  request.getParameter("max no of customers");
	String Creation_Date =  request.getParameter("creationdate");
	String query = "insert into operator values(operator_id_seq.nextVal,?,?,?,?,?,?,?,?)";
	
	
	
	st = con.prepareStatement(query);
	st.setString(1, First_Name);
	st.setString(2, Last_Name);
	st.setString(3, Email);
	st.setString(4, Phone_No);
	st.setString(5, Shift_Time_Start);
	st.setString(6, Shift_Time_End);
	st.setInt(7, Integer.parseInt(Max_No_of_Customers));
	st.setString(8, Creation_Date );
	
	int i = st.executeUpdate();
	
	if(i>0) {
		rd=request.getRequestDispatcher("Adminhomepage.jsp");
		rd.include(request, response);
	}
	else
		System.out.println("operator not created");
	
  
	}
		public void search_operator(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException{
			
			
			
			
			String Operator_Id =  request.getParameter("operatorid");
			String query = "select * from operator where operator_id =?";
			
			
			
			st = con.prepareStatement(query);
			st.setInt(1, Integer.parseInt(Operator_Id));
			
			rs = st.executeQuery();
			
			while (rs.next()) {
				System.out.println(rs.getInt(1)+rs.getString(2)+rs.getString(3)+rs.getString(4)+rs.getString(5)
				+rs.getString(6)+rs.getString(7)+rs.getInt(8)+rs.getString(9));
			}
			
		}
		
	public void update_operator(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
			
		
			
			String Operator_Id =  request.getParameter("Operator_Id");
			String First_Name =  request.getParameter("first_name");
			String Last_Name =  request.getParameter("last_name");
			String Email =  request.getParameter("email");
			String Phone_No =  request.getParameter("contact");
			String Shift_Time_Start =  request.getParameter("start time");
			String Shift_Time_End =  request.getParameter("End time");
			String Max_No_of_Customers =  request.getParameter("max customers");
			String Creation_Date =  request.getParameter("creation date");
			String query = "update operator set first_name =?, last_name =?, "
					+ "email =?,phone_no =?,Shift_Time_Start=?,Shift_Time_End=?, Max_No_of_Customers=?"
					+ ",Creation_Date=? where operator_id =?";
			
			
			st = con.prepareStatement(query);
			
			st.setString(1, First_Name);
			st.setString(2, Last_Name);
			st.setString(3, Email);
			st.setString(4, Phone_No);
			st.setString(5, Shift_Time_Start);
			st.setString(6, Shift_Time_End);
			st.setString(7, Max_No_of_Customers);
			st.setString(8, Creation_Date);
			st.setInt(9, Integer.parseInt( Operator_Id));
			
			int i = st.executeUpdate();
			if(i>0) {
				rd=request.getRequestDispatcher("Adminhomepage.jsp");
				rd.include(request, response);
			}
			else
				System.out.println("operator not update");
			
		}

	public void delete_operator(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
		
		
		
		String Operator_Id =  request.getParameter("retid");
		
		String query = "delete operator where operator_id =?";
		
		
		st = con.prepareStatement(query);
		st.setString(1, Operator_Id);
		
		int i = st.executeUpdate();
		
		if(i>0) {
			rd=request.getRequestDispatcher("Deletion_success_page.jsp");
			rd.include(request, response);
		}
		else
			System.out.println("operator not deleted");
		

	}
	
	
	/*-----------------------------------------------*/
	
	

}
