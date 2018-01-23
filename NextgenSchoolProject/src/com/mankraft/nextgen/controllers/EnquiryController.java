package com.mankraft.nextgen.controllers;

import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mankraft.nextgen.dao.EnquiryDao;
import com.mankraft.nextgen.model.Enquiry;
import com.mankraft.nextgen.service.EnquiryService;
import com.mankraft.nextgen.util.NextGenConstants;

@Component
@Controller
@Scope("prototype")
public class EnquiryController {

	static final Logger LOGGER = Logger.getLogger(EnquiryController.class);
	private static int latestSerialNo;
	
	 private static String UPLOADED_FOLDER = "E://NexgenUploads/";


	@Autowired
	EnquiryService enquiryService;
	EnquiryDao enquiryDao;

	@RequestMapping(NextGenConstants.ENQUIRY_FORM)
	public ModelAndView showform() {
		latestSerialNo = enquiryService.getNextSerialNo();
		ModelAndView mv = new ModelAndView("enquiryForm", "command", new Enquiry());
		mv.addObject("latestSerialNo", latestSerialNo);

		return mv;
	}

	@RequestMapping(value = NextGenConstants.ENQUIRY_FORM_SUBMI, method = RequestMethod.POST)
	public String submitadminForm(@ModelAttribute("enquiryForm") Enquiry enquiry, BindingResult result,
			HttpServletRequest request, HttpServletResponse response)  {

		try {
			if(enquiry.getImageFile() != null) {
				byte[] bytes = enquiry.getImageFile().getBytes();
				
				FileOutputStream fout=new FileOutputStream(UPLOADED_FOLDER+""+enquiry.getImageFile().getOriginalFilename());    
	            enquiry.setProfileFilePath(UPLOADED_FOLDER+""+enquiry.getImageFile().getOriginalFilename());
	             
	            fout.write(bytes);    
	            fout.close();
			}
			 
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println();
		
		// This is how to get today's date in Java
        Date today = new Date();
        
      //Have these implementations in a Utility
       //formatting date in Java using SimpleDateFormat
        SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd-MM-yyyy");
        String date = DATE_FORMAT.format(today);
        LOGGER.info("Today in dd-MM-yyyy format : " + date);
        enquiry.setDate(date); 
		enquiry.setSno(String.valueOf(latestSerialNo));
		//enquiryDao.validate(enquiry, result);
		if (result.hasErrors());

		String referenceNumber = " " ;
		try {

			referenceNumber = generateReferenceNumber();

			LOGGER.info("referenceNum in controller is" + referenceNumber);

			enquiryService.save(enquiry);

			request.setAttribute("referenceNumber", referenceNumber);

		} catch (DataAccessException dataaccessexseption) {

			LOGGER.error("admission register error: failed due to incorrect data"+dataaccessexseption);

		}

		return "success";

	}

	private String generateReferenceNumber() {
		UUID refIdGen = UUID.randomUUID();

		long hi = refIdGen.getMostSignificantBits();
		long lo = refIdGen.getLeastSignificantBits();

		byte[] bytes = ByteBuffer.allocate(16).putLong(hi).putLong(lo).array();

		BigInteger bigInteger = new BigInteger(bytes);
		String referenceNumber = bigInteger.toString();

		String refNumber = (referenceNumber.substring(2, 7));

		return refNumber;
	}

}
