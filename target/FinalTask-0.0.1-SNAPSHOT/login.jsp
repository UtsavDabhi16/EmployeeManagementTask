<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script>
	$(function() {
		$("form[name='login']").validate({
			rules : {

				uemail : {
					required : true,
					email : true
				},

				password : {
					required : true
				},

			},
			messages : {
				email : {
					required : "Please enter your Email",
					email : "The email should be in the format: abc@gmail.com"
				},

				password : {
					required : "Password Requried"
				},
			},

			submitHandler : function(form) {
				form.submit();
			}
		});
	});
</script>
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
				<form action="admin.jsp" method="post" name="login">

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-email">Email
								</label> <input type="email" id="customer-email" class="form-control"
									name="uemail" maxlength="32" aria-required="true"
									pattern="/^[A-Za-z]+$/" placeholder="Enter your Email">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-password">Password
								</label> <input type="password" id="customer-new-password"
									class="form-control" name="upassword" maxlength="32"
									aria-required="true" placeholder="Enter your Password">
								<p class="help-block help-block-error"></p>
							</div>
							<label class="control-label" for="customer-sign-in"><a
								href="#" style="color: white" class="sign-in-btn">SignIn</a></label> <label
								class="control-label" for="customer-forgot-password"><a
								href="#" style="color: white" class="forgot-password-btn">Forgot
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