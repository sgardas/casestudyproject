package Controllerpack;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Helperpack.Helperclass;
import Queryclass.querycla;


@WebServlet("/Mainservlet")
public class Mainservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
   //<span class="caret"></span>
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("keerthi");
	    String action= request.getParameter("action");
	    String passworddet= request.getParameter("password");
	    String role=request.getParameter("Role");
	    RequestDispatcher rd= null;
	    querycla qc= new querycla();
	    int i;
	    Helperclass hc= new Helperclass();
	    //<a class="btn btn-default btn-block" href="#">Register</a>
	      if(action.equalsIgnoreCase("Afterpasswordreset")) {
	    	  System.out.println("ks----------");
	    	  
	    	  try {
				qc.login_insert(request);
				rd=request.getRequestDispatcher("login.jsp");
  				rd.forward(request, response);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	}else if(action.equalsIgnoreCase("Customerregistration")) {
	    		rd=request.getRequestDispatcher("CustomerRegistration.jsp");
  				rd.forward(request, response);
	    	}else if(action.equalsIgnoreCase("login")) {
	    	  if(role.equalsIgnoreCase("Admin")) {
	    		  System.out.println("@@@@@@admin");
	    		  i= hc.validateattempt(passworddet);
	    		  
	    		  if(i==1) {
	    			rd=request.getRequestDispatcher("passwordreset1.jsp");
	  				rd.forward(request, response);
	  			}else {
	  				rd=request.getRequestDispatcher("Adminhomepage.jsp");
	  				rd.include(request, response);
	  				
	  			}
	    		  
	    	  }else if(role.equalsIgnoreCase("Operator")) {
	    		  i=hc.validateattempt(passworddet);
                  if(i==1) {
                	rd=request.getRequestDispatcher("passwordreset1.jsp");
	  				rd.forward(request, response);
	  			}else {
	  				rd=request.getRequestDispatcher("Adminhomepage.jsp");
	  				rd.include(request, response);
	  				
	  			}
	    		  
	    	  }else if(role.equalsIgnoreCase("Retailer")) {
	    		  i=hc.validateattempt(passworddet);
                  if(i==1) {
                	rd=request.getRequestDispatcher("passwordreset1.jsp");
	  				rd.forward(request, response);
	  			}else {
	  				rd=request.getRequestDispatcher("Adminhomepage.jsp");
	  				rd.include(request, response);
	  				
	  			}
	    		  
	    	  }else if(role.equalsIgnoreCase("Customer")){
	    		  i=hc.validateattempt(passworddet);
                  if(i==1) {
                	rd=request.getRequestDispatcher("passwordreset1.jsp");
	  				rd.forward(request, response);
	  			}else {
	  				rd=request.getRequestDispatcher("Adminhomepage.jsp");
	  				rd.include(request, response);
	  				
	  			}
	    		  
	    	  }
	    	  
	    	  
	      }else if(action.equalsIgnoreCase("operatorcreation")){
	    	  try {
				qc.create_operator(request);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	      }
	      
	      
	
	
	
	
	}

}
