package com.mankraft.nextgen.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mankraft.nextgen.dao.TeacherDAO;
import com.mankraft.nextgen.model.TeacherRegister;

/**
 * Servlet implementation class TeacherRegisterService
 */
public class TeacherRegisterService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String conformpassword = request.getParameter("conformpassword");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String qualification = request.getParameter("qualification");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		
		TeacherRegister ts = new TeacherRegister();
		
		ts.setFirstName(firstName);
		ts.setLastName(lastName);
		ts.setEmail(email);
		ts.setPassword(password);
        ts.setConformpassword(conformpassword);
        ts.setMobile(mobile);
        ts.setGender(gender);
        ts.setAddress(address);
        ts.setQualification(qualification);
        ts.setCity(city);
        ts.setState(state);
        
        try {
			int i = TeacherDAO.save(ts);

			if (i == 1) {
				System.out.println("Registerd successfully");
			} else {
				System.out.println("Exception Occured");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
		
		
	}


