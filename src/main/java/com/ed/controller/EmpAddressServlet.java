package com.ed.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ed.dao.EmpAddressDao;
import com.ed.model.EmpAddress;

/**
 * Servlet implementation class EmpAddressServlet
 */
@WebServlet("/EmpAddressServlet")
public class EmpAddressServlet extends HttpServlet {
	private EmpAddressDao employeeDao = new EmpAddressDao();
	
	
	Connection con;
	PreparedStatement pst;
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse rsp) throws ServletException, IOException {
	
		rsp.setContentType("text/html");
		PrintWriter out=rsp.getWriter();
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedetails" ,"root","") ;
			
			String EmpNo = req.getParameter("empNo");
			String EmpName = req.getParameter("empName");
			 String Street = req.getParameter("street");
			 String City = req.getParameter("city");
			 String State = req.getParameter("state");
			String Code = req.getParameter("code");
			
		  pst= con.prepareStatement("insert into employee(empNo,empName,street,city,state,code) values(?,?,?,?,?,?)");
		
		  pst.setString(1, EmpNo);
		  pst.setString(2, EmpName);
		  pst.setString(3, Street);
		  pst.setString(4, City);
		  pst.setString(5, State);
		  pst.setString(6, Code);

		  
		  pst.executeUpdate();
		  out.println("<font color='green'> <h1>New Record Successfully Added </h1> </font>");
		  
				
		  
		} catch (ClassNotFoundException e) {
			
		} catch (SQLException e) {
			out.println("<font color='red'> Record Failed</font>");
		}
	
	}
}
