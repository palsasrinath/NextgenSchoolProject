package com.mankraft.nextgen.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*import com.mankraft.nextgen.dao.AdminLoginDao;*/
import com.mankraft.nextgen.dao.PrincipalLoginDao;

public class PrincipalLoginService extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
	  
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String email=request.getParameter("email");  
	    String password=request.getParameter("password");
	   // String branchName=request.getParameter("branchName");
	    
	          
	    if(PrincipalLoginDao.validate(email, password)){  
		    response.sendRedirect("principalHome.jsp");
		}  
		else{  
			 response.sendRedirect("principalLogin.jsp");  
		     
		}  
	          
	    out.close();  
	    }  

}