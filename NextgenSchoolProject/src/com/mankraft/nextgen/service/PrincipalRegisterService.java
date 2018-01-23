package com.mankraft.nextgen.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mankraft.nextgen.dao.PrincipalDAO;
import com.mankraft.nextgen.model.PrincipalRegister;


public class PrincipalRegisterService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(final HttpServletRequest request,final HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String conformpassword = request.getParameter("conformpassword");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String branchName = request.getParameter("branchName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		
		PrincipalRegister ps = new PrincipalRegister();
		
		ps.setFirstName(firstName);
		ps.setLastName(lastName);
		ps.setEmail(email);
		ps.setPassword(password);
		ps.setConformpassword(conformpassword);
		ps.setMobile(mobile);
		ps.setGender(gender);
		ps.setMobile(branchName);
		ps.setAddress(address);
		ps.setCity(city);
		ps.setState(state);
		
		int i = PrincipalDAO.save(ps);

		if (i == 1) {
			RequestDispatcher rd=request.getRequestDispatcher("principalLogin.jsp");
			rd.include(request,response);
		} else {
			out.print("Please Enter all the required fields");  
		    RequestDispatcher rd=request.getRequestDispatcher("/principalRegister.jsp");  
		    rd.include(request, response);
		}
	}
	

}

