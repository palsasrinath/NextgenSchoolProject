package com.mankraft.nextgen.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.mankraft.nextgen.model.AdminForm;
import com.mankraft.nextgen.model.ChangePassword;
import com.mankraft.nextgen.model.Enquiry;

@Component
@Repository
public interface AdminDAO {
	
	static final Logger LOGGER = Logger.getLogger(AdminDAO.class);

	public int saveAdmin(AdminForm adminRegister);
	
	public boolean validateAdminLogin(AdminForm adminRegister);

	//public String changePassword(ChangePassword changePassword);

	//public String forgotPassword(ChangePassword changePassword);


	//public List<String> getCustomerReferenceNumbers();

	//public List<CustomerForm> getCustomers();

	//public String assignAccNoToCustomer(AssignAccNoToCustomer assignAccNoToCustomer);

	//public int getadminId(AdminForm adminForm);

	public List<Enquiry> getStudents();

	public int getadminId(AdminForm adminForm);

	public String changePassword(ChangePassword changePassword);

	public String forgotPassword(ChangePassword changePassword);

	//public String assignAdmissionToStudent(AssignAdmissionToStudent assignAccNoToCustomer);



}
