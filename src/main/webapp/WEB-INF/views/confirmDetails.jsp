

<%@include file="/WEB-INF/views/header.jsp"%>

<h1 align="center" >Confirm Details</h1>

<br>
<br>
	<div class="container" >
	
	<!-- <div class="panel panel-default" align="center">
	<div class="panel-body"> -->
	<div class="row">
		<div class="col-xs-6" align="right">
		<img src="<c:url value="/resources/img/confirm2.jpg"/>">
		
		</div>
		<div class="col-xs-6" >
			
			
			<br />
			<form:form modelAttribute="userDetails" style="font-size:20px" align="justify">
				<form:label path="user_firstname">User's first name:</form:label> ${userDetails.user_firstname}
					<br />
				<br />
				<form:label path="user_lastname">User's last name:</form:label> ${userDetails.user_lastname}
					<br />
				<br />
				<form:label path="mail_id">Email :</form:label> ${userDetails.mail_id}
					<br />
					<br />
				<form:label path="mobile_number">Mobile number :</form:label> ${userDetails.mobile_number}
					<br />
					<br />
				
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<button class="btn btn-primary" name="_eventId_edit" type="submit" value="Edit" >Edit</button>
				
				<button class="btn btn-success" name="_eventId_submit" type="submit" value="Confirm Details" >Confirm</button>
				<br />
			</form:form>
		</div>
			</div>
	</div>
	</div>
	</div>
