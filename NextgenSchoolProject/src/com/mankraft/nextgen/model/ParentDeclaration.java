package com.mankraft.nextgen.model;

import java.io.Serializable;

public class ParentDeclaration  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String parent;
	private String student;
	private String photos;
	private String records;
   private String birth;
public String getParent() {
	return parent;
}
public void setParent(String parent) {
	this.parent = parent;
}
public String getStudent() {
	return student;
}
public void setStudent(String student) {
	this.student = student;
}
public String getPhotos() {
	return photos;
}
public void setPhotos(String photos) {
	this.photos = photos;
}
public String getRecords() {
	return records;
}
public void setRecords(String records) {
	this.records = records;
}
public String getBirth() {
	return birth;
}
public void setBirth(String birth) {
	this.birth = birth;
}
   

}
