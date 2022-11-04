<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.test.model.UserSub" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<style>
table, th, td {
  border: 1px solid black;
}
th,td {
    padding: 0 35px;
  }
.tablea{
margin-top:180px;
width:80%;
margin-left:150px;
}
h1{
margin-top:50px;}
</style>
</head>
<body>

<!-- navigation bar -->


	<section id="nav-bar">

		<nav class="navbar navbar-expand-lg navbar-light ">
			<a class="navbar-brand" href="#"><img src="befiticon.png"></a>
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
<%//out.println("the list") ;
HttpSession session1=request.getSession();  
List<UserSub> data=(List)session1.getAttribute("data");%>
<h1 style="text-align:center">Subscribers list for prime</h1>
<table class="tablea">
<th>firstname</th>
<th>lastname</th>
<th>address</th>
<th>email</th>
<th>phono</th>
<th>startdate</th>
<th>amount</th>
<th>status</th>
<th>delete</th>

<tbody>
<% for(UserSub usr:data){
out.println("<tr><td>"+usr.getFirstname()+"</td><td>"+usr.getLastname()+"</td><td>"+usr.getAddress()+"</td><td>"+usr.getEmail()+"</td><td>"+usr.getPhono()+"</td><td>"+usr.getStartdate()+"</td><td>"+usr.getAmount()+"</td><td>"+usr.getStatusamount()+"</td><td>"+"<a href='delete'>delete</a>"+"</td></tr>");
}%>
</tbody>
</table>


</body>
</html>