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

import com.mankraft.nextgen.model.Admission;
import com.mankraft.nextgen.model.ParentDeclaration;


public class AdmissionDAOImpl  implements AdmissionDao{
	static final Logger LOGGER = Logger.getLogger(AdmissionDAOImpl.class);

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
	public int saveAdmission(Admission a) throws DataAccessException {

		String sql = "insert into t_admission (sno,regNo,branchName,className,dateofAdmission,gender,age,studentName,dateOfBirth,nationality,motherTongue,place,state,fatherName,motherName,fatherOccupation,motherOccupation,residenceTelNo,fatherOffNo,fatherMob,motherOffNo,motherMob,guardianNo,email,address,tutionFee,paidTutionFee,transportRequirement,transportFee,paidTransportFee,dayCareRequirement,dayCareFee,paidDayCareFee,uniformRequirement,uniformFee,paidUniformFee,booksAndBagRequirement,booksAndBagFee,paidBooksAndBagFee,teachersToStudents,previousSchooling,lastSchool,lastSchoolAddress) values"
				+ "('" + a.getSno() + "','" + a.getRegNo() + "','"+a.getBranchName()+ "','"+a.getClassName()+ "','" + a.getDateOfAdm() + "','" 
				+ a.getGender() + "','" +a.getAge() + "','" +a.getFirstName() + "','" +a.getDateOfBirth() + "','" +a.getNationality()+ "','" +a.getMotherTongue() + "','" +a.getPlace() + "','" 
				+a.getState() + "','" +a.getFatherName() + "','" +a.getMotherName() + "','" +a.getFatherOccupation() + "','" +a.getMotherOccupation() + "','" +a.getResidenceTelNo() + "','" 
				+a.getFatherOffNo() + "','" +a.getFatherMob() + "','" +a.getMotherOffNo() + "','" +a.getMotherMob() + "','" +a.getGuardianNo() + "','" +a.getEmail() + "','" 
				+a.getAddress() + "','" +a.getTotalFee() + "','" +a.getPaidFee() + "','" +a.getTransportRequirement() + "','"  +a.getTransportFee() + "','"+a.getTransportPaidFee()+"','"
				+a.getDayCareRequirement() + "','"+a.getDayCareFee()+ "','"+a.getDayCarePaidFee()+"','" +a.getUniformRequirement() + "','" +a.getUniformFee() + "','"+a.getUniformPaidFee()+"','" +a.getBooksAndBagRequirement() + "','" 
				+a.getBooksAndBagFee() + "','"+a.getBooksAndBagPaidFee()+"','"+a.getTeachersToStudents()+"','"+a.getPreviousSchooling()+"','"+a.getLastSchool()+  "','"+a.getLastSchoolAddress()+"')";
	
		return jdbcTemplate.update(sql);
		
	}

	@Override
	public int parentDeclaration(ParentDeclaration p) {
		String sql= "insert into t_parent_declaration (parent,student,photos,records,birth) values ('" + p.getParent() + "','" + p.getStudent() + "','" + p.getPhotos() + "','" + p.getRecords() + "','" + p.getBirth() + "')";
		
		return jdbcTemplate.update(sql);
	}

	@Override
	public Admission getAdmissionDetails(String sno) {
		String admissionDetailQuery = "select sno,firstName,branchName,className,gender,age,dateOfBirth,nationality,motherTongue,place,state,fatherName,motherName,"
				+ "fatherOccupation,motherOccupation,residenceTelNo,fatherOffNo,fatherMob,motherOffNo,motherMob,guardianNo,email,address,previousSchooling,lastSchool,lastSchoolAddress,studentImgPath from t_enquiry where sno = ?";
		List<Admission> admissionList = jdbcTemplate.query(admissionDetailQuery, new Object[] {sno}, new RowMapper<Admission>() {

			@Override
			public Admission mapRow(ResultSet rs, int row) throws SQLException {
				Admission admission = new Admission();
				admission.setSno(rs.getString("sno"));
				admission.setFirstName(rs.getString("firstName"));
				admission.setBranchName(rs.getString("branchName" ));
				admission.setClassName(rs.getString("className"));
				admission.setGender(rs.getString("gender"));
				admission.setAge(rs.getString("age"));
				admission.setDateOfBirth(rs.getString("dateOfBirth"));
				admission.setNationality(rs.getString("nationality"));
				admission.setMotherTongue(rs.getString("motherTongue"));
				admission.setPlace(rs.getString("place"));
				admission.setState(rs.getString("state"));
				admission.setFatherName(rs.getString("fatherName"));
				admission.setMotherName(rs.getString("motherName"));
				admission.setFatherOccupation(rs.getString("fatherOccupation"));
				admission.setMotherOccupation(rs.getString("motherOccupation"));
				admission.setResidenceTelNo(rs.getString("residenceTelNo"));
				admission.setFatherOffNo(rs.getString("fatherOffNo"));
				admission.setFatherMob(rs.getString("fatherMob"));
				admission.setMotherOffNo(rs.getString("motherOffNo"));
				admission.setMotherMob(rs.getString("motherMob"));
				admission.setGuardianNo(rs.getString("guardianNo"));
				admission.setEmail(rs.getString("email"));
				admission.setAddress(rs.getString("address"));
				admission.setPreviousSchooling(rs.getString("previousSchooling"));
				admission.setLastSchool(rs.getString("lastSchool"));
				admission.setLastSchoolAddress(rs.getString("lastSchoolAddress"));
				admission.setProfileFilePath(rs.getString("studentImgPath"));
				
				return admission;
			}
			
		});
		return admissionList.get(0);
	}

