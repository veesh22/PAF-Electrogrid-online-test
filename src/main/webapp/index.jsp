<%@page import="com.paf.rangeapi.models.rangeDAO"%>
<%
rangeDAO rangeDAO = new rangeDAO();
%>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Range API</title>
<!-- Bootstrap CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="style/main.css"/>
</head>
<body>
	<div id="category-table" class="container-fluid p-3">
		<div>
			<button class="btn btn-warning" id="add-range-button">Add
				Range Details</button>
		</div>
		<%=rangeDAO.getRange()%>
	</div>
	<div id="add-form"
		class="container-fluid p-5 bg-dark bg-opacity-10 w-75 rounded">
		<!-- back button -->
		<button id="back-btn"
			style="border: none; background-color: #ffffff00">
			<i class="fa-solid fa-circle-left" style="font-size: 20pt"></i>
		</button>
		<form class="row g-3 needs-validation" novalidate
			action="http://localhost:8051/categoryapi/webapi/categories/category"
			method="post" id="add-category-form">
			<!-- Range ID -->
			<div class="col-md-4" style="display: none">
				<input name="rangeID" type="text" class="form-control"
					id="rangeID" value="0" />
			</div>

			<!-- Upper limit -->
			<div class="col-md-4">
				<label for="categoryName" class="form-label">Upper limit</label> <input
					name="upperLimit" type="text" class="form-control"
					id="upperLimit" placeholder="Ex: 20" required />
				<div class="valid-feedback">Looks good!</div>
			</div>

			<!-- Lower limit -->
			<div class="col-md-4">
				<label for="lowerLimit" class="form-label">Lower limit</label> <input
					name="lowerLimit" type="number" class="form-control"
					id="lowerLimit" placeholder="Ex: 10" required />
				<div class="valid-feedback">Looks good!</div>
			</div>

			<!-- Unit price -->
			<div class="col-md-4">
				<label for="unitPrice" class="form-label">Unit Price</label> <input
					name="unitPrice" type="number" class="form-control"
					id="unitPrice" placeholder="Ex: 50.00" required />
				<div class="valid-feedback">Looks good!</div>
			</div>

			<!-- Submit button -->
			<div class="col-12">
				<button id="add-range-submit" class="btn btn-primary"
					type="submit">Insert</button>
			</div>

			<!-- clear button -->
			<div class="col-12">
				<button id="reset-form" class="btn btn-danger" type="reset">
					Clear</button>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<script src="js/insert.js"></script>
</body>
	
</html>
