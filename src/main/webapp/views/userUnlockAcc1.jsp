<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Unlock account</title>
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
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
			<a class="navbar-brand" href="/">Fit-India</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</nav>
		
		<div class="text-left">
			<br> <br>
			<h4>Unlock your account here</h4>

		</div>

		<hr>
		<div>
			<form:form class="form-signin" action="unlockUserAcc"
				modelAttribute="unlockUser" method="POST">

				<label>Email ID</label>
				<form:input path="email" readonly="true" placeholder="Email address"
					class="form-control col-md-5 mb-1" />
				<br>
				<label>Enter temporary password</label>
				<form:password path="tempPwd" placeholder="Temporary password"
					class="form-control col-md-5 mb-1" />
				<font style="color: red">${errMsg}</font>
				<br>

				<label>Enter new password</label>
				<form:password id="txtNewPassword" path="newPwd"
					placeholder="New password" class="form-control col-md-5 mb-1 " />
				<br>
				<label>Confirm new password</label>
				<form:password id="txtConfirmPassword" path="confirmPwd"
					placeholder=" Confirm new password"
					class="form-control col-md-5 mb-1 " />
				<font style="color: red;" id="CheckPasswordMatch"></font>
				<br>
<br>
				<button
					class="btn btn-md btn-primary btn-block form-control col-md-2 mb-3"
					type="submit" onClick="checkPasswordMatch()">Unlock
					Account</button>
				<br>

			</form:form>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
</body>
</html>