	@Override
	public Admission getAdmissionStudentList(String stdno) {
		String admissionDetail = "select sno,studentName,fatherName,motherName,fatherMob,motherMob,className,teachersToStudents,tutionFee,paidTutionFee,transportFee,paidTransportFee,dayCareFee,paidDayCareFee,uniformFee,paidUniformFee,booksAndBagFee,paidBooksAndBagFee from t_admission where sno = ?";
		List<Admission> admissionStudentList = jdbcTemplate.query(admissionDetail, new Object[] {stdno}, new RowMapper<Admission>() {

			@Override
			public Admission mapRow(ResultSet rs, int row) throws SQLException {
				Admission admission = new Admission();
				admission. setSno(rs.getString("sno"));
				admission.setFirstName(rs.getString("studentName"));
				admission.setFatherName(rs.getString("fatherName"));
				admission.setMotherName(rs.getString("motherName" ));
				admission.setFatherMob(rs.getString("fatherMob"));
				admission.setMotherMob(rs.getString("motherMob"));
				admission.setClassName(rs.getString("className"));
				admission.setTeachersToStudents(rs.getString("teachersToStudents"));
				admission.setTotalFee(rs.getString("tutionFee"));
				admission.setPaidFee(rs.getString("paidTutionFee"));
				admission.setTransportFee(rs.getString("transportFee"));
				admission.setTransportPaidFee(rs.getString("paidTransportFee"));
				admission.setDayCareFee(rs.getString("dayCareFee"));
				admission.setDayCarePaidFee(rs.getString("paidDayCareFee"));
				admission.setUniformFee(rs.getString("uniformFee"));
				admission.setUniformPaidFee(rs.getString("paidUniformFee"));
				admission.setBooksAndBagFee(rs.getString("booksAndBagFee"));
				admission.setBooksAndBagPaidFee(rs.getString("paidBooksAndBagFee"));
				
		
				
				return admission;
			}
			
		});
		return admissionStudentList.get(0);
	}
	
	public Admission  getStudentFeeDetails(Admission admission,String stdno) {
		
		String stdNo = admission.getSno();
		
		
		//-------------------Tution Fee--------------------
		
		String totalTutionFee = admission.getTotalFee();
		
		String paidTutionFee = admission.getPaidFee();
		
		Integer tutionDueFee= Integer.parseInt(totalTutionFee) - Integer.parseInt(paidTutionFee);
		
		String currentTutionDueFee= tutionDueFee.toString();
		
		String tution="update t_admission set dueTutionFee='" + currentTutionDueFee + "' where sno='" + stdNo + "'";

		LOGGER.info(tution);

		int updatedTutionDueFee = jdbcTemplate.update(tution);
		
		String totalTutionDueFee = String.valueOf(updatedTutionDueFee);
		
		
		//---------------------Transport Fee-----------------
		
		String totalTransportFee = admission.getTransportFee();
		
		String paidTransportFee = admission.getTransportPaidFee();
		
		Integer transportDueFee= Integer.parseInt(totalTransportFee) - Integer.parseInt(paidTransportFee);
		
		String currentTransportDueFee= transportDueFee.toString();
		
		String transport="update t_admission set dueTransportFee='" + currentTransportDueFee + "' where sno='" + stdNo + "'";

		LOGGER.info(transport);

		int updatedTransportDueFee = jdbcTemplate.update(transport);
		
		String totalTransportDueFee = String.valueOf(updatedTransportDueFee);
		
		
		//-----------------DayCare Fee------------------
		
		String totalDayCareFee = admission.getDayCareFee();
		
		String paidDayCareFee = admission.getDayCarePaidFee();
		
		Integer dayCareDueFee= Integer.parseInt(totalDayCareFee) - Integer.parseInt(paidDayCareFee);
		
		String currentDayCareDueFee= dayCareDueFee.toString();
		
		String dayCare="update t_admission set dueDayCareFee='" + currentDayCareDueFee + "' where sno='" + stdNo + "'";

		LOGGER.info(dayCare);

		int updatedDayCareDueFee = jdbcTemplate.update(dayCare);
		
		String totalDayCareDueFee = String.valueOf(updatedDayCareDueFee);
		
		
		//--------------------Uniform Fee-------------------
		
		String totalUniformFee = admission.getUniformFee();
		
		String paidUniformFee = admission.getUniformPaidFee();
		
		Integer uniformDueFee= Integer.parseInt(totalUniformFee) - Integer.parseInt(paidUniformFee);
		
		String currentUniformDueFee= uniformDueFee.toString();
		
		String uniform="update t_admission set dueUniformFee='" + currentUniformDueFee + "' where sno='" + stdNo + "'";

		LOGGER.info(uniform);

		int updatedUniformDueFee = jdbcTemplate.update(uniform);
		
		String totalUniformDueFee = String.valueOf(updatedUniformDueFee);
		
		
		//-------------------BooksAndBag Fee-----------------
		
		String totalBooksAndBagFee = admission.getBooksAndBagFee();
		
		String paidBooksAndBagFee = admission.getBooksAndBagPaidFee();
		
		Integer booksAndBagDueFee= Integer.parseInt(totalBooksAndBagFee) - Integer.parseInt(paidBooksAndBagFee);
		
		String currentBooksAndBagDueFee= booksAndBagDueFee.toString();
		
		String booksAndBag="update t_admission set dueBooksAndBagFee='" + currentBooksAndBagDueFee + "' where sno='" + stdNo + "'";

		LOGGER.info(booksAndBag);

		int updatedBooksAndBagDueFee = jdbcTemplate.update(booksAndBag);
		
		String totalBooksAndBagDueFee = String.valueOf(updatedBooksAndBagDueFee);
		
		
		return admission;
		
	}

}
