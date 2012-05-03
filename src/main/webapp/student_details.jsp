<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View Students</title>
<jsp:useBean id="studentDetailBean" scope="session"
	class="org.ymini.model.StudentDetails" />
</head>

<body>
	<form name="form" method="post" action=""
		onsubmit="return validateForm();">
		<table width="518" border="1">
			<tr>
				<td width="110">Name</td>
				<td width="136">Address</td>
				<td width="52">Grade</td>
				<td width="163">Parent Name</td>
			</tr>
			<%
				for (int i = 0; i < studentDetailBean.getStudents().size(); i++) {
			%>
			<tr>
				<td><%=studentDetailBean.getStudents().get(i).getName()%></td>
				<td><%=studentDetailBean.getStudents().get(i).getAddress()%></td>
				<td><%=studentDetailBean.getStudents().get(i).getGrade()%></td>
				<td><%=studentDetailBean.getStudents().get(i)
						.getParentName()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
</body>
</html>