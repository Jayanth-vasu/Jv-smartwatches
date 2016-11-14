<%@include file="/WEB-INF/views/header.jsp"%>

<script>
	var app = angular.module('myCart', []);
	app.controller('cartController', function($scope, $http) {
		$http({
			method : 'GET',
			url : 'http://localhost:8089/jvsmartwatches/mycartlist'
		}).success(function(data, status, headers, config) {
			$scope.myCart = data;
		});

		$scope.getTotal = function() {
			var totalPrice = 0;
			for (var i = 0; i < $scope.myCart.length; i++) {
				totalPrice += $scope.myCart[i].productPrice
						* $scope.myCart[i].quantity;
			}
			return totalPrice;
		}

		$scope.quantity = [];
		$scope.cartQuantity = function(cart) {
			$scope.quantity.push(cart);
		}

		/* $scope.getIncQuantity = function() {
				var increasedQty = document.getElementById("increasedQty");
				$http.put('/cart/quantity/' +$scope.cart_id+increasedQty)
			
			}
		
		$scope.getQuantity = function(){
			var decreasedQty = document.getElementById("quantity");
			$http.put('/cart/quantity/' +quantity).success(function(){
				alert('quantity added');
			}).error(function (data,status){
				alert('not added');
			})
		}; */

		/* increasedQty.onchange=getIncQuantity;
		decreasedQty.onchange=getDecQuantity; */

	});

	/* 	function cartAjax() {
	 var data = {}

	 $.ajax({
	 type : "POST",
	 contentType : "application/json",
	 url : "${home}checkout",
	 data : JSON.stringify(data),
	 dataType : 'json',
	 timeout : 100000,
	 success : function(data) {
	 alert("success");
	 display(data);
	 },
	 error : function(e) {
	 alert(e);
	 display(e);
	 },
	 done : function(e) {
	 alert("done");
	 }

	 })
	 } */

	function goBack() {
		window.history.back();
	}
</script>
<style>
#addtocart {
	background-color: tomato; /* Green */
	border: none;
	color: white;
	padding: 18px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	width: 98%;
}

#wrap {
	background-color: black;
	width: 10px;
	border: 25px solid black;
	padding: 25px;
	margin: 25px;
}

.panel {
	background-color: #555;
	color: white;

	/*  border: 5px solid black; */
}
</style>

<c:choose>
<c:when test="${cartNumber>'0'}">

	<div class="container">
		<div class="row">
			<div class="col-xs-8">
				<a href="<c:url value='/index' />"><button type="button"
					class="btn btn-primary">Continue shopping</button></a>
		</div>

		<div class="col-xs-4" align="right">
			<a href="<c:url value='/clearall' />"><button type="button"
					class="btn btn-primary">Clear all</button></a>
		</div>
	</div>
</div>
<h1>
	<center>My Cart</center>
</h1>

<div class="container" data-ng-app="myCart"
	data-ng-controller="cartController">
	
	
	
	
	<div class="row">
		<c:url var="addAction" value="/cart/quantity"></c:url>
		<form:form action="${addAction}">
			<div class="col-xs-9">
				<table class="table">
					<thead>
						<tr>
							<th>Product</th>
							<th>Quantity</th>
							<th>Available</th>
							<th class="text-center">Price</th>

							<th> </th>
						</tr>
					</thead>

					<tbody>


						<tr data-ng-repeat="cart in myCart">



							<td class="col-xs-12">
								<div class="row">
									<div class="col-xs-5" >
										<a class="pull-left" href="#" > <img
											src="<c:url value="/resources/img/{{cart.imagename}}"/>"style="width:75%">
										</a>
									</div>

									<div class="col-xs-5">
										<h4>{{cart.productName}}</h4>
										<h5>by {{cart.productbrand}}</h5>
									</div>
								</div>

							</td>
							<!-- <button class="btn btn-success" id="increasedQty" type="button" data-ng-change="getIncQuantity" data-ng-click="count=count+1" >+</button> -->

							<!-- <td class="col-xs-1" style="text-align: center"><input
									path="quantity" type="number" value="{{cart.quantity}}"
									class="form-control text-center" ng-model="cart.quantity" /> <button class="btn btn-inverse" id="decreasedQty" type="button" data-ng-change="getDecQuantity" data-ng-click="count=count-1">-</button>
 -->
							<td class="col-xs-1" style="text-align: center"><input
								path="quantity" type="number" max={{cart.stock}}  min=1 value="{{cart.quantity}}"
								class="form-control text-center"></td>
								
								<td class="col-xs-1" style="text-align: center">{{cart.stock}}</td>
							<td class="col-sm-1" style="text-align: center">{{cart.productPrice}}</td>

							<td class="col-sm-1" style="text-align: center"><a
								href="<c:url value='/removecartproduct/{{cart.cart_id}}' />">
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove"></span> Remove
									</button>
							</a></td>

						</tr>




					</tbody>

				</table>


			</div>

			<div class="col-xs-3">

				<div class="panel">

					<h3 style="text-align: center">Order Summary</h3>
					<hr>

					<div class="panel-body">
						<div class="row">
							<div class="col-xs-6">
								<h5>ORDER:</h5>
							</div>
							<div class="col-xs-6">
								<h5>Rs.{{getTotal()}}</h5>
							</div>
						</div>

						<div class="row">
							<div class="col-xs-6">
								<h5>SHIPPING:</h5>
							</div>
							<div class="col-xs-6">
								<h5>FREE</h5>
							</div>
							<hr>
						</div>

						<div class="row">
							<div class="col-xs-6">
								<h5>TAX:</h5>
							</div>
							<div class="col-xs-6">
								<h5>NIL</h5>
							</div>

						</div>

						<div class="row">
							<hr>
							<div class="col-xs-6">

								<h5>TOTAL:</h5>
							</div>
							<div class="col-xs-6">
								<h5>Rs.{{getTotal()}}</h5>
							</div>
						</div>
						<button type="submit" id="addtocart">CHECKOUT</button>

					</div>

				</div>
			</div>
		</form:form>
	</div>

</div>
</c:when>


<c:otherwise>
<br>
<br>
<br>
<div align="center">
	<img src="<c:url value="/resources/img/emptycart.png"/>">
	<h3>Your shopping cart is empty</h3>
	<h3>Take a look at our wide range of products</h3>
</div>
</c:otherwise>
</c:choose>

<%@include file="/WEB-INF/views/footer.jsp"%>