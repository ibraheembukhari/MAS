<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Form</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

	<div
		style="background: -webkit-linear-gradient(left, #3931af, #00c6ff); margin-top: 0%; padding: 3%; font-variant: small-caps;">
		<div class="row">
			<div class="col-md-3"
				style="text-align: center; color: #fff; margin-top: 4%;">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" />
				<h3>Welcome</h3>
				<p>SowferTech</p>
				<a class="btn btn-outline-info  btn-md"
						href="http://localhost:8080/MSFT/Login.jsp" role="button">
						<span class="glyphicon glyphicon-log-in"> Log In</span>
					</a><br />
			</div>
			<div class="col-md-9 "
				style="background: #f8f9fa; border-top-left-radius: 10% 50%; border-bottom-left-radius: 10% 50%;">

				<h3
					style="text-align: center; margin-top: 8%; margin-bottom: -15%; color: #495057;">Apply
					as a Customer<br>${msg}
					</h3>
				<form action="RegisterServlet" method="post">
					<div class="row" style="padding: 10%; margin-top: 10%;">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="First Name *" name="fname" />
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="UserName *" name="uname" />
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="Password *" name="pass" />
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="Confirm Password *" name="cpass" />
							</div>

						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="email" class="form-control"
									placeholder="Your Email *" name="email" />
							</div>
							<div class="form-group">
								<input type="text" maxlength="10" name="phone"
									class="form-control" placeholder="Your Phone *" value="" />
							</div>
							<div class="form-group">
								<select class="form-control" name="sques">
									<option selected disabled>Please select your Security
										Question</option>
									<option>What is your Birthdate</option>
									<option>What is Your old Phone Number</option>
									<option>What is your Pet Name?</option>
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Enter Your Answer *" name="ans" />
							</div>
							<input type="submit"
								style="float: right; margin-top: 10%; border: none; border-radius: 1.5rem; padding: 2%; background: #0062cc; color: #fff; font-weight: 600; width: 50%; cursor: pointer;"
								value="Register" />
						</div>
					</div>
				</form>

			</div>

		</div>
	</div>

</body>
</html>