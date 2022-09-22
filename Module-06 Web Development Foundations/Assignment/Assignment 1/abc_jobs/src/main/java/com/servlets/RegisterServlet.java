package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.RegisterBean;
import com.dao.RegisterDao;

public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String first_name = req.getParameter("first_name");
		String last_name = req.getParameter("last_name");
		String city = req.getParameter("city");
		String country = req.getParameter("country");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		RegisterBean register = new RegisterBean(first_name, last_name, city, country, email, password);
		
		RegisterDao dao = new RegisterDao();
		int rows;
		try {
			rows = dao.registerUser(register);
			String infoMessage = null;
			if(rows==0){
				infoMessage="Sorry, an error occurred!";
			}
			else{
				infoMessage="User registered successfully!";
				System.out.println(infoMessage);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		resp.sendRedirect("thankyou");
	}
}
