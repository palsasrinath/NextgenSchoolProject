package com.mankraft.nextgen.model;

import java.io.Serializable;

import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

public class Admission implements Serializable {

	private static final long serialVersionUID = 1L;

	static final Logger LOGGER = Logger.getLogger(Admission.class);

	private String sno;
	private String regNo;
	private String branchName;
	private String className;
	private String dateOfAdm;
	private String gender;
	private String age;
	private String firstName;
	private String dateOfBirth;
	private String nationality;
	private String motherTongue;
	private String place;
	private String state;
	private String fatherName;
	private String motherName;
	private String fatherOccupation;
	private String motherOccupation;
	private String residenceTelNo;
	private String fatherOffNo;
	private String fatherMob;
	private String motherOffNo;
	private String motherMob;
	private String guardianNo;
	private String email;
	private String address;
	private String totalFee;
	private String paidFee;
	private String transportRequirement;
	private String transportFee;
	private String transportPaidFee;
	private String dayCareRequirement;
	private String dayCareFee;
	private String dayCarePaidFee;
	private String uniformRequirement;
	private String uniformFee;
	private String uniformPaidFee;
	private String booksAndBagRequirement;
	private String booksAndBagFee;
	private String booksAndBagPaidFee;
	private String teachersToStudents;
	private String previousSchooling;
	private String lastSchool;
	private String lastSchoolAddress;
	private MultipartFile imageFile;
	private String profileFilePath; 
	private String currentTutionDueFee;
	private String currentTransportDueFee;
	private String currentDayCareDueFee;
	private String currentUniformDueFee;
	private String currentBooksAndBagDueFee;

	public String getCurrentTutionDueFee() {
		return currentTutionDueFee;
	}

	public void setCurrentTutionDueFee(String currentTutionDueFee) {
		this.currentTutionDueFee = currentTutionDueFee;
	}

	public String getCurrentTransportDueFee() {
		return currentTransportDueFee;
	}

	public void setCurrentTransportDueFee(String currentTransportDueFee) {
		this.currentTransportDueFee = currentTransportDueFee;
	}

	public String getCurrentDayCareDueFee() {
		return currentDayCareDueFee;
	}

	public void setCurrentDayCareDueFee(String currentDayCareDueFee) {
		this.currentDayCareDueFee = currentDayCareDueFee;
	}

	public String getCurrentUniformDueFee() {
		return currentUniformDueFee;
	}

	public void setCurrentUniformDueFee(String currentUniformDueFee) {
		this.currentUniformDueFee = currentUniformDueFee;
	}

	public String getCurrentBooksAndBagDueFee() {
		return currentBooksAndBagDueFee;
	}

	public void setCurrentBooksAndBagDueFee(String currentBooksAndBagDueFee) {
		this.currentBooksAndBagDueFee = currentBooksAndBagDueFee;
	}

	public String getTransportPaidFee() {
		return transportPaidFee;
	}

	public void setTransportPaidFee(String transportPaidFee) {
		this.transportPaidFee = transportPaidFee;
	}

	public String getDayCarePaidFee() {
		return dayCarePaidFee;
	}

	public void setDayCarePaidFee(String dayCarePaidFee) {
		this.dayCarePaidFee = dayCarePaidFee;
	}

	public String getUniformPaidFee() {
		return uniformPaidFee;
	}

	public void setUniformPaidFee(String uniformPaidFee) {
		this.uniformPaidFee = uniformPaidFee;
	}

	public String getBooksAndBagPaidFee() {
		return booksAndBagPaidFee;
	}

	public void setBooksAndBagPaidFee(String booksAndBagPaidFee) {
		this.booksAndBagPaidFee = booksAndBagPaidFee;
	}

