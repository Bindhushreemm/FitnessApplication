<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page isELIgnored="false" %>
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

<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.ab{
margin-left:400px;
margin-top:100px;
box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.98);
width:1150px;


}
.h4{
color:black;
margin-left:20px;

}
button{
align:center;
margin-left:520px;
width:120px;
border-radius:20px;
height:40px;}
</style>
</head>
<body>
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
<div class="ab">
<h1 style="text-align:center"><i class="fa-solid fa-user"></i></h1><br><br>
<hr>
<right>
<br>
<div><h4 class="h4">Firstname <input type="text" placeholder="${all.firstname}" disabled>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname <input type="text" placeholder="${all.lastname}" disabled></h4></div><br><br>

<div><h4 class="h4">Address <input type="text" placeholder="${all.address}" disabled>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email <input type="text" placeholder="${all.email}" disabled></h4></div><br><br>

<div><h4 class="h4">Phono <input type="text" placeholder="${all.phono}" disabled></h4></div><br><br><br>
<a href="infoupdate"><button style="background-color:black;color:white;">update</button></a>
</div>






</right>

</body>
</html>