
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

#addtocart {
	background-color: #800080; /* Green */
	border: none;
	color: white;
	padding: 18px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	width: 98%;
}

#view {
	background-color: #ff6347; /* Green */
	border: none;
	color: white;
	padding: 18px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	width: 98%;
}

.btn-label {
	position: relative;
	left: -12px;
	display: inline-block;
	padding: 6px 12px;
	background: rgba(0, 0, 0, 0.15);
	border-radius: 3px 0 0 3px;
}

.btn-labeled {
	padding-top: 0;
	padding-bottom: 0;
}

.btn {
	margin-bottom: 10px;
}

#imaginary_container {
	margin-bottom: 30px; /* Don't copy this */
}

.stylish-input-group .input-group-addon {
	background: white !important;
}

.stylish-input-group .form-control {
	border-right: 0;
	box-shadow: 0 0 0;
	border-color: #ccc;
}

.stylish-input-group button {
	border: 0;
	background: transparent;
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
</style>
<div class="container">
	<div class="row">
		<div class="col-xs-6">
			<img src="<c:url value="/resources/img/car.gif" />"
				style="width: 100%">
		</div>
		<div class="col-xs-6">
			<form:form modelAttribute="shippingAddress" class="form-horizontal"
				role="form" method="post">
				<fieldset>

					<!-- Form Name -->
					<h1>Shipping address</h1>

					<!-- Text input-->


					<!-- Text input-->
					<div class="form-group">

						<div class="col-sm-10">
							<form:input path="street_name" placeholder="Street Name"
								class="form-control input-lg" required="true" />
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">

						<div class="col-sm-10">
							<form:select path="city" placeholder="City"
								class="form-control input-lg" required="true" >
								<form:option value="Chennai">Chennai</form:option>
								</form:select>
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">

						<div class="col-sm-10">
							<form:select path="state" placeholder="State"
								class="form-control input-lg" required="true" >
								<form:option value="Tamilnadu">Tamilnadu</form:option>
								</form:select>
						</div>
					</div>

					<div class="form-group">

						<div class="col-sm-10">
							<form:input path="post_code" placeholder="Post Code"
								class="form-control input-lg" required="true" />
						</div>
					</div>



					<!-- Text input-->

					<div class="form-group">

						<div class="col-sm-10">
							<form:select path="country" placeholder="Country"
								class="form-control input-lg" required="true" >
								<form:option value="India">India</form:option>
								</form:select>
						</div>
					</div>

					<div class="row">

						<div class="col-xs-2">


							<button class="signup-btn" name="_eventId_save" type="submit"
								value="save">Save </button>
						</div>
						

					</div>
		
		</fieldset>


		</form:form>
		</div>
	</div>

<%@include file="/WEB-INF/views/footer.jsp"%>

	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