	public MultipartFile getImageFile() {
		return imageFile;
	}

	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}

	public String getProfileFilePath() {
		return profileFilePath;
	}

	public void setProfileFilePath(String profileFilePath) {
		this.profileFilePath = profileFilePath;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getTransportRequirement() {
		return transportRequirement;
	}

	public void setTransportRequirement(String transportRequirement) {
		this.transportRequirement = transportRequirement;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}

	public String getRegNo() {
		return regNo;
	}

	public String getDateOfAdm() {
		return dateOfAdm;
	}

	public void setDateOfAdm(String dateOfAdm) {
		this.dateOfAdm = dateOfAdm;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getMotherTongue() {
		return motherTongue;
	}

	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTransportFee() {
		return transportFee;
	}

	public void setTransportFee(String transportFee) {
		this.transportFee = transportFee;
	}

	public String getDayCareFee() {
		return dayCareFee;
	}

	public void setDayCareFee(String dayCareFee) {
		this.dayCareFee = dayCareFee;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getTeachersToStudents() {
		return teachersToStudents;
	}

	public void setTeachersToStudents(String teachersToStudents) {
		this.teachersToStudents = teachersToStudents;
	}

	public String getPreviousSchooling() {
		return previousSchooling;
	}

	public void setPreviousSchooling(String previousSchooling) {
		this.previousSchooling = previousSchooling;
	}

	public String getLastSchool() {
		return lastSchool;
	}

	public void setLastSchool(String lastSchool) {
		this.lastSchool = lastSchool;
	}

	public String getLastSchoolAddress() {
		return lastSchoolAddress;
	}

	public void setLastSchoolAddress(String lastSchoolAddress) {
		this.lastSchoolAddress = lastSchoolAddress;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getFatherOccupation() {
		return fatherOccupation;
	}

	public void setFatherOccupation(String fatherOccupation) {
		this.fatherOccupation = fatherOccupation;
	}

	public String getMotherOccupation() {
		return motherOccupation;
	}

	public void setMotherOccupation(String motherOccupation) {
		this.motherOccupation = motherOccupation;
	}

	public String getFatherOffNo() {
		return fatherOffNo;
	}

	public void setFatherOffNo(String fatherOffNo) {
		this.fatherOffNo = fatherOffNo;
	}

	public String getFatherMob() {
		return fatherMob;
	}

	public void setFatherMob(String fatherMob) {
		this.fatherMob = fatherMob;
	}

	public String getMotherOffNo() {
		return motherOffNo;
	}

	public void setMotherOffNo(String motherOffNo) {
		this.motherOffNo = motherOffNo;
	}

	public String getMotherMob() {
		return motherMob;
	}

	public void setMotherMob(String motherMob) {
		this.motherMob = motherMob;
	}

	public String getGuardianNo() {
		return guardianNo;
	}

	public void setGuardianNo(String guardianNo) {
		this.guardianNo = guardianNo;
	}

	public String getTotalFee() {
		return totalFee;
	}

	public void setTotalFee(String totalFee) {
		this.totalFee = totalFee;
	}

	public String getPaidFee() {
		return paidFee;
	}

	public void setPaidFee(String paidFee) {
		this.paidFee = paidFee;
	}

	public String getDayCareRequirement() {
		return dayCareRequirement;
	}

	public void setDayCareRequirement(String dayCareRequirement) {
		this.dayCareRequirement = dayCareRequirement;
	}

	public String getUniformRequirement() {
		return uniformRequirement;
	}

	public void setUniformRequirement(String uniformRequirement) {
		this.uniformRequirement = uniformRequirement;
	}

	public String getUniformFee() {
		return uniformFee;
	}

	public void setUniformFee(String uniformFee) {
		this.uniformFee = uniformFee;
	}

	public String getBooksAndBagRequirement() {
		return booksAndBagRequirement;
	}

	public void setBooksAndBagRequirement(String booksAndBagRequirement) {
		this.booksAndBagRequirement = booksAndBagRequirement;
	}

	public String getBooksAndBagFee() {
		return booksAndBagFee;
	}

	public void setBooksAndBagFee(String booksAndBagFee) {
		this.booksAndBagFee = booksAndBagFee;
	}

	public String getResidenceTelNo() {
		return residenceTelNo;
	}

	public void setResidenceTelNo(String residenceTelNo) {
		this.residenceTelNo = residenceTelNo;
	}

}
