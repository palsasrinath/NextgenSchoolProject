package com.mankraft.nextgen.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.mankraft.nextgen.model.Admission;
import com.mankraft.nextgen.model.ParentDeclaration;

@Service
public interface AdmissionService {
	static final Logger LOGGER = Logger.getLogger(AdmissionService.class);

	public int saveAdmission(Admission admission);

	public void parentDeclaration(ParentDeclaration p);

	public Admission getAdmissionDetails(String sno);

	public Admission getAdmissionStudentList(String stdsno);

	public Admission getStudentFeeDetails(Admission admission,String stdno);

	
}
