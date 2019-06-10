<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Index</title>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg "
			style="padding-top: 22px; padding-left: 30px; border-radius: 10px; border: 2px solid green; padding-bottom: 20px; background-color: #21d192; font-size: 18px; font-weight: lighter; font-variant: small-caps;">
			<a class="navbar-brand" href="#"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-item nav-link active"
						href="http://localhost:8080/MSF/JSP/Index.jsp"
						style="color: white; letter-spacing: 1px;">Home</a> <a
						class="nav-item nav-link" href="#"
						style="color: white; letter-spacing: 1px;">Features</a> <a
						class="nav-item nav-link" href="#"
						style="color: white; letter-spacing: 1px;">Contact</a> <a
						class="nav-item nav-link" href="#"
						style="color: white; letter-spacing: 1px;">About</a> <a
						class="nav-item nav-link" href="#"
						style="color: white; letter-spacing: 1px;">Download</a> 
						<a
						class="btn btn-outline-success  btn-md"
						style="margin-left: 50px; border-color: white;"
						href="http://localhost:8080/MSFT/Register.jsp"
						role="button"> <span class="glyphicon glyphicon-user">
							Sign Up</span>
						</a> 
					<a class="btn btn-outline-success  btn-md"
						style="margin-left: 25px; border-color: white;"
						href="http://localhost:8080/MSFT/Login.jsp" role="button">
						<span class="glyphicon glyphicon-log-in"> Log In</span>
					</a>


					<form class="form-inline " style="margin-left: 80px;">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" role="button"
							style="border-color: white;" type="submit">Search</button>
					</form>

				</div>
			</div>
		</nav>
	</div>

	<div class="container">
		<h2 class="font-weight-bold text-center my-4"
			style="font-variant: small-caps; letter-spacing: 5px;">Contact
			Us</h2>
		<p class="text-center  mb-5" style="font-variant: small-caps;">Do
			you have any questions? Please do not hesitate to contact us
			directly. Our team will come back to you within a matter of hours to
			help you.</p>

		<div class="row">

			<div class="col-md-9">
				<form id="contact-form" name="contact-form" action="" method="POST">

					<div class="row">

						<div class="col-md-6" style="font-variant: small-caps;">
							<input type="text" id="name" name="name" class="form-control">
							<label for="name" class="">Your Name</label>
						</div>

						<div class="col-md-6" style="font-variant: small-caps;">
							<input type="text" id="email" name="email" class="form-control">
							<label for="email" class="">Your Email</label>
						</div>

					</div>

					<div class="row">
						<div class="col-md-12" style="font-variant: small-caps;">
							<input type="text" id="subject" name="subject"
								class="form-control"> <label for="subject" class="">Subject</label>
						</div>
					</div>

					<div class="row">

						<div class="col-md-12" style="font-variant: small-caps;">

							<div class="md-form">
								<textarea id="message" name="message" rows="2" class="form-control"></textarea>
								<label for="message">Your Message</label>
							</div>

						</div>
					</div>

				</form>

				<div class="text-center text-md-left">
					<a class="btn btn-outline-success"
						style="font-variant: small-caps; border-color: #4CAF50;"
						onclick="document.getElementById('contact-form').submit();">Send</a>
				</div>
			</div>

			<div class="col-md-3 text-center">
				<ul class="list-unstyled mb-0">
					<li><i class="fa fa-map-marker fa-2x"></i>
						<p style="font-variant: small-caps;">F-8 Islamabad, PK</p></li>

					<li><i class="fa fa-phone mt-2 fa-2x"></i>
						<p style="font-variant: small-caps;">+92 334 5281712</p></li>

					<li><i class="fa fa-envelope mt-4 fa-2x"></i>
						<p style="font-variant: small-caps;">contact@SowferTech.com</p></li>
				</ul>
			</div>

		</div>
	</div>


	<!-- Footer -->

	<footer class="my-5" style="font-variant: small-caps; color: bluegrey;">

		<div style="background-color: #21d192;">
			<div class="container">

				<div class="row py-4 ">

					<div class="col-md-6 col-lg-5  text-md-left">
						<h6 class="mb-0" style="color: white; font-size: 15px;">Get
							connected with us on social networks!</h6>
					</div>

					<div class="col-md-6 col-lg-7 text-md-right">

						<a> <i class="fa fa-facebook-f  mr-4" style="color: white;">
						</i>
						</a> <a> <i class="fa fa-twitter mr-4" style="color: white;">
						</i>
						</a> <a> <i class="fa fa-google-plus mr-4" style="color: white;">
						</i>
						</a> <a> <i class="fa fa-linkedin mr-4" style="color: white;">
						</i>
						</a> <a> <i class="fa fa-instagram" style="color: white;"> </i>
						</a>

					</div>

				</div>

			</div>
		</div>

		<div class="container text-center text-md-left mt-5">

			<div class="row mt-3" style="color-text: darkgrey;">

				<div class="col-md-3 col-lg-4 col-xl-3 mb-4">

					<h5 class="text-uppercase font-weight-bold">Company Name</h5>
					<hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
					<p>Point Of Sale Project.</p>

				</div>

				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

					<h5 class="text-uppercase font-weight-bold">Products</h5>
					<hr class=" mt-0 mb-4  d-inline-block mx-auto" style="width: 60px;">
					<p>
						<a class="" href="#!">Accountant</a>
					</p>
					<p>
						<a class="" href="#!">Salary</a>
					</p>
					<p>
						<a class="" href="#!">Expenses</a>
					</p>
					<p>
						<a class="" href="#!">Items</a>
					</p>

				</div>

				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

					<h5 class="text-uppercase font-weight-bold">Useful links</h5>
					<hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
					<p>
						<a href="#!">Your Account</a>
					</p>
					<p>
						<a href="#!">Home Page</a>
					</p>
					<p>
						<a href="#!">About Us</a>
					</p>
					<p>
						<a href="#!">Help</a>
					</p>

				</div>

				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto">

					<h5 class="text-uppercase font-weight-bold">Contact</h5>
					<hr class="mb-4 mt-0 d-inline-block " style="width: 60px;">
					<p>
						<i class="fa fa-home mr-3"></i> Islamabad, F-8, Pakistan
					</p>
					<p>
						<i class="fa fa-envelope mr-3"></i> info@SowferTech.com
					</p>
					<p>
						<i class="fa fa-phone mr-3"></i> + 334 5281712
					</p>
					<p>
						<i class="fa fa-print mr-3"></i> + 334 5281712
					</p>

				</div>

			</div>

		</div>
		<div style="background-color: darkgrey;">
			<div class=" text-center text-black-100 py-3">
				© 2018 Copyright: <a class="" href=""> SowferTech.com</a>
			</div>
		</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>