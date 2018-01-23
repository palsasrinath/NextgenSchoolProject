package com.mankraft.nextgen.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.mankraft.nextgen.model.ChangePassword;
import com.mankraft.nextgen.model.Enquiry;
import com.mankraft.nextgen.model.PrincipalRegister;



@Component
@Repository
public interface PrincipalDAO {
	
	static final Logger LOGGER = Logger.getLogger(PrincipalDAO.class);

	public int savePrincipal(PrincipalRegister principalRegister);
	
	public boolean validatePrincipalLogin(PrincipalRegister principalRegister);

	public List<Enquiry> getEnquiries(String branchName);

	public int getPrincipalId(PrincipalRegister principalRegister);

	public String changePassword(ChangePassword changePassword);

	public String forgotPassword(ChangePassword changePassword);

	public static int save(PrincipalRegister ps) {
		return 0;
	}
	
	public String getfirstName(PrincipalRegister principalRegister);
}