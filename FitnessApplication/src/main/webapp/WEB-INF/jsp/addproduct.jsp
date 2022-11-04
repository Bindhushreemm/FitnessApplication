<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Default form subscription -->
<div class="card">
	<div class="card-header">
		<p class="h4 mb-2 text-center">Add Product</p>
	</div>
	<div class="card-body">
		<form class="text-center border border-light p-5" action="addP" method="post" enctype="multipart/form-data">

			<!-- Name -->
			<input type="text" name="pname" id="name" class="form-control mb-4"
				placeholder="Product Name"><br><br>

			<!-- Price -->
			<input type="text" name="price" id="price" class="form-control mb-4"
				placeholder="Product Price"><br><br>

			<!-- Description -->
			<textarea class="form-control mb-4" id="desc" name="desc"
				placeholder="Product Description">Product Description
                                 </textarea><br><br>
			<div class="custom-file mb-4">
				<input type="file" name="file" class="custom-file-input"
					id="customFile"> <label class="custom-file-label"
					for="customFile">Product Image</label>
			</div><br><br>
			<!-- Sign in button -->
			<button class="btn btn-info btn-block" type="submit">add</button>
		</form>
	</div>
</div>
<!-- Default form subscription -->
</body>
</html>