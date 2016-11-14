<%@include file="/WEB-INF/views/header.jsp"%>

<style>
.container {
	padding-bottom: 25px;
}

.error {
	color: #ff0000;
	padding: 8px;
}

.errorblock {
	color: black;
	background-color: #000000;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<div class="container" id="wrap">

	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<c:url var="addAction" value="/product/add"></c:url>
			<form:form action="${addAction}" method="POST"
				modelAttribute="smartproducts" accept-charset="utf-8" class="form"
				role="form" enctype="multipart/form-data">


				<h1>Add Products</h1>
				<p></p>



				<form:input path="product_name" class="form-control input-lg"
					placeholder="Product name" />
				<form:errors path="product_name" cssClass="error" />

				<br>

				<form:select path="product_category" class="form-control input-lg"
					placeholder="Product Category">
					<form:option value="Smart Notifiers">Smart Notifiers</form:option>
					<form:option value="Watch Phones">Watch Phones</form:option>
					<form:option value="Health & Medical">Health & Medical</form:option>
					<form:option value="Fitness & Outdoor">Fitness & Outdoor</form:option>
				</form:select>

				<br>



				<form:select path="product_brand" required="true"
					class="form-control input-lg" placeholder="Product Brand">
					<form:option value="Moto 360">Moto 360</form:option>
					<form:option value="Huawei">Huawei</form:option>
					<form:option value="Intex">Intex</form:option>
					<form:option value="Samsung">Samsung</form:option>
					<form:option value="Alcatel">Alcatel</form:option>
					<form:option value="Apple">Apple</form:option>
					<form:option value="Asus">Asus</form:option>
					<form:option value="Fossil">Fossil</form:option>

				</form:select>



				<br>


				<form:textarea path="product_description"
					class="form-control input-lg" placeholder="Product Description" />
				<form:errors path="product_description" cssClass="error" />

				<br>
				<div class="row">
					<div class="col-xs-6">
						<form:label path="product_price">Price</form:label>
						<form:input path="product_price" class="form-control" rows="5"
							placeholder="Product price" />
						<form:errors path="product_price" cssClass="error" />
					</div>




					<div class="col-xs-6">
						<form:label path="stock">Stock</form:label>
						<form:input path="stock" class="form-control "
							required="true" placeholder="Product in stock" />
						<form:errors path="stock" cssClass="error" />

					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-xs-6">
						<form:input path="status" class="form-control"
							required="true" placeholder="Status" />
						<form:errors path="status" cssClass="error" />
					</div>

					<div class="col-xs-6">
						<form:label path="image">Product Image</form:label>
						<form:input type="file" path="image" required="true" />
						<form:errors path="image" cssClass="error" />
					</div>
					<br>
				</div>





<br>
				<div class="row">
					<div class="col-xs-6">

						<button class="btn btn-lg btn-success btn-block signup-btn"
							type="submit" value="submit">Add Product</button>
					</div>


				</div>
			</form:form>
			<br>
			<div class="row">
				<div class="col-xs-6">
					<a href="<c:url value="/viewallproducts"/>"><button
							class="btn btn-lg btn-primary btn-block signup-btn">View
							all</button></a>


				</div>
			</div>
		</div>
	</div>
</div>



<%@ include file="/WEB-INF/views/footer.jsp"%>