<%@include file="/WEB-INF/views/header.jsp"%>

<style>
#wrap {
	background-image: linear-gradient(to bottom, #FFFFFF 0%, rgba(255, 255, 255, .15)
		100%);
}

legend {
	color: #141823;
	font-size: 25px;
	font-weight: bold;
}

.signup-btn {
	background: #79bc64;
	background-image: -webkit-linear-gradient(top, #79bc64, #578843);
	-webkit-border-radius: 4;
	border-radius: 4px;
	text-shadow: 0px 1px 0px #898a88;
	-webkit-box-shadow: 0px 0px 0px #a4e388;
	box-shadow: 0px 0px 0px #a4e388;
	font-family: Arial;
	color: #ffffff;
	font-size: 15px;
	padding: 10px 20px 10px 20px;
	border: solid #3b6e22 1px;
	text-decoration: none;
}

.signup-btn:hover {
	background: #79bc64;
	background-image: -webkit-linear-gradient(top, #79bc64, #5e7056);
}

.navbar-default .navbar-brand {
	color: #fff;
	font-size: 30px;
	font-weight: bold;
}

.form .form-control {
	margin-bottom: 10px;
}

@media ( min-width :768px) {
	#home {
		margin-top: 10px;
	}
	#home .slogan {
		color: #0e385f;
		line-height: 29px;
		font-weight: bold;
	}
}



body, html {
	height: 100%;
	background-repeat: no-repeat;
	font-family: 'Oxygen', sans-serif;
}

.container {
	padding-bottom: 15px;
}

.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>

<script>
	function validate() {

		var x = document.getElementById("firstname").value;
		if (x.length == 0 | x.length > 20) {
			x.setCustomValidity("Please enter a proper username")
		} else {
			x.setCustomValidity("");
		}
	}
</script>


<div class="container" id="wrap">

	<div class="row">

		<div class="col-xs-6" align="left">
			<img src="<c:url value="/resources/img/s2watch.gif" />"
				style="width: 100%">
		</div>

		<div class="col-xs-6">

			<form:form modelAttribute="userDetails" accept-charset="utf-8"
				method="post" class="form" role="form">

				<h1>Sign Up</h1>
				<p></p>
				<div class="row">
					<div class="col-xs-6">
						<form:input path="user_firstname" id="firstname" required="true"
							class="form-control input-lg" placeholder="First Name"
							onkeyup="validate()" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('user_firstname')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
					<div class="col-xs-6">
						<form:input path="user_lastname" pattern="[a-zA-Z]{3,30}"
							required="true" class="form-control input-lg"
							placeholder="Last Name" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('user_lastname')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
				</div>
				<form:input path="mail_id"
					pattern="[a-z0-9._%+-]+@[gmail]+\.[com]{2,3}$" required="true"
					class="form-control input-lg" placeholder="Your Email"
					title="Please enter a valid gmail account mail address" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mail_id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />


				<form:input path="mobile_number" pattern="[9|7|8][0-9]{9}"
					required="true" class="form-control input-lg"
					placeholder="Your Mobile Number" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile_number')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />



				<form:input type="password" id="password" path="password"
					name="password" required="true" class="form-control input-lg"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
					placeholder="Password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />

				<form:input type="password" id="confirmpassword"
					path="confirm_password" name="confirmpassword" required="true"
					class="form-control input-lg" placeholder="ConfirmPassword" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('confirm_password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />





				<div class="row">
					<div class="col-xs-4">

						<button class="btn btn-lg btn-primary btn-block signup-btn"
							name="_eventId_submit" type="submit" value="submit">Create
							my account</button>


					</div>
				</div>
				<script>
					function validatePassword() {
						var password = document.getElementById("password"), confirmpassword = document
								.getElementById("confirmpassword")

						if (password.value != confirmpassword.value) {
							confirmpassword
									.setCustomValidity("Passwords Don't Match");
						} else {
							confirmpassword.setCustomValidity("");
						}

					}
					password.onchange = validatePassword;
					confirmpassword.onkeyup = validatePassword;
				</script>
			</form:form>

		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/footer.jsp"%>