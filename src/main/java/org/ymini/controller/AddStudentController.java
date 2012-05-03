package org.ymini.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

import org.ymini.model.Student;
import org.ymini.model.StudentDetails;

/**
 * @author Jeyakaran
 *
 */
public class AddStudentController extends HttpServlet {

	StudentDetails studentDetails = new StudentDetails();

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("AddStudentController : Post");

		Student student = new Student();

		student.setName(request.getParameter("name"));
		student.setAddress(request.getParameter("address"));
		student.setGrade(Integer.parseInt(request.getParameter("grade")));
		student.setParentName(request.getParameter("parentName"));

		System.out.println(student.getName() + " " + student.getAddress() + " "
				+ student.getGrade() + " " + student.getParentName());

		studentDetails.getStudents().add(student);
		request.setAttribute("studentDetailBean", studentDetails);

		request.getRequestDispatcher("student_details.jsp").forward(request,
				response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("AddStudentController : Get");

		request.getRequestDispatcher("add_student.jsp").forward(request,
				response);

	}
}
