<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password Page</title>
<!-- Google Font and Icon Link -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 	BootStrap Link -->
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
		$("form[name='forgotpassword']").validate({
			rules : {

				useremail : {
					required : true,
					email : true
				},

				userphoneno : {
					required : true,
					digits : true,
					minlength : 10,
					maxlength : 10
				},

				useranswer : {
					required : true
				},

				newpassword : {
					required : true
				},

			},
			messages : {

				email : {
					required : "Please enter your Email",
					email : "The email should be in the format: abc@gmail.com"
				},

				userphoneno : {
					required : "Please enter phone number",
					digits : "Please enter valid phone number",
					minlength : "Phone number field accept only 10 digits",
					maxlength : "Phone number field accept only 10 digits"
				},

				useranswer : {
					required : "Please Enter Your Answer"
				},

				newpassword : {
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
					<i class="fa fa-undo fa-stack"></i>Forgot Password
				</h3>
			</div>
			<div class="customer-form">

				<form action="" name="forgotpassword" method="post">

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-email">Email
								</label> <input type="email" id="useremail" class="form-control"
									name="useremail" maxlength="32" aria-required="true"
									placeholder="Enter your Email">

							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-phone">Phone
									No</label> <input type="number" id="userphoneno" class="form-control"
									name="userphoneno">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="security-question">Enter
									Your Favorite Programming Language</label> <input type="text"
									id="useranswer" class="form-control" name="useranswer"
									placeholder="Java">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-password">New
									Password </label> <input type="password" id="newpassword"
									class="form-control" name="newpassword" maxlength="32"
									aria-required="true" placeholder="Enter your New Password">
							</div>
						</div>
					</div>

					<button type="submit" class="btn btn-primary btn-lg">Save</button>
				</form>
			</div>
		</div>
	</div>
	<!-- Include the Footer file -->
	<%@ include file="footer.jsp"%>
</body>
</html>