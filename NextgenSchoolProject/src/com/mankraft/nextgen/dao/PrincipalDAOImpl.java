package com.mankraft.nextgen.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.mankraft.nextgen.model.ChangePassword;
import com.mankraft.nextgen.model.Enquiry;
import com.mankraft.nextgen.model.PrincipalRegister;

public class PrincipalDAOImpl implements PrincipalDAO {

	static final Logger LOGGER = Logger.getLogger(PrincipalDAOImpl.class);

	@Autowired
	private DriverManagerDataSource dataSource;
	private JdbcTemplate jdbcTemplate;

	/**
	 * @return the jdbcTemplate
	 */
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	/**
	 * @param jdbcTemplate
	 *            the jdbcTemplate to set
	 */
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	/**
	 * @return the dataSource
	 */
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}

	/**
	 * @param dataSource
	 *            the dataSource to set
	 */
	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public int savePrincipal(PrincipalRegister principalRegister) throws DataAccessException {

		String sql = "insert into t_principal_register(first_name,last_Name,email,password,conformpassword,mobileNumber,gender,branchName,address,city,state)  values('"
				+ principalRegister.getFirstName() + "','" + principalRegister.getLastName() + "','" + principalRegister.getEmail() + "', '"
				+ principalRegister.getPassword() + "','" +principalRegister.getConformpassword() + "','" + principalRegister.getMobile() + "','"
				+  principalRegister.getGender() + "', '" + principalRegister.getBranchName() + "', '" + principalRegister.getAddress() + "', '" + principalRegister.getCity() + "',  '"
				+ principalRegister.getState() + "')";
		return jdbcTemplate.update(sql);
	}

	@Override
	public boolean validatePrincipalLogin(PrincipalRegister principalRegister) {

		String sql = "SELECT count(*) from  t_principal_register WHERE branchName = ?  and email = ? and password=?";

		boolean userExists = false;
 
		String branchName = principalRegister.getBranchName();
		
		String email = principalRegister.getEmail();

		String password = principalRegister.getPassword();

		int rowcount = jdbcTemplate.queryForObject(sql, new Object[] { branchName, email, password }, Integer.class);
		if (rowcount == 1) {
			userExists = true; 
		}
		return userExists;
	}

	@Override
	public String changePassword(ChangePassword changePassword) {

		String newPassword = changePassword.getNewPassword();
		String conformPassword = changePassword.getConformPassword();
		String oldPassword = changePassword.getOldPassword();

		String passwordChange = "passowordChangeSuccess";
		
		

		String sql = "update   t_principal_register SET password= '" + newPassword + "' , conformPassword='" + conformPassword
				+ "' where oldPassword='" + oldPassword + "'";
		LOGGER.info(sql);

		int rowcount = jdbcTemplate.update(sql);
		
		LOGGER.info(rowcount);
		
		String sql2 = "update   t_principal_register SET password= '" + newPassword + "' , conformPassword='" + conformPassword + "', oldPassword= '" + newPassword + "' ";
		LOGGER.info(sql2);

		int rowcount1 = jdbcTemplate.update(sql2);

		LOGGER.info(rowcount1);
		
		
		
		if (rowcount == 1) {

			String sql3 = "update  t_principal_register SET oldPassword= '" + newPassword + "' where password='" + newPassword
					+ "'";
			LOGGER.info(sql3);

			int rowcount2 = jdbcTemplate.update(sql);

			return passwordChange;
		}
		return "passowordChangeFailed";
	}

	@Override
	public String forgotPassword(ChangePassword changePassword) {

		String sql = "update  t_principal_register SET newPassword='" + changePassword.getNewPassword() + "' where userName='"+ changePassword.getUserName() + "'";
		
		LOGGER.info(sql);

		int record = jdbcTemplate.update(sql);

		return null;
	}

	public List<Enquiry> getEnquiries(String branchName) {

		return jdbcTemplate.query(
				"select sno, firstName,motherName,fatherName,fatherMob,motherMob,email from t_enquiry where branchName = '"+branchName+"' order by id desc ",
				new RowMapper<Enquiry>() {

					@Override
					public Enquiry mapRow(java.sql.ResultSet rs, int row) throws SQLException {
						Enquiry e = new Enquiry();
						e.setSno(rs.getString("sno"));
						e.setFirstName(rs.getString("firstName"));
						e.setMotherName(rs.getString("motherName"));
						e.setFatherName(rs.getString("fatherName"));
						e.setFatherMob(rs.getString("fatherMob"));
						e.setMotherMob(rs.getString("motherMob"));
						e.setEmail(rs.getString("email"));
						return e;
					} 

				});
	}

	@Override
	public int getPrincipalId(PrincipalRegister  principalRegister) {
 		return 0;
	}
	
	@Override
	public String getfirstName(PrincipalRegister principalRegister) {
		
		
		String email = principalRegister.getEmail(); 
		
		String sql = "select first_name from t_principal_register where email = '" + email + "'";
		
		LOGGER.info(sql);

		int record = jdbcTemplate.queryForInt(sql);

		return null;
	}

}
