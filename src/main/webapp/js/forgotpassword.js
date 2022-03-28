$(function() {
	$("form[name='forgotpassword']").validate({
		rules: {

			useremail: {
				required: true,
				email: true
			},

			userphoneno: {
				required: true,
				digits: true,
				minlength: 10,
				maxlength: 10
			},

			useranswer: {
				required: true
			},

			newpassword: {
				minlength: 5,
				maxlength: 8,
				required: true
				
			}
		},
		messages: {

			useremail: {
				required: "Please enter your Email",
				email: "The email should be in the format: abc@gmail.com"
			},

			userphoneno: {
				required: "Please enter phone number",
				digits: "Please enter valid phone number",
				minlength: "Phone number field accept only 10 digits",
				maxlength: "Phone number field accept only 10 digits"
			},

			useranswer: {
				required: "Please Enter Your Answer"
			},

			newpassword: {
				maxlength: "Maximum length of Password is Eight(8).",
				minlength: "Minimum length of Password is Five(5).",
				required: "Password Requried"
			},

		},

		submitHandler: function(form) {
			form.submit();
		}
	});


	//Security Answer Validation
	$("#useranswer").keypress(function(e) {
		var keyCode = e.keyCode || e.which;

		$("#usererror").html("");

		//Regex for Valid Characters i.e. Alphabets and Numbers.
		var regex = /^[A-Za-z]+$/;
		var isValid = regex.test(String.fromCharCode(keyCode));
		if (!isValid) {
			$("#usererror").html("Only Alphabets allowed.");
		}
		return isValid;
	});

	$("#newpassword").keypress(function(e) {
		//if the letter is not digit then display error and don't type anything
		$("#newpassworderror").html("");
		if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
			//display error message
			$("#newpassworderror").html("Digits Only Allowed").show().fadeOut(3000);;
			return false;
		}
	});

});
