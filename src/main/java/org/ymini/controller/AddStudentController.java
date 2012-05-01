package org.ymini.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

import org.ymini.model.Student;

public class AddStudentController extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("AddStudentController : Post");

		Student student = new Student();

		student.setName("Jeya");
		student.setAddress(request.getParameter("address"));
		student.setGrade(Integer.parseInt(request.getParameter("grade")));
		student.setParentName(request.getParameter("parentName"));

		request.setAttribute("studentBean", student);

		System.out.println(student.getName() + " " + student.getAddress() + " "
				+ student.getGrade() + " " + student.getParentName());

		request.getRequestDispatcher("student_details.jsp")
				.forward(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("AddStudentController : Get");

	}
}
