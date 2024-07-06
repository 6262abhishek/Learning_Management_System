package com.uniquedeveloper.registration;
import java.sql.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet rs;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		if(uemail == null || uemail.equals("")) {
				request.setAttribute("status", "invalidEmail");
				dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
		if(upwd == null || upwd.equals("")) {
			request.setAttribute("status", "invalidPassword");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?useSSL=false","root","nishant98");
			PreparedStatement pst = con.prepareStatement("select * from users where uemail = ? and upwd = ?");
			pst.setString(1, uemail);
			pst.setString(2, upwd);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				session.setAttribute("name", rs.getString("uname"));
				session.setAttribute("email", rs.getString("uemail"));
				session.setAttribute("contact", rs.getString("umobile"));
				session.setAttribute("sname", rs.getString("stname"));
				session.setAttribute("t_id", rs.getString("t_id"));
				dispatcher = request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			
		}
		
	}

}
