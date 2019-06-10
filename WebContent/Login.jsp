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
		style="background: -webkit-linear-gradient(left, #3931af, #00c6ff); margin-top: 0%; padding: 9%; font-variant: small-caps;">
		<div class="row">
			<div class="col-md-3"
				style="text-align: center; color: #fff; margin-top: 4%;">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" />
				<h3>Welcome</h3>
				<p>SowferTech</p>
				
					<a
						class="btn btn-outline-info  btn-md"
						href="http://localhost:8080/MSFT/Register.jsp"
						role="button"> <span class="glyphicon glyphicon-user">
							Sign Up</span>
					</a> 
							<br /> 
			</div>
			<div class="col-md-9 "
				style="background: #f8f9fa; border-top-left-radius: 10% 50%; border-bottom-left-radius: 10% 50%;">

				<h3
					style="text-align: center; margin-top: 8%; margin-bottom: -17%; color: #495057;">
					LogIn<br>${msg}
				</h3>
				<form action="LoginServlet" method="post">
					<div class="row" style="padding: 10%; margin-top: 10%;">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="UserName *"
									name="uname" />
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="Password *"
									name="pass" />
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