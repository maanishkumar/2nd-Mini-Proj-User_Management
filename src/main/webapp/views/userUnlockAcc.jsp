<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unlock Account</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	function checkPasswordMatch() {
		var password = $("#txtNewPassword").val();
		var confirmPassword = $("#txtConfirmPassword").val();
		if (password != confirmPassword)
			$("#CheckPasswordMatch").html("Passwords does not match!");
		else
			$("#CheckPasswordMatch").html("Passwords match..");
	}
	$(document).ready(function() {
		$("#txtConfirmPassword").keyup(checkPasswordMatch);
	});
</script>
</head>

<body>
	<h3>Unlock Your Account Here</h3>



	<form:form action="unlockUserAcc" modelAttribute="unlockUser"
		method="post">
	
			<p style="color: Blue">
				Your Email :
				<form:input path="email" readonly="true"/>
			</p>

			<div>
				Enter temporary password:
				<form:password path="tempPwd" placeholder="Temporary password" />
				<font style="color: red">${errMsg}</font>

			</div>
			<br>
			<div>
				Enter new password:
				<form:password id="txtNewPassword" path="newPwd"
					placeholder="New password" />
			</div>
			<br>
			<div>
				Confirm new password:
				<form:password id="txtConfirmPassword" path="confirmPwd"
					placeholder="Confirm new password" />
				<span style="color: red;" id="CheckPasswordMatch"></span>
			</div>
			<br></br>
			<div>
				<input type="submit" value="Unlock" onClick="checkPasswordMatch();" />
			</div>
		
	</form:form>
</body>
</html>