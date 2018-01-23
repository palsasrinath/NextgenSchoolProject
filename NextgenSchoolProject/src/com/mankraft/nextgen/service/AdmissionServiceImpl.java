package com.mankraft.nextgen.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.mankraft.nextgen.dao.AdmissionDao;
import com.mankraft.nextgen.model.Admission;
import com.mankraft.nextgen.model.ParentDeclaration;


public class AdmissionServiceImpl implements AdmissionService{
	static final Logger LOGGER = Logger.getLogger(AdmissionServiceImpl.class);

	@Autowired
	private AdmissionDao admissionDAO;

	public void setAdmissionDAO(AdmissionDao admissionDAO) {
		this.admissionDAO = admissionDAO;
	}
    @Override
	@Transactional
	public int saveAdmission(Admission admission) {

    	return admissionDAO.saveAdmission(admission);
	}
    @Override
	@Transactional
	public void parentDeclaration(ParentDeclaration p) {

    	admissionDAO.parentDeclaration(p);
		
	}
    @Override
	public Admission getAdmissionDetails(String sno) {
		return admissionDAO.getAdmissionDetails(sno);
	}
	
	@Override
	public Admission getAdmissionStudentList(String stdno) {
		return admissionDAO.getAdmissionStudentList(stdno);
	}
	@Override
	public Admission getStudentFeeDetails(Admission admission,String stdno) {
		return admissionDAO.getStudentFeeDetails(admission,stdno);
	}
	
	

}
