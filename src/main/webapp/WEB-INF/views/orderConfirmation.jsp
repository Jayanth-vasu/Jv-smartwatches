 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Details</title>
</head>

<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->

			<form:form modelAttribute="shippingAddress">

				<form:label path="">User name:</form:label>${pageContext.request.userPrincipal.name}
					<br />
				<br />

				<form:label path="street_name">Street name:</form:label>${shippingAddress.street_name}
					<br />
				<br />
				<form:label path="city">City:</form:label>${shippingAddress.city}
					<br />
				<br />
				<form:label path="state">State :</form:label>${shippingAddress.state}
					<br />
				<br />
				<form:label path="post_code">Postal code :</form:label>${shippingAddress.post_code}
					<br />
				<br />
				<form:label path="country">Country:</form:label>${shippingAddress.country}
					<br />
				<br />

				<c:forEach items="${cartItem}" var="item">

					<form:label path="country">product name:</form:label>${item.productName}
					<br />
					<br />

					<form:label path="country">product price:</form:label>${item.productPrice}
					<br />
					<br />


					<form:label path="country">quantity:</form:label>${item.quantity}
					<br />
					<br />


					<form:label path="country">product brand:</form:label>${item.productbrand}
					<br />
					<br />

				</c:forEach>




<%-- 				<style>
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
				</head>

				<body>
					<div class="invoice-box">
						<table cellpadding="0" cellspacing="0">
							<tr class="top">
								<td colspan="2">
									<table>
										<tr>
											<td class="title"><img
												src="<c:url value="/resources/img/jv1.jpg" />"></td>

											<td>Invoice #: 123<br> Created: January 1, 2015<br>
												Due: February 1, 2015
											</td>
										</tr>
									</table>
								</td>
							</tr>

							<tr class="information">
								<td colspan="2">
									<table>
										<tr>
											<td>Next Step Webs, Inc.<br> 12345 Sunny Road<br>
												Sunnyville, TX 12345
											</td>

											<td>Acme Corp.<br> John Doe<br>
												john@example.com
											</td>
										</tr>
									</table>
								</td>
							</tr>

							<tr class="heading">
								<td>Payment Method</td>

								<td>Check #</td>
							</tr>

							<tr class="details">
								<td>Check</td>

								<td>1000</td>
							</tr>

							<tr class="heading">
								<td>Item</td>

								<td>Price</td>
							</tr>

							<tr class="item">
								<td>Website design</td>

								<td>$300.00</td>
							</tr>

							<tr class="item">
								<td>Hosting (3 months)</td>

								<td>$75.00</td>
							</tr>

							<tr class="item last">
								<td>Domain name (1 year)</td>

								<td>$10.00</td>
							</tr>

							<tr class="total">
								<td></td>

								<td>Total: $385.00</td>
							</tr>
						</table>
					</div>
				</body>
</html>





<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as: --%>
					-->
<input name="_eventId_edit" type="submit" value="Edit" />
<input name="_eventId_submit" type="submit" value="Confirm Details" />
<br />
</form:form>
</fieldset>
</div>
</body>

</html> 