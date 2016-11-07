<%@include file="/WEB-INF/views/header.jsp"%>
<script>
	var app = angular.module('myOrder', []);
	app.controller('orderController', function($scope, $http) {
		$http({
			method : 'GET',
			url : 'http://localhost:8089/jvsmartwatches/myorderlist'
		}).success(function(data, status, headers, config) {
			$scope.myorder = data;
		});
	});
		</script>
	
	<c:choose>
	<c:when test="${ordernumber>'0'}">
		<h1>
	<center>MY ORDERS</center>
</h1>

<div class="container" data-ng-app="myOrder"
	data-ng-controller="orderController">
	
	<div ng-if="myorder">
	<table class="table">
		<thead>
			<tr>
				<th>Product</th>
				<th class="text-center">Quantity</th>

				<th class="text-center">Price</th>
				
				<th class="text-center">Date</th>
				
				<th class="text-center">Time</th>

				<th> </th>
			</tr>
		</thead>

		<tbody>



			<tr data-ng-repeat="order in myorder">

				<td class="col-xs-8">
					<div class="row">
						<div class="col-xs-5">
							<a class="pull-left" href="#"> <img
								src="<c:url value="/resources/img/{{order.cart.imagename}}"/>">
							</a>
						</div>

						<div class="col-xs-5">
							<h4>{{order.cart.productName}}</h4>
							<h5>by {{order.cart.productbrand}}</h5>
						</div>
					</div>

				</td>

				<td class="col-xs-1" style="text-align: center">{{order.cart.quantity}}
				</td>

				<td class="col-sm-1" style="text-align: center">Rs. {{order.cart.productPrice * order.cart.quantity}}</td>
				
				<td class="col-sm-1" style="text-align: center">{{order.date}}</td>
				
				<td class="col-sm-1" style="text-align: center">{{order.time}}</td>
				
				<td class="col-sm-1" style="text-align: center"><a
								href="<c:url value='/cancelorder/{{order.cart.cart_id}}/{{order.cart.quantity}}' />">
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove"></span> Cancel order
									</button>
							</a></td>

			</tr>






		</tbody>


	</table>
	</div>
	</div>
	</c:when>
	<c:otherwise>
	<br>
	<br>
	<br>
	<div align="center">
	<img src="<c:url value="/resources/img/sponge2.png"/>">
	<h3>No orders are placed </h3>
	</div>
	</c:otherwise>

</c:choose>

<%@include file="/WEB-INF/views/footer.jsp"%>