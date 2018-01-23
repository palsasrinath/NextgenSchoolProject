package com.mankraft.nextgen.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import com.mankraft.nextgen.model.Enquiry;

public class EnquiryDaoImpl implements EnquiryDao {
	static final Logger LOGGER = Logger.getLogger(EnquiryDaoImpl.class);

	@Autowired
	private DriverManagerDataSource dataSource;
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}

	public int save(Enquiry e) throws DataAccessException {
		System.out.println(e.getSno());
		String sql = "insert into t_enquiry (sno,date,firstName,lastName,dateOfBirth,age,gender,nationality,motherTongue,place,state,branchName,className,fatherName,motherName,fatherOccupation,motherOccupation,residenceTelNo,fatherOffNo,fatherMob,motherOffNo,motherMob,guardianNo,email,address,previousSchooling,lastSchool,lastSchoolAddress,aboutSchool,others,studentImgPath) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
	int success=jdbcTemplate.update(sql, new Object[] {e.getSno(), e.getDate(),e.getFirstName(),e.getLastName(),e.getDateOfBirth(),e.getAge(),e.getGender(),e.getNationality(),e.getMotherTongue(),e.getPlace(),e.getState(),e.getBranchName(),e.getClassName(),e.getFatherName(),e.getMotherName(),e.getFatherOccupation(),e.getMotherOccupation(),e.getResidenceTelNo(),e.getFatherOffNo() ,e.getFatherMob(),e.getMotherOffNo(),e.getMotherMob(),e.getGuardianNo(),e.getEmail(),e.getAddress(), e.getPreviousSchooling(),e.getLastSchool(),e.getLastSchoolAddress(),
				e.getAboutSchool(),e.getOthers(),e.getProfileFilePath()});
		
		return success;
	}

	@Override
	public int getNextSerialNo() {
		int latestId ;
		
		String getLatestSlNoQuery = "SELECT MAX(sno) as latestSno FROM T_ENQUIRY";
		List<String> rowList = jdbcTemplate.query(getLatestSlNoQuery, new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int row) throws SQLException {
				return rs.getString("latestSno");
			}
		});
		System.out.println(rowList);
		if(rowList.isEmpty() || rowList.get(0) == null)
		{
			latestId =0;
		}
		else
		{
		latestId = Integer.valueOf(rowList.get(0));
		}
		
		return latestId; 
	}


	@Override
	public boolean supports(Class<?> clazz) {
		
		return EnquiryDao.class.isAssignableFrom(clazz);
	
	}

	@Override
	public void validate(Object target, Errors errors) {
		Enquiry enquiry = (Enquiry)target;
		String email = enquiry.getEmail();
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "enquiry.email.empty");
		 if(!enquiry.getEmail().matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
	            errors.rejectValue("email", "enquiry.email.invalid");
	        }
	}
}
