package com.mankraft.nextgen.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mankraft.nextgen.model.Admission;
import com.mankraft.nextgen.model.ParentDeclaration;
import com.mankraft.nextgen.service.AdmissionService;
import com.mankraft.nextgen.util.NextGenConstants;

@Component
@Controller
public class AdmissionController {

	private static final Logger LOGGER = Logger.getLogger(EnquiryController.class);

	@Autowired
	private AdmissionService admissionService;

	//Remove dead codes

	/*@RequestMapping(value = "/admissionForm.htm/{sno}", method = RequestMethod.GET)
	public ModelAndView showform(@PathVariable("sno")String sno,HttpServletRequest request) {
	Admission admission= admissionService.getAdmissionDetails(sno);
	request.setAttribute("admission", admission); 
		return new ModelAndView("admissionForm", "command", new Admission());
	}*/

	@RequestMapping(value = NextGenConstants.ADMISSION_HOME, method = RequestMethod.GET)
	public ModelAndView showform(@RequestParam("sno")String sno,HttpServletRequest request) {
		
		Admission admission= admissionService.getAdmissionDetails(sno);
		
		request.setAttribute("admission", admission); 
		return new ModelAndView("admissionForm", "command", new Admission());
	}

	@RequestMapping(value = NextGenConstants.ADMISSION_FORM_SUBMIT, method = RequestMethod.POST)
	public String submitAdmissionForm(@ModelAttribute("admission") Admission admission, BindingResult result,HttpServletRequest request){
		
			String stdno = admission.getSno();
			HttpSession session = request.getSession(false);  
			session.setAttribute("stdno", stdno);
			
		try {
			
			admissionService.saveAdmission(admission);
			
			Admission studentFeeDetails = admissionService.getStudentFeeDetails(admission,stdno);
			session.setAttribute("studentFeeDetails", studentFeeDetails);
			
		} catch (DataAccessException dataAccessException) { 
			
			LOGGER.error("admission register error: failed due to incorrect data"+dataAccessException); //Add e at the end
		}
		return NextGenConstants.PARENT_DECLARATION_VIEW;
	}

	@RequestMapping(value = {NextGenConstants.PARENT_HOME_DECLARATION }, method = RequestMethod.GET)
	public ModelAndView showParentDeclarationPage(@ModelAttribute("declaration") ParentDeclaration parentDeclaration) {
		return new ModelAndView("declarationByParentForm", "command", new ParentDeclaration());
	}

	@RequestMapping(value = NextGenConstants.PARENT_FORM_SUBMIT, method = RequestMethod.POST)
	public String submitEnquiryForm(@ModelAttribute("declaration") ParentDeclaration p, BindingResult result){
		
		try {
			
			admissionService.parentDeclaration(p);

		} catch (DataAccessException dataAccessException) {
		
			LOGGER.error("Enquiry register error: Failed due to incorrect data"+dataAccessException);
		}
		return NextGenConstants.FEERECEIPT;
	}

	@RequestMapping(NextGenConstants.FEERECEIPT_FORM)
	public String viewemp(@ModelAttribute("admission") Admission admission, HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		String stdno = (String)session.getAttribute("stdno");
		
 		Admission admissionStudentList = admissionService.getAdmissionStudentList(stdno);
		session.setAttribute("admissionStudentList", admissionStudentList);
		
		return "feeReceipt";
	}
}

