<%@include file="/WEB-INF/views/header.jsp"%>
<style>
.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 100px;
}

.form-signin .checkbox {
	font-weight: normal;
}

.form-signin .form-control {
	position: relative;
	font-size: 16px;
	height: auto;
	padding: 10px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="text"] {
	margin-bottom: -1px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}

.account-wall {
	margin-top: 10px;
	padding: 40px 0px 20px 0px;
	background-color: #f7f7f7;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.login-title {
	color: #555;
	font-size: 18px;
	font-weight: 400;
	display: block;
}

.profile-img {
	width: 96px;
	height: 96px;
	margin: 0 auto 10px;
	display: block;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
}

.need-help {
	margin-top: 10px;
}

.new-account {
	display: block;
	margin-top: 10px;
}

.container {
	padding-bottom: 20px;
}
</style>

<script>
	/* function getEmail($ajax) {

		var email = document.getElementById("forgotpassword").value;
		alert(email);
		/* $http
				.put(
						'http://localhost:8089/jvsmartwatches/forgotpassword'
								+ email).success(function() {
					alert('success')
				}) */
	/*  $ajax({
		url: 'http://localhost:8089/jvsmartwatches/forgotpassword'+email,
		type:'PUT',
		success: function(){alert('put completed');}
		
		
	}) 

	};  */

	var app = angular.module('forgotpassword', []);
	app
			.controller(
					'forgotController',
					function($scope, $http) {

						$scope.forgotpassword = function() {
							/* var email = document.getElementById("forgotpassword").value;
							alert('in forgot'); */
							$http(
									{
										method : 'PUT',
										url : 'http://localhost:8089/jvsmartwatches/forgotpassword/'
												+ email
									}).success(function() {
								alert('success');

							})
						};

					});
</script>


<div class="container">
	<div class="row">
		<div class="col-sm-6 col-md-4 col-md-offset-4">
			<h1 class="text-center login-title">Welcome</h1>
			<div class="account-wall">
				<img class="profile-img"
					src="data:image/png;base64,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"
					alt="">
				<form:form name='loginForm' class="form-signin"
					action="j_spring_security_check" method='POST' id="target">
					<input type='text' name='mail_id' class="form-control"
						placeholder="Email address" pattern=".{2,30}" required="true" />
					<p></p>
					<p></p>
					<input type='password' name='password' class="form-control"
						placeholder="Password" required="true" />
					<button class="btn btn-lg btn-primary btn-block" type="submit">
						Sign in</button>
					<br>

					<a data-toggle="modal" data-target="#myModal">Forgot password?</a>
				</form:form>
				<!-- Modal -->
				<c:url var="formaction" value="/forgotpassword" />
				<form:form modelAttribute="userDetails" method="post"
					action="${formaction}">
					<div data-ng-app="forgotpassword"
						data-ng-controller="forgotController" class="modal fade"
						id="myModal" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->

							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Type in your e-mail address</h4>
								</div>
								<div class="modal-body">
									<form:input path="mail_id" type='text' name='mail_id'
										class="form-control" placeholder="Email address"
										pattern=".{2,30}" required="true" data-ng-modal="email" />
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-default">Send</button>
								</div>
							</div>

						</div>
					</div>


				</form:form>
			</div>

		</div>
	</div>
</div>
<p></p>
<%@ include file="/WEB-INF/views/footer.jsp"%>

