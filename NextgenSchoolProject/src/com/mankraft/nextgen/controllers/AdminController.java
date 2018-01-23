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

import com.mankraft.nextgen.model.AdminForm;
import com.mankraft.nextgen.model.Enquiry;
import com.mankraft.nextgen.service.AdminService;
import com.mankraft.nextgen.util.NextGenConstants;

@Component
@Controller
public class AdminController {

	private static final Logger LOGGER = Logger.getLogger(AdminController.class);

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = { NextGenConstants.ADMIN_HOME }, method = RequestMethod.GET)
	public ModelAndView showadminFormPage(@ModelAttribute("adminForm") AdminForm adminForm) {
		return new ModelAndView("adminRegister", "command", new AdminForm());

	}

	@RequestMapping(value = { NextGenConstants.ADMIN_LOGIN_VIEW }, method = RequestMethod.GET)
	public ModelAndView showAdminLoginPage(@ModelAttribute("adminForm") AdminForm adminForm) {
		return new ModelAndView("adminLogin", "command", new AdminForm());
	}

	@RequestMapping(value = { NextGenConstants.ADMIN_HOME_VIEW }, method = RequestMethod.GET)
	public ModelAndView showAdminHomePage(@ModelAttribute("adminForm") AdminForm adminForm) {
		return new ModelAndView(NextGenConstants.ADMIN_HOME_VIEW, "command", new AdminForm());
	}

	@RequestMapping(value = NextGenConstants.ADMIN_LOGIN_RESPONSE, method = RequestMethod.POST)
	public ModelAndView submitAdminLogin(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("adminForm") AdminForm adminForm, BindingResult result) throws DataAccessException {

		Cookie cookie = new Cookie("adminLoginCookie", "adminLogged");
		cookie.setMaxAge(2592000);
		/*
		 * ck.setDomain("localhost"); ck.setHttpOnly(true); ck.setSecure(true);
		 * ck.setComment("adminLoggin");
		 */
		response.addCookie(cookie);
		boolean adminExists = false;
		try {

			adminExists = adminService.validateAdminLogin(adminForm);

		} catch (DataAccessException dataAccessException) {

			LOGGER.error(" admin login error failed due to incorrect login details" + dataAccessException);
		}

		if (adminExists) {

			List<Enquiry> studentList = adminService.getStudents();

			LOGGER.info("students list is " + studentList);
			HttpSession session = request.getSession();
			session.setAttribute("studentList", studentList);

			/*
			 * String adminEmail = adminForm.getEmail();
			 * 
			 * String adminName = adminEmail.substring(0, 9);
			 */

			String adminName = adminForm.getFirstName();

			session.setAttribute("adminName", adminName);
			// Have error page and set error attribute
			return new ModelAndView("", "command", new AdminForm());
		}

		return new ModelAndView("adminLogin", "command", new AdminForm());

	}

	@RequestMapping(value = NextGenConstants.ADMIN_HOME_SUBMIT, method = RequestMethod.POST)
	public String submitadminForm(@ModelAttribute("adminForm") AdminForm adminForm, BindingResult result) {
		try {
			adminService.saveAdmin(adminForm);
		} catch (DataAccessException dataAccessException) {
			LOGGER.error("Admin Register error: failed due to incorrect data" + dataAccessException);
		}

		return NextGenConstants.ADMIN_LOGIN_FORM;

	}

	@RequestMapping(value = NextGenConstants.ADMIN_HOME_LOGOUT, method = RequestMethod.GET)
	public String submitAdminLogout(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("adminLogout") AdminForm adminForm, BindingResult result) {

		Cookie ck = new Cookie("adminLoginCookie", "");
		ck.setMaxAge(0);

		response.addCookie(ck);

		session.getAttribute("adminName");
		session.invalidate();

		return NextGenConstants.ADMIN_LOGIN_FORM;

	}

}
