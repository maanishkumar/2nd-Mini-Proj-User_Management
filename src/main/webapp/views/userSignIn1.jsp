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

<title>Sign In</title>
</head>
<style>
#dm {
	height: 100%;
	width: 100%;
}

#d1 {
	height: 15%;
	width: 100%;
}

#d2 {
	height: 70%;
	width: 100%;
}

#d2a {
	width: 70%;
	height: 100%;
	float: left;
}

#d2b {
	width: 30%;
	height: 100%;
	float: left;
}

#d3 {
	width: 100%;
	height: 15%;
	clear: both;
}
</style>
<body>
	<div id="dm" class="container-fluid">
		<!-- header -->
		<div id="d1">

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
		<br> <br>
		<!-- main body -->


		<div id="d2">


			<div id="d2a" >Fit India</div>


			<div id="d2b" >
				<h4 Style="color: grey">Sign in to Fit-India</h4>
				<hr>
				<form:form class="form-signin" action="userSigIn"
					modelAttribute="userSignIn" method="POST">

					<p style="color: red">${errMsg }</p>
					<p style="color: red">${msg}</p>

					<form:input path="email" placeholder="Email ID"
						class="form-control col-md-12 mb-3" />

					<form:password path="pazzword" placeholder="Password"
						class="form-control col-md-12 mb-3" />

					<button class="btn btn-md btn-primary btn-block col-md-12 mb-1"
						type="submit">Log in</button>

					<div class="text-center">
						<a href="/loadforgotPwdForm">Forgotten Password?</a>
					</div>

				</form:form>
				<hr>
				<a class="btn btn-outline-success col-md-12 mb-1"
					href="/loadSignUpForm" role="button">Create New Account </a>

			</div>

		</div>

		<!-- footer -->
		<br> <br>

		<div id="d3">

			<p class="float-right">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; 2020-2021 @ Fit-India, Inc. &middot; <a href="#">Privacy</a>
				&middot; <a href="#">Terms</a>
			</p>
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

