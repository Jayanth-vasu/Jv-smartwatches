
<%@include file="/WEB-INF/views/header.jsp"%>
<style>
.pay ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 200px;
	background-color: #f1f1f1;
}

.pay li a {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
}

.pay li a:hover {
	background-color: #555;
	color: white;
}

div.bhoechie-tab-container {
	z-index: 10;
	background-color: #ffffff;
	padding: 0 !important;
	border-radius: 4px;
	-moz-border-radius: 4px;
	border: 1px solid #ddd;
	margin-top: 20px;
	margin-left: 50px;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	-moz-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	opacity: 0.97;
	filter: alpha(opacity = 97);
	width: 100%;
}

div.bhoechie-tab-menu {
	padding-right: 0;
	padding-left: 0;
	padding-bottom: 0;
}

div.bhoechie-tab-menu div.list-group {
	margin-bottom: 0;
}

div.bhoechie-tab-menu div.list-group>a {
	margin-bottom: 0;
}

div.bhoechie-tab-menu div.list-group>a .glyphicon, div.bhoechie-tab-menu div.list-group>a .fa
	{
	color: #5A55A3;
}

div.bhoechie-tab-menu div.list-group>a:first-child {
	border-top-right-radius: 0;
	-moz-border-top-right-radius: 0;
}

div.bhoechie-tab-menu div.list-group>a:last-child {
	border-bottom-right-radius: 0;
	-moz-border-bottom-right-radius: 0;
}

div.bhoechie-tab-menu div.list-group>a.active, div.bhoechie-tab-menu div.list-group>a.active .glyphicon,
	div.bhoechie-tab-menu div.list-group>a.active .fa {
	background-color: #5A55A3;
	background-image: #5A55A3;
	color: #ffffff;
}

div.bhoechie-tab-menu div.list-group>a.active:after {
	content: '';
	position: absolute;
	left: 100%;
	top: 50%;
	margin-top: -13px;
	border-left: 0;
	border-bottom: 13px solid transparent;
	border-top: 13px solid transparent;
	border-left: 10px solid #5A55A3;
}

div.bhoechie-tab-content {
	background-color: #ffffff;
	/* border: 1px solid #eeeeee; */
	padding-left: 20px;
	padding-top: 10px;
}

div
.bhoechie-tab
 
div
.bhoechie-tab-content
:not
 
(
.active
 
){
display
:
 
none
;


}
#debit {
	padding-left: 150px;
}
</style>
<
<script type="text/javascript">
	var app = angular.module('myApp', []);
	app.controller('myControl', function($scope, $http) {
		$("div.bhoechie-tab-menu>div.list-group>a").click(
				function(e) {
					e.preventDefault();
					$(this).siblings('a.active').removeClass("active");
					$(this).addClass("active");
					var index = $(this).index();
					$("div.bhoechie-tab>div.bhoechie-tab-content").removeClass(
							"active");
					$("div.bhoechie-tab>div.bhoechie-tab-content").eq(index)
							.addClass("active");

				});
	});
</script>
<div data-ng-app="myApp" data-ng-controller="myControl"
	class="container">
	<h1>Choose your payment option</h1>
	<br>

	<div class="row">
		<div class="col-xs-3">
			<div class="bhoechie-tab-container">
				<div class="bhoechie-tab-menu">
					<div class="list-group">



						<a href="#" class="list-group-item text-center">
							<h4 class="glyphicon glyphicon-globe"></h4> <br />Net Banking
						</a> <a href="#" class="list-group-item text-center">
							<h4 class="glyphicon glyphicon-credit-card"></h4> <br />Debit
							Card
						</a> <a ng-click="netbanking=true" href="#"
							class="list-group-item text-center">
							<h4 class="glyphicon glyphicon-usd"></h4> <br />Cash on
							Delievery
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xs-6" id="debit">



			<!-- CREDIT CARD FORM STARTS HERE -->
			<div class="panel panel-default credit-card-box">
				<div class="panel-heading display-table">
					<div class="row display-tr">

						<div class="display-td">
							<img class="img-responsive pull-right"
								src="http://i76.imgup.net/accepted_c22e0.png">
						</div>
					</div>
				</div>
				<div class="panel-body">
					<form:form role="form" id="payment-form" method="POST">
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label for="cardNumber">CARD NUMBER</label>
									<div class="input-group">
										<input type="tel" class="form-control" name="cardNumber"
											placeholder="Valid Card Number" autocomplete="cc-number"
											required autofocus /> <span class="input-group-addon"><i
											class="fa fa-credit-card"></i></span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-7 col-md-7">
								<div class="form-group">
									<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span
										class="visible-xs-inline">EXP</span> DATE</label> <input type="tel"
										class="form-control" name="cardExpiry" placeholder="MM / YY"
										autocomplete="cc-exp" required />
								</div>
							</div>
							<div class="col-xs-5 col-md-5 pull-right">
								<div class="form-group">
									<label for="cardCVC">CV CODE</label> <input type="tel"
										class="form-control" name="cardCVC" placeholder="CVC"
										autocomplete="cc-csc" required />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<button class="subscribe btn btn-success btn-lg btn-block"
									type="submit" name="_eventId_proceed" value="proceed">PROCEED</button>
							</div>
						</div>
						<div class="row" style="display: none;">
							<div class="col-xs-12">
								<p class="payment-errors"></p>
							</div>
						</div>
					</form:form>
				</div>
			</div>

		</div>

		<%-- <div data-ng-show="netbanking" 
			class="col-xs-6" id="debit">
<form:select path="" required="true"
					class="form-control input-lg" placeholder="Select a bank">
					<form:option value="Union Bank of India">Moto 360</form:option>
					<form:option value="State Bank Of India">Huawei</form:option>
					<form:option value="ICICI Bank">Intex</form:option>
					<form:option value="Axis Bank">Samsung</form:option>
					<form:option value="HDFC bank">Alcatel</form:option>
					<form:option value="UCO Bank">Apple</form:option>
					

				</form:select>


			

		</div> --%>
	</div>
</div>

