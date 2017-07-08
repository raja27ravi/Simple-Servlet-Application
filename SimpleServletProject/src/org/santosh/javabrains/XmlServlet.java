package org.santosh.javabrains;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/xmlServletPath")

public class XmlServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out  = response.getWriter();
		String userName = request.getParameter("userName");
		out.println("Hello User! from GET Method "+ " " + userName);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out  = response.getWriter();
		String userName = request.getParameter("userName");
		String fullName = request.getParameter("fullName");
		out.println("Hello User! from POST Method "+ " " + userName + "!" + "We know your Full Name is : " + fullName
				);
		String prof  = request.getParameter("prof");
		System.out.println("***********************"+ prof);
		out.println("You are a " + prof);
		//String location  = request.getParameter("location");
		String [] location = request.getParameterValues("location");
		System.out.println("***********************"+ location);
		out.println("You are at " + location.length + "places");
		for(int i=0;i<location.length;i++)
		{
			out.println(location[i]);
		}
		
	}

}
