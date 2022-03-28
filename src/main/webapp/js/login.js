$(function() {
	$("form[name='userlogin']").validate({
		rules: {
			uemail: {
				required: true,
				email: true
			},

			upassword: {
				minlength: 5,
				maxlength: 8,
				required: true
			},

		},
		messages: {
			uemail: {
				required: "Please enter your Email",
				email: "The email should be in the format: abc@gmail.com"
			},

			upassword: {
				maxlength: "Maximum length of Password is Eight(8).",
				minlength: "Minimum length of Password is Five(5).",
				required: "Password Requried"
			},

		},

		submitHandler: function(form) {
			form.submit();
		}
	});

	$("#upassword").keypress(function(e) {
		//if the letter is not digit then display error and don't type anything
		$("#passworderror").html("");
		if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
			//display error message
			$("#passworderror").html("Digits Only Allowed").show().fadeOut(3000);;
			return false;
		}
	});


});


