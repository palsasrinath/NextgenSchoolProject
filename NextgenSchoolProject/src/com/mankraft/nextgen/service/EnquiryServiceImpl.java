package com.mankraft.nextgen.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.mankraft.nextgen.dao.EnquiryDao;
import com.mankraft.nextgen.model.Enquiry;

public class EnquiryServiceImpl implements EnquiryService{
		static final Logger LOGGER = Logger.getLogger(EnquiryServiceImpl.class);

		@Autowired
		private EnquiryDao enquiryDao;

		public void setEnquiryDao(EnquiryDao enquiryDao) {
			this.enquiryDao = enquiryDao;
		}
	    @Override
		@Transactional
		public void save(Enquiry enquiry) {

	    	enquiryDao.save(enquiry);
			
		}
		@Override
		public int getNextSerialNo() {
			
			
			return enquiryDao.getNextSerialNo() + 1;
		}

}
