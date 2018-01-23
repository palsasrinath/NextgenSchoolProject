package com.mankraft.nextgen.service;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.mankraft.nextgen.model.Enquiry;

@Service
@Scope("prototype")
public interface EnquiryService {

	static final Logger LOGGER = Logger.getLogger(EnquiryService.class);
	void save(Enquiry enquiry);
	
	int getNextSerialNo();

}
