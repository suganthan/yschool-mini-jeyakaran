package org.ymini.model;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Jeyakaran
 *
 */
public class StudentDetails {
	private List<Student> students;

	public StudentDetails() {
		students = new ArrayList<Student>();

		Student student01 = new Student();
		student01.setName("Student 01");
		student01.setAddress("20,School road");
		student01.setGrade(1);
		student01.setParentName("Parent 01");

		students.add(student01);

		Student student02 = new Student();
		student02.setName("Student 02");
		student02.setAddress("20,Temple road");
		student02.setGrade(2);
		student02.setParentName("Parent 02");

		students.add(student02);
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

}
