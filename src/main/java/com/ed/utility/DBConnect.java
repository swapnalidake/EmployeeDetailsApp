package com.ed.utility;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/employeedetails";
			String username = "root";
			String password = "";
			con = DriverManager.getConnection(url,username,password);
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return con;
	}
}