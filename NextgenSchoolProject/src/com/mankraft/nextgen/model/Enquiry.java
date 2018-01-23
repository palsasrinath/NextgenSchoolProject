package com.mankraft.nextgen.model;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Enquiry implements Serializable {

	private String sno;
	private String date;
	private String firstName;
	private String lastName;
	private String dateOfBirth;
	private String age;
	private String gender;
	private String nationality;
	private String motherTongue;
	private String place;
	private String state;
	private String branchName;
	private String className;
	private String fatherName;
	private String motherName;
	private String fatherOccupation;
	private String motherOccupation;
	private String residenceTelNo;
	private String email;
	private String fatherOffNo;
	private String fatherMob;
	private String motherOffNo;
	private String motherMob;
	private String guardianNo;
	private String address;
	private String previousSchooling;
	private String lastSchool;
	private String lastSchoolAddress;
	private String aboutSchool;
	private String others;
	private String admissionStatus;
	private MultipartFile imageFile;
	private String profileFilePath;
	
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
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

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
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

	public String getResidenceTelNo() {
		return residenceTelNo;
	}

	public void setResidenceTelNo(String residenceTelNo) {
		this.residenceTelNo = residenceTelNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPreviousSchooling() {
		return previousSchooling;
	}

	public void setPreviousSchooling(String previousSchooling) {
		this.previousSchooling = previousSchooling;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public String getAboutSchool() {
		return aboutSchool;
	}

	public void setAboutSchool(String aboutSchool) {
		this.aboutSchool = aboutSchool;
	}

	public String getAdmissionStatus() {
		return admissionStatus;
	}

	public void setAdmissionStatus(String admissionStatus) {
		this.admissionStatus = admissionStatus;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	/*
	 * public String getTransportRequirement() { return transportRequirement; }
	 * 
	 * public void setTransportRequirement(String transportRequirement) {
	 * this.transportRequirement = transportRequirement; } public String
	 * getDayCareRequirement() { return dayCareRequirement; }
	 * 
	 * public void setDayCareRequirement(String dayCareRequirement) {
	 * this.dayCareRequirement = dayCareRequirement; }
	 * 
	 * public String getUniformRequirement() { return uniformRequirement; }
	 * 
	 * public void setUniformRequirement(String uniformRequirement) {
	 * this.uniformRequirement = uniformRequirement; }
	 * 
	 * public String getBooksAndBagRequirement() { return booksAndBagRequirement; }
	 * 
	 * public void setBooksAndBagRequirement(String booksAndBagRequirement) {
	 * this.booksAndBagRequirement = booksAndBagRequirement; }
	 * 
	 * public String getTransportFee() { return transportFee; }
	 * 
	 * public void setTransportFee(String transportFee) { this.transportFee =
	 * transportFee; }
	 */

	public String getGuardianNo() {
		return guardianNo;
	}

	public void setGuardianNo(String guardianNo) {
		this.guardianNo = guardianNo;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getLastSchoolAddress() {
		return lastSchoolAddress;
	}

	public void setLastSchoolAddress(String lastSchoolAddress) {
		this.lastSchoolAddress = lastSchoolAddress;
	}

	public String getLastSchool() {
		return lastSchool;
	}

	public void setLastSchool(String lastSchool) {
		this.lastSchool = lastSchool;
	}

	public String getProfileFilePath() {
		return profileFilePath;
	}

	public void setProfileFilePath(String profileFilePath) {
		this.profileFilePath = profileFilePath;
	}

	public MultipartFile getImageFile() {
		return imageFile;
	}

	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}

}
