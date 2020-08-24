<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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

<title>Fit-India</title>
</head>

<body>
	<div class="container">


		<nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
			<a class="navbar-brand" href="#">Fit-India</a>
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
					<li class="nav-item"><a class="nav-link " href="#">Yoga</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown09"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action</a>
						<div class="dropdown-menu" aria-labelledby="dropdown09">
							<a class="dropdown-item" href="#">FOrgot pwd</a> <a
								class="dropdown-item" href="#">Another action</a> <a
								class="dropdown-item" href="#">Something else here</a>
						</div></li>
				</ul>
					<a class="btn btn-outline-success my-2 my-sm-0" href="#"
					>SignOut</a>
					
			</div>
		</nav>

		<div id="carouselExampleFade" class="carousel slide carousel-fade"
			data-ride="carousel">
			<div class="carousel-inner">

				<div class="carousel-item active">
					<img src="./images/boxing.jpg " class="d-block w-100" height="525"
						alt="Boxing image here">
				</div>
				<div class="carousel-item">
					<img src="./images/running.jpg" class="d-block w-100" height="525"
						alt="Running image here">
				</div>
				<div class="carousel-item">
					<img src="./images/swimming.jpg" class="d-block w-100" height="525"
						alt="Swimming image here">
				</div>
				<div class="carousel-item">
					<img src="./images/yoga.jpg" class="d-block w-100" height="525"
						alt="Yoga image here">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleFade"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleFade"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<main role="main">
			<div class="jumbotron">
				<div class="col-sm-8 mx-auto">
					<h1>Fit-India Movement 2020</h1>
					<p>
						Fit India Movement is a nation-wide movement in India to encourage
						people to remain healthy and fit by including physical activities
						and sports in their daily lives. It was launched by Prime Minister
						of India Narendra Modi at Indira Gandhi Stadium in New Delhi on 29
						August 2019 (National Sports Day). Fit India was founded by Shri
						Suparno Satpathy in year 1993 and it was incorporated as a company
						in year 2000. <em>
							<p>I promise to myself that I will devote time for physical
								activity and sports every day and I will encourage my family
								members and neighbours to be physically fit and make India a fit
								nation.</p>
						</em>

					</p>
					<a class="btn btn-primary"
						href="https://en.wikipedia.org/wiki/Fit_India_Movement"
						target="_blank" role="button">View more details &raquo;</a>
					</p>
				</div>
			</div>
		</main>

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