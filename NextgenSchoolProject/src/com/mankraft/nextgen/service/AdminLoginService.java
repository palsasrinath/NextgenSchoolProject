/*package com.mankraft.nextgen.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mankraft.nextgen.dao.AdminLoginDao;
import com.mankraft.nextgen.dao.PrincipalLoginDao;

public class AdminLoginService extends HttpServlet{
	*//**
	 * 
	 *//*
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
	  
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String email=request.getParameter("email");  
	    String password=request.getParameter("password");
	    
	    
	          
	    if(AdminLoginDao.validate(email, password)){  
		    response.sendRedirect("adminHome.jsp");
		}  
		else{  
			 response.sendRedirect("adminLogin.jsp");  
		     
		}  
	          
	    out.close();  
	    }  

}
*/