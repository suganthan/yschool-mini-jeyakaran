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
<script type="text/javascript" src="add_student.js"></script>

</head>
<body>
	<form name="form" method="post" action="addStudent"
		onsubmit="return validateForm();">

		<table width="490" border="0">
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td width="158">Student Name :</td>
				<td width="322"><input type="text" name="name" id="name"
					value=""> <span class="mandatory">*</span>
				</td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><textarea name="address" id="address" cols="45" rows="5"></textarea>
				</td>
			</tr>
			<tr>
				<td>Grade :</td>
				<td><select name="grade" id="grade">
						<option value="0">Select ..</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
				</select> <span class="mandatory">*</span>
				</td>
			</tr>
			<tr>
				<td>Parent Name :</td>
				<td><input type="text" name="parentName" id="parentName"
					value="">
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