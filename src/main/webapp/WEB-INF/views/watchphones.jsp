<%@include file="/WEB-INF/views/header.jsp"%>
<style>
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
</style>

<script>
	var app = angular.module('smartnotifiers', []);
	app.controller('smartnotifiersController', function($scope, $http) {
		$http({
			method : 'GET',
			url : 'http://localhost:8089/jvsmartwatches/category/watchphones'
		}).success(function(data, status, headers, config) {
			$scope.smartnotifiers = data;
		});
	});

	function goBack() {
		window.history.back();
	}
</script>

<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<a><center>
					<img
						src="https://img1a.flixcart.com/www/email/images/20160505-130640-moto360newlogo.jpg">
				</center></a>
			<p></p>
		</div>
	</div>
</div>
<div class="container" data-ng-app="smartnotifiers"
	data-ng-controller="smartnotifiersController">


	<div class="row">
		<div class="col-xs-8">
			<button type="button" class="btn btn-primary" onclick="goBack()">Go
				Back</button>
		</div>
		<div class="col-xs-4">
			<div id="imaginary_container">
				<div class="input-group stylish-input-group">
					<input type="text" class="form-control" data-ng-model="category"
						placeholder="Search"> <span class="input-group-addon">
						<button type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<div class="row">

		<div class="col-xs-4"
			data-ng-repeat="cat in smartnotifiers | filter:category">
			<div class="thumbnail">

				<img src="<c:url value="/resources/img/{{cat.image_name}}" />"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>{{cat.product_name}}</h3>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<label>{{cat.product_price}}</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>Built-in GPS</li>
						<li>MultiApp Compatibility</li>
						<li>Music Storage</li>
						<li>Any Light Display</li>
					</ul>
					</p>

					<c:if test="${empty pageContext.request.userPrincipal.name}">
						<div class="row">
							<div class="col-md-6">
								<a href="<c:url value='/view/{{cat.product_id}}' />"
									class="btn btn-primary btn-product"> view</a>
							</div>
							<div class="col-md-6">
								<a href="<c:url value='/addtocart/{{cat.product_id}}' />"
									class="btn btn-success btn-product"><span
									class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
							</div>
						</div>



						<p></p>

					</c:if>
					
					<sec:authorize access="hasRole('ROLE_USER')">
						<div class="row">
						<div class="row">
							<div class="col-md-6">
								<a href="<c:url value='/view/{{cat.product_id}}' />"
									class="btn btn-primary btn-product"> view</a>
							</div>
							
							<div class="col-md-6">
								<a href="<c:url value='/addtocart/{{cat.product_id}}' />"
									class="btn btn-success btn-product"><span
									class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
							</div>
						</div>
						
						</sec:authorize>
						
						<p></p>
					

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<div class="row">
							<div class="col-md-6">
								<a href="<c:url value='/edit/{{cat.product_id}}' />"><button
										type="button" class="btn btn-labeled btn-success">
										<span class="btn-label"><i
											class="glyphicon glyphicon-pencil"></i></span>Edit Product
									</button> </a>
							</div>
							<div class="col-md-6">
								<a href="<c:url value='/remove/{{cat.product_id}}' />"><button
										type="button" class="btn btn-labeled btn-danger">
										<span class="btn-label"><i
											class="glyphicon glyphicon-remove"></i></span>Delete Product
									</button></a>
							</div>
						</div>

					</sec:authorize>
					<p></p>


				</div>
			</div>
		</div>



	</div>

</div>



