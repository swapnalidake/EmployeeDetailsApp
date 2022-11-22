package com.ed.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ed.model.EmpAddress;
import com.ed.utility.DBConnect;

public class EmpAddressDao {
	private static final String String = null;
	Connection con = DBConnect.getConnection();
	
	public List<EmpAddress> getDetails(){
		List<EmpAddress> eList = new ArrayList<EmpAddress>();
		
		String sql = "select * from employee";
		
		try {
			Statement stat = con.createStatement();
			ResultSet rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				int empNo = 0;
				EmpAddress e = new EmpAddress(sql, empNo, sql, sql, sql, sql);
				e.setEmpName(rs.getString("EmpName"));
				e.setEmpNo(rs.getInt("EmpNo"));
				e.setStreet(rs.getString("Street"));
				e.setCity(rs.getString("City"));
				e.setState(rs.getString("State"));
				e.setCode(rs.getString("Code"));
				eList.add(e);	
			}			
			return eList;
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return null;
	}
	public boolean insertRecord(String empName, int empNo, String street, String city, String state, int code)
	{
		String sql = "insert into employee(empName,empNo,street,city,state,code) values(?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, empName);
			ps.setInt(2, empNo);
			ps.setString(3, street);
			ps.setString(4, city);
			ps.setString(5, state);
			ps.setInt(6, code);
			
			int i = ps.executeUpdate();
			
			if(i>0)
				return true;
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return false;
	}
	
	public boolean deleteRecord(String empName) {
		String sql = "delete from employee where empName = ?";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, empName);
			
			int i = ps.executeUpdate();
			
			if(i>0)
				return true;
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
	public EmpAddress searchRecord(String empName) {	
		String sql = "select * from employee where empName = ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, empName);
			
			ResultSet rs = ps.executeQuery();
			EmpAddress e = new EmpAddress(sql, 0, sql, sql, sql, sql);
			if(rs.next()) {
				e.setEmpName(rs.getString("EmpName"));
				e.setEmpNo(rs.getInt("EmpNo"));
				e.setStreet(rs.getString("Street"));
				e.setCity(rs.getString("City"));
				e.setState(rs.getString("State"));
				e.setCode(rs.getString("Code"));
				return e;
				
			}				
		}catch(Exception e){
			System.out.println(e.getMessage());
	
}		
		return null;
	}
	
	public boolean updateRecord(EmpAddress e) {
		String sql = "update employee set empName=?, empNo=?, street=?, city=?, state=?, code=? where empName=?";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, e.getEmpName());
			ps.setInt(2, e.getEmpNo());
			ps.setString(3, e.getStreet());
			ps.setString(4, e.getCity());
			ps.setString(5, e.getState());
			ps.setString(6, e.getCode());
			
			int i = ps.executeUpdate();
			
			if(i>0)
				return true;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return false;
	}
	public static void registerEmpAddress(EmpAddress empaddress) {
		// TODO Auto-generated method stub
		
	}
	
	
	}

			
	


