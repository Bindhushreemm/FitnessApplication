<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

.right{
text-align:right;}
.bg-image {
  /* The image used */
  background-image: url("gymbg.jpg");

  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: absolute;
      left: 0px;
      top: 0px;
      z-index: -1;
      width: 100%;
      height: 100%;
      -webkit-filter: blur(5px); /* Safari 6.0 - 9.0 */
      filter: blur(5px);
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- navigation bar -->


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
<div class=""></div>
<div class="ocards">

<div class="container">
  <img class="img" src="passex1.png?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=&bg=" alt="" />
 
  <div class="overlay"></div>
  <div class="button"><a href="subscription1">join</a></div>
</div>
<div class="container">
  <img class="img" src="passex23.webp?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=&bg=" alt="" />
  
  <div class="overlay"></div>
  <div class="button"><a href="transfer.jsp">join</a></div>
</div>
<div class="container">
  <img class="img" src="passex3.jpg?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=&bg=" alt="" />
  
  <div class="overlay"></div>
  <div class="button"><a href="statement.jsp">join</a></div>
</div>
</div>

<!--<center>
<h1>subscription available</h1>
<a href="subscription1">Gold Three months workout</a><br><br>

<a href="">Four months workout</a><br><br>
<a href="">vip pass(1 year)</a><br><br>
</center>

<a href="profile" class="right">Profile</a>
<a href="productsbuy">shop</a>
<a href="yourorder">your order</a>-->

</body>
</html>