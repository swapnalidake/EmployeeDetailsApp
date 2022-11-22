package com.ed.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.Statement;


/**
 * Servlet implementation class EmployeedetailslistServlet
 */
@WebServlet("/EmployeedetailslistServlet")
public class EmployeedetailslistServlet extends HttpServlet {
	private ServletConfig config;

	  //Setting JSP page

	  String page="Employeedetailslist.jsp";



	  public void init(ServletConfig config)

	  throws ServletException{

	 this.config=config;
	  }
	
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter();

		  //Establish connection to MySQL database

		 String url = "jdbc:mysql://localhost:3306/employeedetails";
			String username = "root";
			String password = "";
			
		  Connection connection
		= null;

		  ResultSet rs;

		  response.setContentType("text/html");

		  List dataList
		= new ArrayList(); 

		  try {

		 // Load the database driver

		  Class.forName("com.mysql.jdbc.Driver");

		  // Get a Connection to the database

		  connection = DriverManager.getConnection(url,username,password);

		  //Select the data from the database

		  String sql = "select * from employee";

		  java.sql.Statement s = connection.createStatement();

		  PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs1 = ps.executeQuery();

		  while (rs1.next ()){

		  //Add records into data list

		  dataList.add(rs1.getInt("empNo"));

		  dataList.add(rs1.getString("employee"));

		  }

		  rs1.close ();

		  s.close ();

		  }catch(Exception e){

		  System.out.println("Exception is ;"+e);

		  }

	//	  request.setAttribute("EmpAddress",EmpAddressList);

		  //Disptching request

		  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

		  if (dispatcher != null){

		  dispatcher.forward(request, response);

		  } 

		  }

		
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
