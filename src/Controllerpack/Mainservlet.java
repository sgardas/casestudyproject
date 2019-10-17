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
	Helperclass hc= new Helperclass();
	   querycla qc= new querycla();
       
   //<span class="caret"></span>
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String action= request.getParameter("action");
	    String passworddet= request.getParameter("password");
	    String role=request.getParameter("Role");
	    RequestDispatcher rd= null;
	 
	    int i;
	    try {
	    
	    //<a class="btn btn-default btn-block" href="#">Register</a>
	      if(action.equalsIgnoreCase("Afterpasswordreset")) {
	    	  System.out.println("ks----------");
	    	  
	    	  
	   
				rd=request.getRequestDispatcher("login.jsp");
  				rd.forward(request, response);
  		 	    qc.login_insert(request);
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
	  				
	  				qc.validate_login(request, response);
	  				

	  			}
	    		  
	    	  } else if(role.equalsIgnoreCase("Operator")) {
	    		  i=hc.validateattempt(passworddet);
                  if(i==1) {
                	rd=request.getRequestDispatcher("passwordreset1.jsp");
	  				rd.forward(request, response);
	  			}else {
	  				qc.validate_login(request, response);
	  				//rd=request.getRequestDispatcher("OperatorHomePage.jsp");
	  				//rd.include(request, response);
	  				
	  			}
	    		  
	    	  }else if(role.equalsIgnoreCase("Retailer")) {
	    		  i=hc.validateattempt(passworddet);
                  if(i==1) {
                	rd=request.getRequestDispatcher("passwordreset1.jsp");
	  				rd.forward(request, response);
	  			}else {
	  				qc.validate_login(request, response);
	  				//rd=request.getRequestDispatcher("Retailorhomepage.jsp");
	  				//rd.include(request, response);
	  				
	  			}
	    		  
	    	  }else if(role.equalsIgnoreCase("Customer")){
	    		  i=hc.validateattempt(passworddet);
                  if(i==1) {
                	rd=request.getRequestDispatcher("passwordreset1.jsp");
	  				rd.forward(request, response);
	  			}else {
	  				qc.validate_login(request, response);
	  				//rd=request.getRequestDispatcher("CustomerHomePage.jsp");
	  				//rd.include(request, response);
	  				
	  			}
	    		  
	    	  }
	    	  
	    	  
	      }else if(action.equalsIgnoreCase("operatorcreation")){
	    	  
	    		  System.out.println("in mainservlet");
				qc.create_operator(request,response);
			}  else if(action.equalsIgnoreCase("searchoperator")){
	    	 
				qc.search_operator(request,response);
			} else if(action.equalsIgnoreCase("updateoperator")){
	    	  
				qc.update_operator(request,response);
			
	      }
	      else if(action.equalsIgnoreCase("deleteoperator")){
	    	  
				qc.delete_operator(request,response);
			} 
	       else if(action.equalsIgnoreCase("createcustomer")){
	    	  
				qc.customer_create(request,response);
			
	      }else if(action.equalsIgnoreCase("searchcustomer")){
	    	 
				qc.customer_search(request,response);
			
	      }
	      
	      else if(action.equalsIgnoreCase("customerupdate")){
	    	 
				qc.customer_update(request,response);
			
	      }
	      
	      else if(action.equalsIgnoreCase("customerdelete")){
	    	  
				qc.customer_delete(request,response);
			
	      }
	    }catch(Exception e) {
	    	
	    }
	
	
	}

}

