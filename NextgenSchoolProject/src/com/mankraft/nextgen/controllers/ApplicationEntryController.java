package com.mankraft.nextgen.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Component
@Controller
@Scope("session")
public class ApplicationEntryController {

	private static final Logger LOGGER = Logger.getLogger(ApplicationEntryController.class); // Have logger initialization as private
																						 

	@RequestMapping(value = { "/index.htm" }, method = RequestMethod.GET)
	public ModelAndView applicationStartup(HttpServletRequest request, HttpServletResponse response) {

		String school = " Welcome to NextGenSchools "; // Have spaces between operators
														 
		HttpSession session = request.getSession();
		session.setAttribute("school", school);
		LOGGER.info("School name is : " + school); // Logger info should always  start with capitals
													

		return new ModelAndView("index");

	}

}
