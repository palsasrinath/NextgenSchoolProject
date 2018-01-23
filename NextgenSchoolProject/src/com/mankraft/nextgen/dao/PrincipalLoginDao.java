package com.mankraft.nextgen.dao;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class PrincipalLoginDao {
	public static boolean validate(String email, String password) {
		boolean status = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/nextgenschool", "root", "devInfoSec@999");

			java.sql.PreparedStatement ps =  con.prepareStatement("select count(*) from t_principal_register where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			//ps.setString(3, branchName);

			java.sql.ResultSet rs =  ps.executeQuery();
			status = rs.next();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
}
