package com.mankraft.nextgen.dao;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.validation.Errors;

import com.mankraft.nextgen.model.Enquiry;

@Component
@Repository
public interface EnquiryDao {

	static final Logger LOGGER = Logger.getLogger(EnquiryDao.class);


	public int save(Enquiry enquiry);
	
	int getNextSerialNo();
	public boolean supports(Class<?> clazz);
	public void validate(Object target, Errors errors);
	
}
