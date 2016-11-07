<%@include file="/WEB-INF/views/header.jsp"%>
<body>
	<style>
.box {
	background: #fff;
	transition: all 0.2s ease;
	border: 2px dashed #dadada;
	margin-top: 10px;
	box-sizing: border-box;
	border-radius: 5px;
	background-clip: border-box;
	padding: 0 20px 20px 20px;
	min-height: 34px;
}

.box:cursor {
	border: 2px solid #525C7A;
}

.box span.box-title {
	color: #fff;
	font-size: 24px;
	font-weight: 300;
	text-transform: uppercase;
}

.box .box-content {
	padding: 16px;
	border-radius: 0 0 2px 2px;
	background-clip: padding-box;
	box-sizing: border-box;
}

.box .box-content p {
	color: #515c66;
	text-transform: none;
}

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
</style>
	<div class="container">
		<div class="row">
			<h2 class="text-center">Services Blocks</h2>
			<div class="row">
				<div class="col-md-4 text-center">
					<div class="box">
						<div class="box-content">
							<h1 class="tag-title">Manage Products</h1>
							<hr />
							<div class="row">
								<div class="col-xs-6">
									<a href="<c:url value="/product"/>">
										<button type="button" class="btn btn-labeled btn-success">
											<span class="btn-label"><i
												class="glyphicon glyphicon-plus"></i></span>Add Products
										</button>
									</a>
								</div>
								<div class="col-xs-6">
									<a
										href="<c:url value="/viewallproducts"/>">
										<button type="button" class="btn btn-labeled btn-primary">
											<span class="btn-label"><i
												class="glyphicon glyphicon-pencil"></i></span>Edit Products
										</button>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center">
					<div class="box">
						<div class="box-content">
							<h1 class="tag-title">Manage Brands</h1>
							<hr />

							<div class="row">
								<div class="col-xs-6">
									<a href="ppc.html">
										<button type="button" class="btn btn-labeled btn-success">
											<span class="btn-label"><i
												class="glyphicon glyphicon-plus"></i></span>Add Brands
										</button>
									</a>
								</div>
								<div class="col-xs-6">
									<a href="ppc.html">
										<button type="button" class="btn btn-labeled btn-primary">
											<span class="btn-label"><i
												class="glyphicon glyphicon-pencil"></i></span>Edit Brands
										</button>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center">
					<div class="box">
						<div class="box-content">
							<h1 class="tag-title">Manage Category</h1>
							<hr />

							<div class="row">
								<div class="col-xs-6">
									<a href="category">
										<button type="button" class="btn btn-labeled btn-success">
											<span class="btn-label"><i
												class="glyphicon glyphicon-plus"></i></span>Add Category
										</button>
									</a>
								</div>
								<div class="col-xs-6">
									<a href="ppc.html">
										<button type="button" class="btn btn-labeled btn-primary">
											<span class="btn-label"><i
												class="glyphicon glyphicon-pencil"></i></span>Edit Category
										</button>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>