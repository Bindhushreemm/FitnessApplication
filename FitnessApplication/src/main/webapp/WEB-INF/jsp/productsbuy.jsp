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
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
 <link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="style1.css">
<link rel="stylesheet" type="text/css" media="only screen and (max-device-width: 480px)" href="small-device.css" />
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<style>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


</style>
</head>
<body>
<!-- <div>
   <table>
<tr>
<c:forEach var="Product" items="${products}">
<img src="data:image/jpeg;base64,${Product.image}" width="250" height="250" title="Testing"><br>
<h5>${Product.name}</h5><br>
<h5>${Product.description}</h5>
<h5>${Product.price}</h5>
Quantity:<input type="number" >
<button>buy now</button>

</c:forEach></tr>
</table>
</div><br>
-->
<!--  <div>
<div float="left" class="a">


<img src="data:image/jpeg;base64,${p1.image}" width="250" height="250" title="Testing"><br>
<h1>${p1.name}</h1><br>
<h1>${p1.description} </h1><br>
<h1> ${p1.price} </h1><br>

<a href="/personalinfo"><button>pay</button></a>
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div  class="b">
<!--<img src="data:image/jpeg;base64,${p2.image}" width="250" height="250" title="Testing"><br>
<h1>${p2.name}</h1><br>
</div>


</div>
</div>-->
<section id="nav-bar">

<nav class="navbar navbar-expand-lg navbar-light ">
  <a class="navbar-brand" href="#"><img src="befiticon.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ms-auto">
      <li class="nav-item active">
        <a class="nav-link" href="frstpage"><h5 style="color:white;">Home </h5><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="productsbuy"><h5 style="color:white;">shop</h5></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="profile"><h5 style="color:white;">profile</h5></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="alogin"><h5 style="color:white;">admin</h5></a>
      </li>
      
      
    </ul>
  </div>
</nav>
</section>
<h1 style="text-align:center;margin-top:20px;">Store</h1>
<div class="mainf">

<div class="mainfrow">
<a href="completeinfo"><img src="data:image/jpeg;base64,${p1.image}" width="320" height="300" title="Testing"></a>
<h5 class="pdetails">${p1.name}</h5>
<h6 class="pdetails">${p1.price}</h6>
<!--  <h4 >${p1.description}</h4>

<a href="/personalinfo"><button>Buy</button></a>-->
</div>
<div class="mainfrow1">
<a href="completeinfo"><img src="data:image/jpeg;base64,${p1.image}" width="320" height="300" title="Testing"></a>
<h5 class="pdetails">${p1.name}</h5>
<h6 class="pdetails">${p1.price}</h6>
</div>
<div class="mainfrow2">
<a href="completeinfo"><img src="data:image/jpeg;base64,${p1.image}" width="320" height="300" title="Testing"></a>
<h5 class="pdetails">${p1.name}</h5>
<h6 class="pdetails">${p1.price}</h6>
</div>


</div>
</body>
</html>