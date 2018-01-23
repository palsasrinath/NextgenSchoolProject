package com.mankraft.nextgen.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mankraft.nextgen.model.TeacherRegister;

public class TeacherDAO {

	private static final long serialVersionUID = 1L;
	public static PreparedStatement pst = null;
	public static Connection con = null;
	public static int save(TeacherRegister ts) throws SQLException {
		int i = 0;
		try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nextgenschool", "root", "devInfoSec@999");
	pst = con.prepareStatement(
			"insert into t_teacher_register(first_name,last_name,email,password,conformpassword,mobileNumber,gender,address,qualification,city,state) values(?,?,?,?,?,?,?,?,?,?,?)");
	
	pst.setString(1, ts.getFirstName());
	pst.setString(2, ts.getLastName());
	pst.setString(3, ts.getEmail());
	pst.setString(4, ts.getPassword());
	pst.setString(5, ts.getConformpassword());
	pst.setString(6, ts.getMobile());
	pst.setString(7, ts.getGender());
	pst.setString(8, ts.getAddress());
	pst.setString(9, ts.getQualification());
	pst.setString(10,ts.getCity());
	pst.setString(11,ts.getState());
	i = pst.executeUpdate();

	if (i == 1) {
		System.out.println("successfully updated");
	} else {

		System.out.println("Record Not Inserted due to database connectivity issues");

	}

} catch (Exception e) {
	System.out.println(e);
}

finally {
	con.close();
	pst.close();
}
return i;
}
}
