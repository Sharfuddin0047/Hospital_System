package com.user.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DbConnect;
import com.entity.User;

@WebServlet(value="/user_register")
public class UserRegister extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String fullName=req.getParameter("name");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			User u = new User(fullName, email, password);
			
			UserDao dao = new UserDao(DbConnect.getConn());
			HttpSession session = req.getSession();
			
			boolean f=dao.register(u);
			
			if(f) {
				session.setAttribute("sucmsg", "Registered Successfully");
				resp.sendRedirect("signup.jsp");
			} else {
				session.setAttribute("errMsg", "Something went wrong");
				resp.sendRedirect("signup.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
