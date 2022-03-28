<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>

<head>
<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>EMS Task</title>

<!-- Google Font and Icon Link -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"
	rel="stylesheet">

<!-- BootStrap Link -->
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/3.3.2/select2.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.css">

<!-- Custom CSS Link -->
<link rel="stylesheet" type="text/css" href="css/custom.css">

<!-- Form Validation -->
<script>
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<!-- JavaScript Link -->
<script src="js/registervalidation.js"></script>

</head>

<body>
	<div class="container">
		<div class="margin-t-md">
			<!-- 		Registration From Header  -->
			<div class="card registration-header container-fluid">
				<h3>
					<i class="fa fa-user icon"></i>Registration Form
				</h3>
			</div>

			<!-- 						Registration Form  -->
			<div class="customer-form">
				<form action="login.jsp" method="post" role="form"
					autocomplete="off" name="register">
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-first-name">First
									Name</label> <input type="text" id="firstname" class="form-control"
									name="firstname" pattern="/^[A-Za-z]+$/" aria-required="true"
									placeholder="Enter your First Name"> <span
									id="fnameerror" style="color: red"></span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-last-name">Last
									Name</label> <input type="text" id="lastname" class="form-control"
									name="lastname" pattern="/^[A-Za-z]+$/" aria-required="true"
									placeholder="Enter Your Last Name"> <span
									id="lnameerror" style="color: red"></span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-email">Email</label>
								<input type="email" class="form-control" name="email" id="email"
									placeholder="abc@gmail.com"> <span id="emailerror"
									style="color: red"></span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-phone">Phone
									No</label> <input type="text" id="phoneno" class="form-control"
									name="phoneno" aria-required="true" placeholder="1234567890">
							</div>
						</div>
					</div>



					<div class="row">

						<div class="col-sm-6">
							<div class="form-group">
								<label for="birthday">Birthday Date</label> <input type="date"
									id="birthdaydate" name="birthdaydate"
									class="form-control container-fluid">
							</div>
						</div>

						<div class="col-sm-6">
							<div class="form-group ">
								<label class="control-label" for="customer-gender">Gender</label><br>
								<label for="male" class="gender-size">Male</label> <input
									type="radio" id="male" name="gender" value="Male"><br>
								<label class="gender-size" for="female">Female</label> <input
									type="radio" id="female" name="gender" value="Female">
							</div>
						</div>


					</div>


					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="security-question">Enter
									Your Favorite Programming Language</label> <input type="text"
									id="sanswer" class="form-control container-fluid"
									name="sanswer" placeholder="Java"> <span id="serror"
									style="color: red"></span>

							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-password">Password
								</label> <input type="password" id="password" class="form-control"
									name="password" placeholder="Enter your Password"> <span
									id="perror" style="color: red"></span>

							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="control-label" for="customer-confirm-password">Confirm
									Password </label> <input type="password" id="cpassword"
									class="form-control" name="cpassword"
									placeholder="Enter your Confirm Password"> <span
									id="cperror" style="color: red"></span>

							</div>
						</div>
					</div>


					<div id="main-container">
						<div class="panel card container-item">
							<div class="panel-body">
								<div class="panel-body">

									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label" for="address_line_one_0">Address
													line 1</label> <input type="text" id="address_line_one_0"
													class="form-control" name="Address[0][address_line1]"
													maxlength="255">
												<p class="help-block help-block-error"></p>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label" for="address_line_two_0">Address
													line 2</label> <input type="text" id="address_line_two_0"
													class="form-control" name="Address[0][address_line2]"
													maxlength="255">
												<p class="help-block help-block-error"></p>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label" for="pin">PinCode</label> <input
													type="text" id="pincode" name="pincode"
													class="form-control" maxlength="6">
												<p class="help-block help-block-error"></p>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label" for="city_0">City</label> <input
													type="text" id="city" name="city" class="form-control"
													name="Address[0][city]" maxlength="64">
												<p class="help-block help-block-error"></p>
											</div>
										</div>
										<!-- 										<div class="col-sm-6"> -->
										<!-- 											<div class="form-group"> -->
										<!-- 												<label class="control-label" for="state_0">State</label> <select -->
										<!-- 													class="form-control select2 select2-init" -->
										<!-- 													name="Address[0][state]" id="state_0"> -->
										<!-- 													<option>Alabama</option> -->
										<!-- 													<option>Alaska</option> -->
										<!-- 													<option>Arizona</option> -->
										<!-- 													<option>Arkansas</option> -->
										<!-- 													<option>California</option> -->
										<!-- 													<option>Colorado</option> -->
										<!-- 													<option>Connecticut</option> -->
										<!-- 													<option>Delaware</option> -->
										<!-- 													<option>Florida</option> -->
										<!-- 													<option>Georgia</option> -->
										<!-- 													<option>Hawaii</option> -->
										<!-- 													<option>Idaho</option> -->
										<!-- 													<option>Illinois Indiana</option> -->
										<!-- 													<option>Iowa</option> -->
										<!-- 													<option>Kansas</option> -->
										<!-- 													<option>Kentucky</option> -->
										<!-- 													<option>Louisiana</option> -->
										<!-- 													<option>Maine</option> -->
										<!-- 													<option>Maryland</option> -->
										<!-- 													<option>Massachusetts</option> -->
										<!-- 													<option>Michigan</option> -->
										<!-- 													<option>Minnesota</option> -->
										<!-- 													<option>Mississippi</option> -->
										<!-- 													<option>Missouri</option> -->
										<!-- 													<option>Montana Nebraska</option> -->
										<!-- 													<option>Nevada</option> -->
										<!-- 													<option>New Hampshire</option> -->
										<!-- 													<option>New Jersey</option> -->
										<!-- 													<option>New Mexico</option> -->
										<!-- 													<option>New York</option> -->
										<!-- 													<option>North Carolina</option> -->
										<!-- 													<option>North Dakota</option> -->
										<!-- 													<option>Ohio</option> -->
										<!-- 													<option>Oklahoma</option> -->
										<!-- 													<option>Oregon</option> -->
										<!-- 													<option>Pennsylvania Rhode Island</option> -->
										<!-- 													<option>South Carolina</option> -->
										<!-- 													<option>South Dakota</option> -->
										<!-- 													<option>Tennessee</option> -->
										<!-- 													<option>Texas</option> -->
										<!-- 													<option>Utah</option> -->
										<!-- 													<option>Vermont</option> -->
										<!-- 													<option>Virginia</option> -->
										<!-- 													<option>Washington</option> -->
										<!-- 													<option>West Virginia</option> -->
										<!-- 													<option>Wisconsin</option> -->
										<!-- 													<option>Wyoming</option> -->
										<!-- 												</select> -->
										<!--<select id="state_0" class="form-control select2-init" name="Address[0][city]">
                                                <option value="" data-select2-id="2">Select a state ...</option>
                                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                                    <option value="AK">Alaska</option>
                                                    <option value="HI">Hawaii</option>
                                                </optgroup>
                                                <optgroup label="Pacific Time Zone">
                                                    <option value="CA">California</option>
                                                    <option value="NV">Nevada</option>
                                                    <option value="OR">Oregon</option>
                                                    <option value="WA">Washington</option>
                                                </optgroup>
                                            </select>-->
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div>
										<a href="javascript:void(0)"
											class="remove-item btn btn-sm btn-danger remove-social-media">Remove</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="card">
						<div>
							<a class="btn btn-success btn-sm" id="add-more"
								href="javascript:;" role="button"><i class="fa fa-plus"></i>
								Add more address</a>
						</div>
					</div>
					
					<button type="submit" class="btn btn-primary btn-lg">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<!-- Include the footer jsp file -->
	<%@ include file="footer.jsp"%>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/select2/3.3.2/select2.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.js"></script>
	<script src="https://cdn.ckeditor.com/4.5.1/standard/ckeditor.js"></script>
	<script src="js/cloneData.js" type="text/javascript"></script>
	<script>
		$('a#add-more').cloneData({
			mainContainerId : 'main-container', // Main container Should be ID
			cloneContainer : 'container-item', // Which you want to clone
			removeButtonClass : 'remove-item', // Remove button for remove cloned HTML
			removeConfirm : true, // default true confirm before delete clone item
			removeConfirmMessage : 'Are you sure want to delete?', // confirm delete message
			//append: '<a href="javascript:void(0)" class="remove-item btn btn-sm btn-danger remove-social-media">Remove</a>', // Set extra HTML append to clone HTML
			minLimit : 1, // Default 1 set minimum clone HTML required
			maxLimit : 500, // Default unlimited or set maximum limit of clone HTML
			defaultRender : 1,
			init : function() {
				console.info(':: Initialize Plugin ::');
			},
			beforeRender : function() {
				console.info(':: Before rendered callback called');
			},
			afterRender : function() {
				console.info(':: After rendered callback called');
				//$(".selectpicker").selectpicker('refresh');
			},
			afterRemove : function() {
				console.warn(':: After remove callback called');
			},
			beforeRemove : function() {
				console.warn(':: Before remove callback called');
			}
		});

		/*$('.select2').select2({
		    placeholder: 'Select a month'
		});
		Replace the <textarea id="editor1"> with a CKEditor
		 instance, using default configuration.
		CKEDITOR.editorConfig = function (config) {
		    config.language = 'es';
		    config.uiColor = '#F7B42C';
		    config.height = 300;
		    config.toolbarCanCollapse = true;

		};
		CKEDITOR.replace('editor1');
		 */
	</script>
</body>
</html>