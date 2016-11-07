<%@include file="/WEB-INF/views/header.jsp"%>

<style>
.gold {
	color: #FFBF00;
}

.product-rating {
	font-size: 20px;
	margin-bottom: 25px;
}

.container {
	padding-left: 0px;
	padding-right: 0px;
	max-width: 100%;
}

.jumbotron {
	background-color: rgba(255, 255, 255, .1);
}

body {
	line-height: 2;
}

#addtocart {
	background-color: #ff9f00; 
	border: none;
	color: white;
	padding: 18px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	width: 60%;
}

#buy {
	background-color: #ff4400; 
	border: none;
	color: white;
	padding: 18px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	width: 60%;
}
</style>

 <script>
	var app = angular.module('viewapp', []);
	app.controller('viewcontrol', function($scope, $http) {
		$http({
			method : 'GET',
			url : 'http://localhost:8089/jvsmartwatches/viewProduct/${productViewById}'
		}).success(function(data, status, headers, config) {
			$scope.productView = data;
		});
	});
</script>


<div class="container" data-ng-app="viewapp"
	data-ng-controller="viewcontrol">
	<div data-ng-repeat="product in productView ">
		<!-- <div class="jumbotron">
			<div class="col-xs-12">
				<a><center>
						<img
							src="https://img1a.flixcart.com/www/email/images/20160505-130640-moto360newlogo.jpg">
					</center></a>
			</div>
		</div> -->

		<div class="row">
			<div class="col-xs-6">
				<div align="center">

					<a><img 
						src="<c:url value="/resources/img/{{product.image_name}}" />" style="width:200px"></a>
				</div>
				<div align="center">
				<sec:authorize access="hasRole('ROLE_USER')">
					<div class="row" style="padding-top: 20px">
						<div class="col-xs-6" ng-if="product.stock>'0'">
							<a href="<c:url value='/addtocart/{{product.product_id}}' />"><button
									id="addtocart">
									<span class="glyphicon glyphicon-shopping-cart"></span> Add to
									Cart
								</button> </a>
						</div>
						
						<div class="col-xs-6" ng-if="product.stock>'0'">
							<a href="<c:url value="#" />"><button
									id="buy">
									<span class="glyphicon glyphicon-shopping-cart"></span> Buy Now
								</button> </a>
						</div>
						
						</div>
						</sec:authorize>
						
						<c:if test="${empty pageContext.request.userPrincipal.name}">
					<div class="row">
						<div class="col-xs-6" ng-if="product.stock>'0'">
							<a href="<c:url value='/login' />"><button id="addtocart">
									<span class="glyphicon glyphicon-shopping-cart"></span> Add to
									Cart
								</button> </a>
						</div>
						
						<div class="col-xs-6" ng-if="product.stock>'0'">
							<a href="<c:url value="#" />"><button id="buy">
									<span class="glyphicon glyphicon-shopping-cart"></span> Buy Now
								</button> </a>
						</div>
						
						</div>
						</c:if>
				</div>
			</div>

			<div class="col-xs-6"  >

				<h1>{{product.product_name}}</h1>
				
				<div class="product-rating">
					<i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i
						class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i
						class="fa fa-star-o"></i>
				</div>
				
				<h4>Available in stock: {{product.stock}}</h4>
				<hr style="border-top: 1px solid rgba(0, 0, 0, .075);">
				<h2>Rs.{{product.product_price}}</h2>

				<hr style="border-top: 1px solid rgba(0, 0, 0, .075);">

				<p>
				<ul>
					<li>Built-in GPS</li>
					<li>MultiApp Compatibility</li>
					<li>Music Storage</li>
					<li>Any Light Display</li>
				</ul>
				</p>
				
			</div>



			<div class="row">
				<div class="col-xs-12">
					<ul id="myTab" class="nav nav-tabs nav_tabs">

						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
						

					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ul>
						<li>Silicone Band (20 mm Strap), Button-Free Voice Control,
							Turn-by-Turn Navigation</li>
						<li>1.37 inch Display- Notifications, Body Stats-LCD
							Touchscreen with Gorilla Glass 3</li>
						<li>Qualcomm Snapdragon 400 APQ8026 Quad Core Processor</li>
						<li>Water Resistant to 3-ft, Wireless Charging with Included
							Dock, Just tell your Moto 360 Sport Where you Want to Go, Then
							Let the Step-by-step Navigation Instructions in the Watch Display
							Guide You to Your Destination. Navigation Instructions that You
							Set up on Your Phone will Also Appear in Your Watch Display</li>
						<li>Heart Rate Sensor, Coaching Advice, Calories Burnt, GPS
							Tracker, Water Resistant</li>
						<li>Android Wear OS- Compatible with Android and iOS</li>

					</ul>


				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/footer.jsp"%>