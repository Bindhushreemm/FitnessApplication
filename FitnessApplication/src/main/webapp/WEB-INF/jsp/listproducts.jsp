<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ page import="com.test.model.Product"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<link href="style1.css" rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="registerstyle.css">
<link rel="stylesheet" type="text/css"
	media="only screen and (max-device-width: 480px)"
	href="small-device.css" />
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 0 35px;
}

td {
	padding-top: .5em;
	padding-bottom: .5em;
	
}

div {
	column-gap: 40px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- navigation bar -->


	<section id="nav-bar">

		<nav class="navbar navbar-expand-lg navbar-light ">
			
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item active"><a class="nav-link"
						href="frstpage"><h5 style="color: white;">Home</h5>
							<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="products"><h5
								style="color: white;">Add products</h5></a></li>
					<li class="nav-item"><a class="nav-link" href="listproducts"><h5
								style="color: white;">list products</h5></a></li>
					<li class="nav-item"><a class="nav-link " href="orderspage"><h5
								style="color: white;">orders</h5></a></li>
					


				</ul>
			</div>
		</nav>
	</section>
	<div>
		<h3 style="text-align:center">List of products</h3>
		<hr>
		<center>
			<table>

				<tr>
				<th>Product id</th>
					<th scope="col">image</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<th scope="col">name</th>&nbsp;&nbsp;&nbsp;&nbsp;
					<th scope="col">description</th>&nbsp;&nbsp;&nbsp;&nbsp;
					<th scope="col">price</th>&nbsp;&nbsp;&nbsp;&nbsp;
					<th scope="col">delete</th>&nbsp;&nbsp;&nbsp;&nbsp;
				</tr>
				<tbody>
					<c:forEach var="Product" items="${products}">
					
						<tr>
						<td>${Product.id}</td>
						
							<td><img src="data:image/jpeg;base64,${Product.image}"
								width="150" height="150" title="Testing"></td>

							<!--  <td>${Product.id}</td>-->
							<td>${Product.name}<br> <!--<button>change name</button>-->
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-primary"
									data-toggle="modal"
									data-target="#exampleModalCenter" style="background-color:black; border-radius:5px;">
									Change name</button> <!-- Modal -->
								<div class="modal fade in"
									id="exampleModalCenter" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalCenterTitle"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLongTitle">Change
													name</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form action="changename" method="post">
								        <label>product id</label><input value="${Product.id}" name =id placeholder="${Product.id}"><br>
								        <label>new Product name</label>
								        <input type="text" name="newpname"><br>
								         <button type="submit" class="btn btn-primary">Update changes</button>
								        </form>
								        
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>

											</div>
										</div>
									</div>
								</div>
							</td>
							<td>${Product.description}<br> 
							<button type="button" class="btn btn-success btn-sm mt-2"
								data-toggle="modal"
								data-target="#exampleModalCenterDesc" style="background-color:black; border-radius:5px;">change
								description</button> <!-- Modal -->
							<div class="modal fade"
								id="exampleModalCenterDesc" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalCenterTitle">change
												product description</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">

											<form action="descriptions" method="post">
												<div class="form-group">
													<label>product id</label> <input type="text"
														value="${product.id}" class="form-control" name="id"><br>
													<label>new Product description</label> <input type="text"
														name="newdesc" class="form-control"> <br>
													<button type="submit" class="btn btn-primary">submit</button>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>

										</div>
									</div>
								</div>
							</div>
							</td>

							<td>${Product.price}<br>
							
							<!-- Button trigger modal --> 
							<button type="button" class="btn btn-success btn-sm mt-2"
								data-toggle="modal"
								data-target="#exampleModalCenterPrice" style="background-color:black; border-radius:5px;">change
								price</button> <!-- Modal -->
							<div class="modal fade"
							    id="exampleModalCenterPrice" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalCenterTitle">change
												product price</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">

											<form action="/changeprice" method="post">
												<div class="form-group">
													<label>product id</label> <input type="text"
														value="${product.id}" class="form-control" name="id"><br>
													<label>new Product price</label> <input type="text"
														name="pprice" class="form-control"> <br>
													<button type="submit" class="btn btn-primary">submit</button>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>
							
								
							</td>
							<td>
							
							<!-- Button trigger modal --> <br>
							<button type="button" class="btn btn-success btn-sm mt-2"
								data-toggle="modal"
								data-target="#exampleModalCenterdelete" style="background-color:red; border-radius:5px;">delete
								product</button> <!-- Modal -->
							<div class="modal fade"
							    id="exampleModalCenterdelete" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalCenterTitle">delete
												product</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">

											<form action="/deleteproduct" method="post">
												<div class="form-group">
													<label>product id</label> <input type="text"
														value="${product.id}" class="form-control" name="id">
													
													<button type="submit" class="btn btn-primary">submit</button>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>
							</td>
							



						</tr>

					</c:forEach>




				</tbody>


			</table>
		</center>





	</div>















</body>
</html>