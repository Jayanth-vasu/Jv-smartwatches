
<%@include file="/WEB-INF/views/header.jsp"%>

<div class="container">

	<div class="row">
		<div class="col-xs-12"></div>
	</div>
	<div class="row">
		<div class="col-xs-3">
			<h2>Brands</h2>

			<c:forEach items="${listbrand}" var="br">
				<ul class="nav nav-pills nav-stacked">

					<li><a href="<c:url value='/brand/${br}'/>"
						class="hvr-float-shadow">${br}</a></li>


				</ul>
			</c:forEach>

			
		</div>




		<div class="col-xs-9">
			<div id="the-slider" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#the-slider" data-slide-to="0" class="active"></li>
					<li data-target="#the-slider" data-slide-to="1"></li>
					<li data-target="#the-slider" data-slide-to="2">
					<li data-target="#the-slider" data-slide-to="3"></li>

				</ol>

				<div class="carousel-inner">

					<div class="item active">
						<img
							src="<c:url value="/resources/img/moto360slide.jpg" />"
							alt=" ">
					</div>
					<!---item1--->

					<div class="item">
						<img src="<c:url value="/resources/img/moto360slide1.jpg" />"
							alt=" ">
					</div>
					<!---item2--->

					<div class="item">
						<img src="<c:url value="/resources/img/fitbitslide.jpg" />"
							alt=" ">
					</div>

					<div class="item">
						<img src="<c:url value="/resources/img/alcatelslide.jpg" />"
							alt=" ">
					</div>
					<!---item3--->

				</div>
				<!---carousel-inner--->
				<!---controls---->
				<a class="left carousel-control" href="#the-slider" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"> </span>
				</a> <a class="right carousel-control" href="#the-slider" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"> </span>
				</a>
			</div>
		</div>
	</div>
	<!---slider--->



	<!---row3---->

	<hr>
	<h1>
		<center>EXPLORE BRANDS</center>

	</h1>

	<div class="content row">
		<div class="col-xs-3 ">
			<p>
				<a href="motobrand"><img class="img-responsive"
					src="<c:url value="/resources/img/motobrand.jpg" />" alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3">
			<p>
				<a href="huaweibrand"><img class="img-responsive"
					src="https://img1a.flixcart.com/www/email/images/20160505-161553-huawei_logo.jpg"
					alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3 ">
			<p>
				<a href="asusbrand"><img class="img-responsive "
					src="https://img1a.flixcart.com/www/email/images/20160505-161703-asus_logo.jpg"
					alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3 ">
			<p>
				<a href="samsungbrand"><img class="img-responsive"
					src="https://img1a.flixcart.com/www/email/images/20160505-162024-samsung_logo.png"
					alt=" "></a>
			</p>
		</div>

	</div>
	<!---row--->
	<%@ include file="shopbycategory.jsp"%>

	<%-- <%@ include file="productcarousel.jsp"%> --%>
	<br>

	<h1>
		<center>NEW LAUNCHES</center>
	</h1>
	<div class="content row">
		<div class="col-xs-3 ">
			<p>
				<a href=''><img class="img-responsive"
					src="http://img5a.flixcart.com/image/smartwatch/z/m/p/ap3631ab1k8-motorola-200x200-imaeg57knxjgggwp.jpeg"
					alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3">
			<p>
				<a href='#'><img class="img-responsive"
					src="http://img5a.flixcart.com/image/smartwatch/b/t/g/ap3627at6k8-motorola-200x200-imaebunsrxyhsg4w.jpeg"
					alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3 ">
			<p>
				<a href='#'><img class="img-responsive "
					src="http://img5a.flixcart.com/image/smartwatch/q/j/z/na-sony-200x200-imaehzkzfaczjzhn.jpeg"
					alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3 ">
			<p>
				<a href='#'><img class="img-responsive"
					src="http://img6a.flixcart.com/image/smartwatch/2/c/n/sm03-alcatel-200x200-imaejwfzargazwqn.jpeg"
					alt=" "></a>
			</p>
		</div>

	</div>
	<hr>

	<h1>
		<center>BEST SALES</center>
	</h1>
	<div class="content row">
		<div class="col-xs-3 ">
			<p>
				<a href=''><img class="img-responsive"
					src="http://img6a.flixcart.com/image/smartwatch/w/h/p/ap3627as6k8-motorola-200x200-imaebunsrt3x3gnh.jpeg"
					alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3">
			<p>
				<a href='#'><img class="img-responsive"
					src="http://img5a.flixcart.com/image/smartwatch/j/z/j/ap3628ab1k8-motorola-200x200-imaebuntnzzrryug.jpeg"
					alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3 ">
			<p>
				<a href='#'><img class="img-responsive "
					src="http://img5a.flixcart.com/image/smartwatch/v/c/m/ap3629an7k8-motorola-200x200-imaebunt8hzvfsyj.jpeg"
					alt=" "></a>
			</p>
		</div>

		<div class="col-xs-3 ">
			<p>
				<a href='#'><img class="img-responsive"
					src="http://img6a.flixcart.com/image/smartwatch/8/y/t/wi501q-2lblu0015-asus-200x200-imaeegsfgfnwy3du.jpeg"
					alt=" "></a>
			</p>
		</div>

	</div>
	
</div>


<%@ include file="/WEB-INF/views/footer.jsp"%>



