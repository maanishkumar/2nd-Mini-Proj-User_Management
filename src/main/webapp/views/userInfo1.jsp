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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(
			function(event) {
				$("#countryId").change(
						function() {

							$("#stateId").find('option').remove();
							$('<option>').val('').text('Choose...').appendTo(
									"#stateId");

							$("#cityId").find('option').remove();
							$('<option>').val('').text('Choose...').appendTo(
									"#cityId");

							var countryId = $("#countryId").val();
							$.ajax({
								type : "GET",
								url : "getStates?cid=" + countryId,
								success : function(res) {
									$.each(res,
											function(stateId, stateName) {
												$('<option>').val(stateId)
														.text(stateName)
														.appendTo("#stateId");
											});
								}
							});
						});

				$("#stateId").change(
						function() {

							$("#cityId").find('option').remove();
							$('<option>').val('').text('Choose...').appendTo(
									"#cityId");

							var stateId = $("#stateId").val();
							$.ajax({
								type : "GET",
								url : "getCities?sid=" + stateId,
								success : function(data) {
									$.each(data, function(cityId, cityName) {
										$('<option>').val(cityId)
												.text(cityName).appendTo(
														"#cityId");
									});
								}
							});
						});

			});
</script>

<title>Sign Up</title>
</head>

<body>
	<div class="container-fluid">


		<nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
			<a class="navbar-brand" href="/">Fit-India</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</nav>
	</div>

	<div class="text-center ">
		<br></br>
		<!-- 		<h4 >Register here,to join the Fit-India -->
		<!-- 			movement</h4> -->

		<p>
			<font style="color: red"><em>${msg}</em></font>
		</p>


	</div>

	<div class=" ">
		<form:form action="register" modelAttribute="user" method="POST"
			class="container ">

			<div class="form-row justify-content-end">
				<div class="col-md-3 mb-3">
					<label>First name</label>
					<form:input path="userFirstName" placeholder="First name"
						class="form-control" />
				</div>
				<div class="col-md-3 mb-3">
					<label>Last name</label>
					<form:input path="userLastName" placeholder="Last name"
						class="form-control" />
				</div>
			</div>

			<div class="form-row justify-content-end">

				<div class="col-md-3 mb-3">

					<label>Email Address</label>
					<form:input path="userEmail" placeholder="Email ID"
						class="form-control" />

				</div>
				<div class="col-md-3 mb-3">
					<label>Phone no</label>
					<form:input path="userPhno" placeholder="Phone no"
						class="form-control" />

				</div>
			</div>

			<div class="form-row justify-content-end">

				<div class="col-md-3 mb-3">

					<label>Birth-Day!</label>
					<form:input path="userDob" placeholder="Birth-Day"
						class="form-control" />

				</div>

				<div class="col-md-3 mb-3 ">
					<p>Gender</p>
					<form:radiobutton path="userGender" value="M" id="gender" />
					Male
					<form:radiobutton path="userGender" value="F" id="gender" />
					Female
				</div>


			</div>
			<div class="form-row justify-content-end">
				<div class="col-md-2 mb-3">
					<label>Country</label>
					<form:select class="custom-select" id="countryId"
						path="userCountry">
						<form:option value="">Choose...</form:option>
						<form:options items="${countryMap }" />

					</form:select>
				</div>

				<div class="col-md-2 mb-3">
					<label>State</label>
					<form:select class="custom-select" id="stateId" path="userState">
						<form:option value="">Choose...</form:option>

					</form:select>
				</div>

				<div class="col-md-2 mb-3">
					<label>City</label>
					<form:select class="custom-select" id="cityId" path="userCity">
						<form:option value="">Choose...</form:option>
					</form:select>
				</div>
			</div>
			<div class=" row justify-content-end">
				<button class="btn btn-md btn-primary  col-md-3 mr-sm-2" type="submit">Create
					Account</button>
					<a class="btn btn-outline-success col-md-3  my-sm-0" href="/loadSignInForm"
				role="button">Login</a>
			</div>


		</form:form>

	</div>



	<hr class="featurette-divider">

	<!-- FOOTER -->
	<div class="container">
		<footer class="container">
			<p class="float-right">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; 2020-2021 @ Fit-India, Inc. &middot; <a href="#">Privacy</a>
				&middot; <a href="#">Terms</a>
			</p>
		</footer>
	</div>




</body>

</html>