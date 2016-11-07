<%@include file="/WEB-INF/views/header.jsp"%>

<style>
.invoice-box {
	max-width: 800px;
	margin: auto;
	padding: 30px;
	border: 1px solid #eee;
	box-shadow: 0 0 10px rgba(0, 0, 0, .15);
	font-size: 16px;
	line-height: 24px;
	font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
	color: #555;
}

.invoice-box table {
	width: 100%;
	line-height: inherit;
	text-align: left;
}

.invoice-box table td {
	padding: 5px;
	vertical-align: top;
}

.invoice-box table tr td:nth-child(2) {
	text-align: right;
}

.invoice-box table tr.top table td {
	padding-bottom: 20px;
}

.invoice-box table tr.top table td.title {
	font-size: 45px;
	line-height: 45px;
	color: #333;
}

.invoice-box table tr.information table td {
	padding-bottom: 40px;
}

.invoice-box table tr.heading td {
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-weight: bold;
}

.invoice-box table tr.details td {
	padding-bottom: 20px;
}

.invoice-box table tr.item td {
	border-bottom: 1px solid #eee;
}

.invoice-box table tr.item.last td {
	border-bottom: none;
}

.invoice-box table tr.total td:nth-child(2) {
	border-top: 2px solid #eee;
	font-weight: bold;
}

@media only screen and (max-width: 600px) {
	.invoice-box table tr.top table td {
		width: 100%;
		display: block;
		text-align: center;
	}
	.invoice-box table tr.information table td {
		width: 100%;
		display: block;
		text-align: center;
	}
}
</style>
<script>





	var app = angular.module('invoice', []);
	app.controller('invoiceController', function($scope, $http) {
		$http({
			method : 'GET',
			url : 'http://localhost:8089/jvsmartwatches/order'
		}).success(function(data, status, headers, config) {
			
			$scope.orderDetails = data;
			
			
		});
		
		$scope.getTotal = function() {
			var totalPrice = 0;
			for (var i = 0; i < $scope.orderDetails.length; i++) {
				totalPrice = $scope.orderDetails[i].cart.productPrice * $scope.orderDetails[i].cart.quantity;
			}
			
			return totalPrice;
		}
		
	});
	
	

	
</script>


<div class="container" >
<div class="invoice-box" >
	<table cellpadding="0" cellspacing="0" data-ng-app="invoice" data-ng-controller="invoiceController">
		<tr class="top">
			<td colspan="2">
				<table>
					<tr>
						<td class="title"><img
							src="<c:url value="/resources/img/jv1.jpg" />"></td>

						
					</tr>
				</table>
			</td>
		</tr>

		<tr class="information">
			<td colspan="2">
				<table>
					<tr>
					
						<td class='pull-left control-group'>{{orderDetails[0].userDetails.user_firstname}} {{orderDetails[0].userDetails.user_lastname}}<br>
						${pageContext.request.userPrincipal.name}<br> {{orderDetails[0].userDetails.mobile_number}}<br> 
						</td>

						<td class='pull-right control-group'> 
						${shippingAddress.street_name}<br>
						${shippingAddress.city}-${shippingAddress.post_code}<br>
						${shippingAddress.state},${shippingAddress.country}<br>
							 
						
						</td>
					</tr>
				</table>
			</td>
		</tr>



		<tr class="heading">
			<td>Item</td>

			<td>Quantity</td>

			<td>Price</td>
			
			
		</tr>


		<tr class="item" data-ng-repeat="or in orderDetails">
			<td>{{or.cart.productName}}</td>
			
			<td align="center">{{or.cart.quantity}}</td>
			
			
			<td>{{or.cart.productPrice}}</td>
		</tr>



		<tr class="total">
			<td></td>
			<td></td>
			<td>Total:{{getTotal()}}</td>
		</tr>
	</table>
	
</div>
</div>
</body>
</html>
