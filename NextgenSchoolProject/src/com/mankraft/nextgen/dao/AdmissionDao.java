package com.mankraft.nextgen.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.mankraft.nextgen.model.Admission;
import com.mankraft.nextgen.model.ParentDeclaration;

@Component
@Repository
public interface AdmissionDao {

	static final Logger LOGGER = Logger.getLogger(AdmissionDao.class);

	public int saveAdmission(Admission admission);

	public int parentDeclaration(ParentDeclaration p);

	public Admission getAdmissionDetails(String sno);

	public Admission getAdmissionStudentList(String stdsno);

	public Admission getStudentFeeDetails(Admission admission,String stdno);


	

}
