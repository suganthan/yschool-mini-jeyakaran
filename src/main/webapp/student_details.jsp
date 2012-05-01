<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>
<style type="text/css">
<!--
.mandatory {
	color: #F00;
}
-->
</style>
</head>
<body>
	<form name="form" method="post" action="studentDetails">
		<jsp:useBean id="studentBean" class="org.ymini.model.Student"
			scope="session" >
			
			</jsp:useBean>
		<table width="490" border="0">
			<tr>
				<td colspan="2"><jsp:getProperty name='studentBean'
						property='validateMessage' /> <%=studentBean.getName() %></td>
			</tr>
			<tr>
				<td width="102">Student Name :</td>
				<td width="321"><input type="text" name="name" id="name"
					value="<jsp:getProperty name='studentBean' property='name'/>">
					<span class="mandatory">*</span>
				</td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><textarea name="address" id="address" cols="45" rows="5"><jsp:getProperty
							name='studentBean' property='address' /></textarea></td>
			</tr>
			<tr>
				<td>Grade :</td>
				<td><select name="grade" id="grade" >
						<option value="0">Select ..</option>
						<%
							for (int i = 1; i < 14; i++) {
								if (i == studentBean.getGrade()) {
						%>
						<option value="<%=i%>" selected="selected"><%=i%></option>
						<%
							} else {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
							}
							}
						%>


				</select> <span class="mandatory">*</span>
				</td>
			</tr>
			<tr>
				<td>Parent Name :</td>
				<td><input type="text" name="parentName" id="parentName"
					value="<jsp:getProperty name='studentBean' property='parentName'/>">
				</td>
			</tr>
			<tr>
				<td colspan="2"><span class="mandatory">*</span> Mandatory
					fields. Please make sure you have entered all the mandatory fields.</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="add" id="add" value="Add">
					<input type="reset" name="clear" id="clear" value="Clear">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>