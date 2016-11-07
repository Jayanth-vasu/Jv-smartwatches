<style>
.panel {
	margin-bottom: 2px;
}

.back-to-top {
	cursor: pointer;
	position: fixed;
	bottom: 100px;
	right: 20px;
	display: none;
}

.panel-footer {
	background-color: white;
}

.verticalLine {
	border-left: solid black;
}


.td {
	padding: 35px;
	border: 1px solid rgba(183, 177, 177, 0.075);
}

.glyphicon.glyphicon-remove-circle {
	font-size: 50px;
}

.glyphicon.glyphicon-heart-empty {
	font-size: 50px;
}

.glyphicon.glyphicon-refresh {
	font-size: 50px;
}

strong {
	font-size: 20px;
}

i {
	color: blue;
}


</style>


<script>
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 50) {
				$('#back-to-top').fadeIn();
			} else {
				$('#back-to-top').fadeOut();
			}
		});
		// scroll body to 0px on click
		$('#back-to-top').click(function() {
			$('#back-to-top').tooltip('hide');
			$('body,html').animate({
				scrollTop : 0
			}, 800);
			return false;
		});

		$('#back-to-top').tooltip('show');

	});
	
	
	
</script>
<div class="container" style="padding-top: 50px">

	<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top"
		role="button" title="Click to return on the top page"
		data-toggle="tooltip" data-placement="left"><span
		class="glyphicon glyphicon-chevron-up"></span></a>

	<div class="panel-footer">
		
			<table>

				<tr>

					<!-- <div class="verticalLine"></div> -->

					<td valign="middle" class="td">
						<div class="col-xs-4">
							<span class="glyphicon glyphicon-heart-empty"></span>
						</div>
						<div class="col-xs-8">
							<Strong>FAVORITE COLLECTIONS</Strong>
						</div>

					</td>


					<td valign="middle" class="td">

						<div class="col-xs-4">
							<span class="glyphicon glyphicon-refresh"></span>
						</div>
						<div class="col-xs-8">
							<Strong>FREE & EASY RETURNS</Strong>
						</div>
					</td>







					<td valign="middle" class="td">
						<div class="col-xs-4">
							<span class="glyphicon glyphicon-remove-circle"></span>
						</div>
						<div class="col-xs-8">
							<strong>ONLINE CANCELLATIONS</strong>
						</div>
					</td>
				</tr>

			</table>
		

		<div class="row" style="padding-top: 20px">
			<div class="col-xs-8">
				<h5>Policies: Returns Policy | Terms of use | Security |
					Privacy | Infringement © 2016 JV smartwatches.com</h5>

			</div>

			<div class="col-xs-4" align="right">
				<a href="https://www.facebook.com"><i
					class="fa fa-facebook-square fa-3x social"></i></a> <a
					href="https://twitter.com"><i
					class="fa fa-twitter-square fa-3x social"></i></a> <a
					href="https://plus.google.com"><i
					class="fa fa-google-plus-square fa-3x social"></i></a> <a href=#><i
					class="fa fa-envelope-square fa-3x social"></i></a>

			</div>

		</div>

		<div class="row">
		<hr style="border-top: 1px solid rgba(0, 0, 0, .075);">
		<div class="col-xs-6">
		<h3>CONTACT US</h3>
				<h2>JV smartwatches</h2>
				<address>
					<strong>Express Avenue</strong><br> No.2,Club House
					Road,second floor<br> Royapettah,Tamil Nadu<br> 
					Chennai-600002<br> <abbr title="Phone">Ph:</abbr>
					9884910150
				</address>
			</div>
		
		
		
			<div class="col-xs-6" align="right">
				
				<h5>PAYMENT OPTIONS</h5>
				<img src="http://i76.imgup.net/accepted_c22e0.png">
				
			</div>
<hr style="border-top: 1px solid rgba(0, 0, 0, .075);">
		</div>

		<div class="row">
			
			

			
			<%-- <div class="col-xs-6">
			<img src="<c:url value="/resources/img/map.png"/>">
			</div> --%>
		</div>


		</div>
		

		<!-- <div class="panel-footer">@ Copyrights 2016</div> -->
	</div>


</body>
</html>