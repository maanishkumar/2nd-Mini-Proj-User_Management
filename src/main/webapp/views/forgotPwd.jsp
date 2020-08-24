<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="ISO-8859-1">
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

<title>Recover Your Email ID</title>
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

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Boxing</a></li>
					<li class="nav-item"><a class="nav-link " href="#">Running</a>
					</li>
					<li class="nav-item"><a class="nav-link " href="#">Swimming</a>
					</li>
					<li class="nav-item"><a class="nav-link " href="#"> Yoga </a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown09"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action</a>
						<div class="dropdown-menu" aria-labelledby="dropdown09">
							<a class="dropdown-item" href="#">Forgot password</a> <a
								class="dropdown-item" href="#">Another action</a> <a
								class="dropdown-item" href="#">Something else here</a>
						</div></li>
				</ul>

			</div>
		</nav>

		<div class="text-left">
			<br></br> <a class="btn btn-outline-success mr-sm-2"
				href="/loadSignInForm" role="button">Sign In</a>

			<hr>
		</div>

		<h4 Style="color: grey">Having trouble in signing in?</h4>

		<br>


		<div>

			<form:form action="userforgotPwd" modelAttribute="UserForgotPwd"
				method="POST">
				<p style="color: red">${pwd}</p>
				<p style="color: red">${errMessage}</p>
				<p style="color: red">${errMsg}</p>



				<label>Enter your Email ID to get started...</label>

				<form:input path="email" placeholder="Email ID"
					class="form-control col-md-5 mb-3" />

				<button class="btn btn-sm btn-primary form-control col-md-2 mb-3 "
					type="submit">Submit</button>
				<br>

			</form:form>
		</div>


		<hr class="featurette-divider">

		<!-- FOOTER -->
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

