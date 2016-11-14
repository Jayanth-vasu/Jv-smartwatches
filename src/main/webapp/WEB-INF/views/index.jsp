
<%@include file="/WEB-INF/views/header.jsp"%>
<style>
.newlaunch-box {
	max-width: 1500px;
	margin: auto;
	padding: 30px;
	border: 1px solid #eee;
	box-shadow: 0 0 10px rgba(0, 0, 0, .15);
	font-size: 16px;
	line-height: 24px;
	font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
	color: #555;
}

.viewall {
	background-color: #00bfff; 
	border: none;
	color: white;
	padding: 8px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	width: 40%;
	
}

.carousel-control.left{
background-image: linear-gradient(to right,rgba(0,0,0,0) 0,rgba(0,0,0,.0001) 100%);
}

.carousel-control.right
{
background-image: linear-gradient(to right,rgba(0,0,0,0) 0,rgba(0,0,0,.0001) 100%);
}

</style>
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
						<img src="<c:url value="/resources/img/moto360slide.jpg" />"
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


	<div class="newlaunch-box" >
		
		<div class="content row" >
		
		<div class="col-xs-3 " style="padding-right:20px">
				<h2 style="padding-top:50px">NEW LAUNCHES</h2>
				<div align="center"><a href="<c:url value="/viewallproducts"/>" ><button class="viewall" >VIEW ALL</button></a></div>
			</div>
		
		<div class="col-xs-3">
		<img class="img-responsive "
					src="<c:url value="/resources/img/moto2.jpeg"/>" style="width:75%"
					alt=" ">
					<h4> Moto 360 2nd Gen</h4>
					
					
		
		</div>
		
		<div class="col-xs-3">
		<img class="img-responsive "
					src="<c:url value="/resources/img/fossil1.jpeg"/>" style="width:58%"
					alt=" ">
			<h4>Fossil Marshall Smartwatch</h4>
				
		</div>
		
		
		<div class="col-xs-3">
		<a href="#"><img class="img-responsive "
					src="<c:url value="/resources/img/huawei1.jpeg"/>" style="width:55%"
					alt=" "></a>
					<h4>Huawei  Smartwatch</h4>
		
		</div>
		
		
		
	
			
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="newlaunch-box" style="padding-top:20px">
		
		<div class="content row">
		
		<div class="col-xs-3 " style="padding-right:20px">
				<h2 style="padding-top:50px">BEST SELLERS</h2>
				<div align="center"><a href="<c:url value="/viewallproducts"/>" ><button class="viewall" >VIEW ALL</button></a></div>
			</div>
		
		<div class="col-xs-3">
		<img class="img-responsive "
					src="<c:url value="/resources/img/moto1.jpeg"/>"style="width:75%"
					alt=" ">
			<h4> Moto 360 Sport Smartwatch</h4>
		</div>
		
		<div class="col-xs-3">
		<img class="img-responsive "
					src="<c:url value="/resources/img/asus1.jpeg"/>"style="width:55%"
					alt=" ">
		<h4>Asus ZenWatch 2 Silver Case</h4>
		</div>
		
		
		<div class="col-xs-3">
		<img class="img-responsive "
					src="<c:url value="/resources/img/apple3.jpeg"/> "style="width:75%"
					alt=" ">
		<h4>Apple Watch </h4>
		</div>
	
			
		</div>
	</div>

</div>


<%@ include file="/WEB-INF/views/footer.jsp"%>



