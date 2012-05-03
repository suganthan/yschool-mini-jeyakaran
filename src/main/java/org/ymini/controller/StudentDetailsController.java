package org.ymini.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

import org.ymini.model.Student;
import org.ymini.model.StudentDetails;

public class StudentDetailsController extends HttpServlet {

	StudentDetails studentDetails = new StudentDetails();

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("StudentDetailsController : Post");

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("StudentDetailsController : Get");

		request.setAttribute("studentDetailBean", studentDetails);

		request.getRequestDispatcher("student_details.jsp").forward(request,
				response);
	}
}
