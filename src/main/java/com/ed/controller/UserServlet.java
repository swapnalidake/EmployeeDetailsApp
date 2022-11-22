package com.ed.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ed.dao.UserDao;
import com.ed.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password1 = request.getParameter("passwd1");
		String password2 = request.getParameter("passwd2");
		
		String action = request.getParameter("action");
		
		if(action!=null && action.equals("adduser")) {
		
		if(email!=null && password1.equals(password2)) {
			//insert the user details in the database
			boolean b = new UserDao().addUser(email, password1);
			
			if(b) {
				response.sendRedirect("index.jsp");
			}
			else {
				request.setAttribute("errorMsg", 
						"User Already Exists!");
				request.getRequestDispatcher("adduser.jsp").include(request, response);
			}
		}
		else {
			//display the error message
			request.setAttribute("errorMsg", 
					"Password and Confirm Password Does Not Match!");
			request.getRequestDispatcher("adduser.jsp").include(request, response);
		}
		
		}
		
		else if(action!=null && action.equals("updateuser")) {
			HttpSession session = request.getSession();
			String name = request.getParameter("name");
			String contact = request.getParameter("contact");
			int id = Integer.parseInt(request.getParameter("id"));
			
			//Here we are creating new user object, 
			//because session contains user object but with old value
			//which we will change with this new value
			User user = new User();
			user.setId(id);
			user.setName(name);
			user.setEmail(email);
			user.setContact(contact);
			user.setPassword(password1);
			
			boolean b = new UserDao().updateUser(user);
			
			if(b) {
				session.setAttribute("user",user);
				response.sendRedirect("index.jsp");
			}
		}
	}
}
