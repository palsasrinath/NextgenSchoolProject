package com.mankraft.nextgen.controllers;


import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mankraft.nextgen.model.Enquiry;
import com.mankraft.nextgen.model.PrincipalRegister;
import com.mankraft.nextgen.service.PrincipalService;
import com.mankraft.nextgen.util.NextGenConstants;


@Component
@Controller
public class PrincipalController {

	static final Logger LOGGER = Logger.getLogger(PrincipalController.class);

	@Autowired
	private PrincipalService principalService;

	@RequestMapping(value = { NextGenConstants.PRINCIPAL_REGISTER}, method = RequestMethod.GET)
	public ModelAndView showprincipalRegisterPage(@ModelAttribute("principalRegister") PrincipalRegister principalRegister) {
		return new ModelAndView("principalRegister", "command", new PrincipalRegister());

	}

	@RequestMapping(value = { NextGenConstants.PRINCIPAL_LOGIN_VIEW }, method = RequestMethod.GET)
	public ModelAndView showPrincipalLoginPage(@ModelAttribute("principalRegister") PrincipalRegister principalRegister) {
		return new ModelAndView("principalLogin", "command", new PrincipalRegister());

	}
	
	
	@RequestMapping(value = { NextGenConstants.PRINCIPAL_HOME_VIEW }, method = RequestMethod.GET)
	public ModelAndView showPrincipalHomePage(@ModelAttribute("principalRegister") PrincipalRegister principalRegister) {
		return new ModelAndView("principalHome", "command", new PrincipalRegister());

	}

	@RequestMapping(value = NextGenConstants.PRINCIPAL_REGISTER_VIEW, method = RequestMethod.POST)
	public ModelAndView submitprincipalLogin(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("principalRegister") PrincipalRegister principalRegister,Enquiry enquiry,BindingResult result)  {

		Cookie ck = new Cookie("principalLoginCookie", "principalLogged");
		ck.setMaxAge(2592000);
		/*ck.setDomain("localhost");
		ck.setHttpOnly(true); 
		ck.setSecure(true); 
		ck.setComment("principalLoggin");*/ 
		response.addCookie(ck);

		boolean principalExists = false;

		try {

			principalExists = principalService.validatePrincipalLogin(principalRegister);
			
			
			  String principalFname = principalService.getfirstName(principalRegister);
			  
			  HttpSession session = request.getSession();
			  session.setAttribute("principalFname", principalFname);
			 

		} catch (DataAccessException dataaccessexception) {
			dataaccessexception.printStackTrace();

			LOGGER.error(" principal login error failed due to incorrect login details"+dataaccessexception);
		}

		if (principalExists) {

			String branchName = enquiry.getBranchName();
	        
			List<Enquiry> studentList = principalService.getEnquiries(branchName); 
			
			LOGGER.info("students list is " + studentList);
			HttpSession session = request.getSession();
			session.setAttribute("studentList", studentList);
			
			
			return new ModelAndView("principalHome", "command", new  PrincipalRegister());
		}

		return new ModelAndView("principalLogin", "command", new  PrincipalRegister());

	}

	@RequestMapping(value = NextGenConstants.PRINCIPAL_SUBMIT, method = RequestMethod.POST)
	public String submitPrincipalRegister(@ModelAttribute("principalRegister") PrincipalRegister registerPrincipal, BindingResult result)
			throws DataAccessException {

		try {

			principalService.savePrincipal(registerPrincipal);
		} catch (DataAccessException dataAccessException) {
			dataAccessException.printStackTrace();

			LOGGER.error("principal register error: failed due to incorrect data" + dataAccessException);

		}

		//return "redirect:/principalLoginView.htm";
		return NextGenConstants.PRINCIPAL_LOGIN;

	}

	
	@RequestMapping(value = NextGenConstants.PRINCIPAL_LOGOUT, method = RequestMethod.GET)
	public String submitPrincipalLogout(HttpSession session,HttpServletRequest request,HttpServletResponse response,
			@ModelAttribute("principalLogout") PrincipalRegister principalRegister, BindingResult result) throws DataAccessException {
			
		Cookie ck = new Cookie("principalLoginCookie", "");
		ck.setMaxAge(0);
		
		response.addCookie(ck);
		
		session.getAttribute("principal");
		
		session.invalidate();
		
		return NextGenConstants.PRINCIPAL_LOGIN;


	
	}
	

}

