function validateForm() {
	var name = document.forms["form"]["name"].value;
	var grade = document.forms["form"]["grade"].value;
	if (name == null || name == "") {
		alert("Student Name may not be null/empty.");
		return false;
	}
	if (grade == 0) {
		alert("Please select a Grade.");
		return false;
	}
	return true;
}