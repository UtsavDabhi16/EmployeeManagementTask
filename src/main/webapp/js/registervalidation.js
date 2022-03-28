$(function() {
	$("form[name='register']").validate({
		rules: {

			firstname: "required",
			lastname: "required",

			email: {
				required: true,
				email: true
			},

			phoneno: {
				required: true,
				digits: true,
				minlength: 10,
				maxlength: 10
			},

			birthdaydate: {
				required: true,
				minAge: 18
			},

			gender: {
				required: true
			},

			city: {
				required: true
			},

			pincode: {
				required: true,
				maxlength: 6
			},

			sanswer: {
				required: true
			},

			password: {
				minlength: 5,
				maxlength: 8,
				required: true
			},

			cpassword: {
				minlength: 5,
				maxlength: 8,
				required: true,
				equalTo: "#password"
			}
		},
		messages: {

			firstname: "Enter Valid First Name",

			lastname: "Enter Valid Last Name",

			email: {
				required: "Please enter your Email",
				email: "The email should be in the format: abc@gmail.com"
			},

			phoneno: {
				required: "Please enter phone number",
				digits: "Please enter valid phone number",
				minlength: "Phone number field accept only 10 digits",
				maxlength: "Phone number field accept only 10 digits"
			},

			birthdaydate: {
				required: "Please enter you date of birth.",
				minAge: "You must be at least 18 years old!"
			},

			gender: {
				required: "Please Select Gender"
			},

			city: {
				required: "Please Your City"
			},

			pincode: {
				required: "Please Your Pincode",
				maxlength: "Pincode length is six"
			},

			sanswer: {
				required: "Please Enter Your Answer"
			},

			password: {
				maxlength: "Maximum length of Password is Eight(8).",
				minlength: "Minimum length of Password is Five(5).",
				required: "Password Requried"
			},

			cpassword: {
				maxlength: "Confirm Password Maximum length is Eight(8).",
				minlength: "Confirm Password Minimum length is Five(5).",
				required: "Confirm Password Requried",
				equalTo: "Password Can't Match"
			}
		},

		submitHandler: function(form) {
			form.submit();
		}
	});

	//First Name Validation
	$("#firstname").keypress(function(e) {
		var keyCode = e.keyCode || e.which;

		$("#fnameerror").html("");

		//Regex for Valid Characters i.e. Alphabets and Numbers.
		var regex = /^[A-Za-z]+$/;
		var isValid = regex.test(String.fromCharCode(keyCode));
		if (!isValid) {
			$("#fnameerror").html("Only Alphabets allowed.");
		}
		return isValid;
	});

	//Last Name Validation
	$("#lastname").keypress(function(e) {
		var keyCode = e.keyCode || e.which;

		$("#lnameerror").html("");

		//Regex for Valid Characters i.e. Alphabets and Numbers.
		var regex = /^[A-Za-z]+$/;
		var isValid = regex.test(String.fromCharCode(keyCode));
		if (!isValid) {
			$("#lnameerror").html("Only Alphabets allowed.");
		}
		return isValid;
	});

	//Birth Date Validation
	$.validator.addMethod("minAge", function(value, _elementt, min) {
		var today = new Date();
		var birthDate = new Date(value);
		var age = today.getFullYear() - birthDate.getFullYear();

		if (age > min + 1) {
			return true;
		}

		var m = today.getMonth() - birthDate.getMonth();

		if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
			age--;
		}

		return age >= min;
	}, "You are not old enough!");

	//Security Answer Validation
	$("#sanswer").keypress(function(e) {
		var keyCode = e.keyCode || e.which;

		$("#serror").html("");

		//Regex for Valid Characters i.e. Alphabets and Numbers.
		var regex = /^[A-Za-z]+$/;
		var isValid = regex.test(String.fromCharCode(keyCode));
		if (!isValid) {
			$("#serror").html("Only Alphabets allowed.");
		}
		return isValid;
	});

	$("#password").keypress(function(e) {
		//if the letter is not digit then display error and don't type anything
		$("#password").html("");
		if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
			//display error message
			$("#perror").html("Digits Only Allowed").show().fadeOut(3000);;
			return false;
		}
	});

	$("#cpassword").keypress(function(e) {
		//if the letter is not digit then display error and don't type anything
		$("#cpassword").html("");
		if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
			//display error message
			$("#cperror").html("Digits Only Allowed").show().fadeOut(3000);;
			return false;
		}
	});

});