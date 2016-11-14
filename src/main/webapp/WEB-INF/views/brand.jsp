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

#product {
	margin: 75px;
}

#addtocart {
	background-color: #ff9f00; /* Green */
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
	background-color: #FFD700; /* Green */
	border: none;
	color: white;
	padding: 18px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	width: 98%;
}
</style>

<script>
	var app = angular.module('productBrand', []);
	app.controller('viewAllProductBrand', function($scope, $http) {
		$http({
			method : 'GET',
			url : 'http://localhost:8089/jvsmartwatches/brand1/${brand1}'
		}).success(function(data, status, headers, config) {
			$scope.productBrand = data;
		});
	});

	function goBack() {
		window.history.back();
	}
</script>

<div class="container">
	
</div>
<div class="container" data-ng-app="productBrand"
	data-ng-controller="viewAllProductBrand">
<div class="row">
		<div class="col-xs-12">
			<h1 align="center">${brand1}</h1>
			<p></p>
		</div>
	</div> 

	<div class="row">
		<div class="col-xs-8">
			<button type="button" class="btn btn-primary" onclick="goBack()">Go
				Back</button>
		</div>
		<div class="col-xs-4">
			<div id="imaginary_container">
				<div class="input-group stylish-input-group">
					<input type="text" class="form-control" data-ng-model="brand"
						placeholder="Search"> <span class="input-group-addon">
						<button type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<h2></h2>


		<div id="product" class="row"
			data-ng-repeat="prd in productBrand | filter:brand">


			<div class="col-xs-3">
				<img src="<c:url value="/resources/img/{{prd.image_name}}" />"style="width:75%"
					class="img-responsive">
			</div>

			<div class="col-xs-5">
				<h3>{{prd.product_name}}</h3>
				<h5>{{prd.product_brand}}</h5>

				<h5 ng-if="prd.stock>'0'">Available in stock: {{prd.stock}}</h5>
				

				<h5 ng-if="prd.stock=='0'" style="color: red">Out of stock</h5>
				
				<h5>{{prd.product_description}}</h5>

			</div>

			<div class="col-xs-4">
				<h3>Rs.{{prd.product_price}}</h3>

				<c:if test="${empty pageContext.request.userPrincipal.name}">
					<div class="row">
						<div class="col-xs-6" ng-if="prd.stock>'0'">
							<a href="<c:url value='/login' />"><button id="addtocart">
									<span class="glyphicon glyphicon-shopping-cart"></span> Add to
									Cart
								</button> </a>
						</div>

						<div class="col-xs-6" ng-if="prd.stock>'0'">
							<a href="<c:url value='/view/{{prd.product_id}}' />"><button
									id="view">
									<span class="glyphicon glyphicon-info-sign"></span> View
								</button> </a>
						</div>
					</div>
				</c:if>

				<sec:authorize access="hasRole('ROLE_USER')">
					<div class="row">
						<div class="col-xs-6" ng-if="prd.stock>'0'">
							<a href="<c:url value='/addtocart/{{prd.product_id}}' />"><button
									id="addtocart">
									<span class="glyphicon glyphicon-shopping-cart"></span> Add to
									Cart
								</button> </a>
						</div>

						<div class="col-xs-6" ng-if="prd.stock>'0'">
							<a href="<c:url value='/view/{{prd.product_id}}' />"><button
									id="view">
									<span class="glyphicon glyphicon-info-sign"></span> View
								</button> </a>
						</div>
					</div>

				</sec:authorize>



				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<div class="row">
						<div class="col-xs-6">
							<a href="<c:url value='/edit/{{prd.product_id}}' />"><button
									id="addtocart">
									<span class="glyphicon glyphicon-pencil"></span> Edit
								</button> </a>
						</div>

						<div class="col-xs-6">
							<a href="<c:url value='/remove/{{prd.product_id}}' />"><button
									id="view">
									<span class="glyphicon glyphicon-trash"></span> Delete
								</button> </a>
						</div>

					</div>
				</sec:authorize>



			</div>
			<hr style="border-top: 1px solid rgba(0, 0, 0, .075);">
		</div>

	</div>

</div>

<%@ include file="/WEB-INF/views/footer.jsp"%>
