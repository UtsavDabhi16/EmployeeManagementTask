<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>User Login Page</title>
<!-- Google Font and Icon Link -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- BootStrap Link -->
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/3.3.2/select2.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.css">
<!-- Custom CSS Link -->
<link rel="stylesheet" type="text/css" href="css/custom.css">
<!-- JavaScript Link -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<!-- JavaScript Link -->

<script src="js/login.js"></script>
</head>

<body>
	<div class="container">
		<div class="margin-t-md">
			<div class="card registration-header container-fluid">
				<h3>
					<i class="fas fa-sign-in-alt"></i> Welcome User
				</h3>
			</div>
			<div class="customer-form">

				<form action="#" method="post" name="userlogin">

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="email">Email </label> <input
									type="email" id="uemail" class="form-control" name="uemail"
									aria-required="true" pattern="/^[A-Za-z]+$/"
									placeholder="Enter your Email">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="password">Password </label> <input
									type="password" id="upassword" class="form-control"
									name="upassword" maxlength="32" aria-required="true"
									placeholder="Enter your Password"> <span
									id="passworderror" style="color: red"></span>
							</div>
							<label class="control-label" for="signin"><a href="#"
								style="color: white" class="sign-in-btn">SignIn</a></label> <label
								class="control-label" for="forgotpassword"><a href="#"
								style="color: white" class="forgot-password-btn">Forgot
									Password</a></label>
						</div>
					</div>
					<button type="submit" class="btn btn-primary btn-lg">Login</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>