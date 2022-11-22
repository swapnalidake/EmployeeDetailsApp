package com.ed.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ed.model.User;
import com.ed.utility.DBConnect;


public class UserDao {
	Connection con = DBConnect.getConnection();
	
	public boolean addUser(String email, String password) {
		String sql = "insert into user(email,password) values(?,?)";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			int i = ps.executeUpdate();
			if(i>0) {
				return true;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public List<User> getUserList(){
		String sql = "select * from User";
		List<User> ul = new ArrayList<User>();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setContact(rs.getString("contact"));
				user.setPassword(rs.getString("password"));
				
				ul.add(user);
			}
			
			return ul;
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public User userLogin(String email,String password) {
		String sql = "select * from user where email=? and password=?";
		User user = new User();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setContact(rs.getString("contact"));
				user.setPassword(rs.getString("password"));
			}			
			return user;
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean updateUser(User u) {
		String sql = "update user set name=?, email=?, contact=?, password=? where id=?";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getContact());
			ps.setString(4, u.getPassword());
			ps.setInt(5, u.getId());
			
			int i = ps.executeUpdate();
			
			if(i>0) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
