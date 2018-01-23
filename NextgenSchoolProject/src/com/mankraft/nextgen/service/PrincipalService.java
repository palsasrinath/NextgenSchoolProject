package com.mankraft.nextgen.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.mankraft.nextgen.model.ChangePassword;
import com.mankraft.nextgen.model.Enquiry;
import com.mankraft.nextgen.model.PrincipalRegister;


@Service
public interface PrincipalService {
	
	static final Logger LOGGER = Logger.getLogger(PrincipalService.class);

	public void savePrincipal(PrincipalRegister principalRegister);

	public boolean validatePrincipalLogin(PrincipalRegister principalRegister);

	public String forgotPassword(ChangePassword changePassword);
	
	public List<Enquiry> getEnquiries(String branchName);

	public String changePassword(ChangePassword changePassword);
	
	public String getfirstName(PrincipalRegister principalRegister);

	}