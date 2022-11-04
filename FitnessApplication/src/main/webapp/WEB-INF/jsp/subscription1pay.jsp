<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<meta charset="UTF-8">
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
/*signup page*/
.container1 {
  height: 100vh;
  width: 100%;
  align-items: center;
  display: flex;
  justify-content: center;
 
}

.card1 {
  border-radius: 10px;
  box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.3);
  width: 600px;
  
  background-color: #ffffff;
  padding: 10px 30px;
  margin-top:-160px;
}

.card_title1 {
  text-align: center;
  padding: 10px;
}

.card_title1 h1 {
  font-size: 26px;
  font-weight: bold;
}

.form input {
  margin: 10px 0;
  width: 80%;
  background-color: #e2e2e2;
  border: none;
  outline: none;
  padding: 12px 20px;
  border-radius: 4px;
  margin-left:50px;
}
.form label{
	 margin-left:50px;
	 font-weight:900;
}
.form p{
	 margin-left:50px;
	 font-weight:900;
}
.form radiobutton{
	 margin-left:50px;
}
.form button {
  background:black;
  color: #ffffff;
  font-size: 16px;
  outline: none;
  border-radius: 35px;
  border: none;
  padding: 8px 15px;
  width: 30%;
  align:center;
  margin-left:170px;
}

.card_terms {
  display: flex;
  align-items: center;
  padding: 10px;
}

.card_terms input[type="checkbox"] {
  background-color: black;
}

.card_terms span {
  margin: 5px;
  font-size: 13px;
}

.card1 a {
  color: black;
  text-decoration: none;
}
.form-control:focus {
    box-shadow: 10px 0px 0px 0px #ffffff !important;
    border-color: #4ca746;}
    
.padding{

     padding: 5rem !important;
}
</style>
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
	<!--  <div class="bg-image"></div>
	<div class="container1">
		<div class="card1">
			<div class="card_title1">
				<h1>Payment</h1>

			</div>
			<div class="form">
				<form action="paysub1" method="post">
				    <label>Enter the phono</label>
					<input type="tel" name="phono"><br>
					<br> <button type="submit" value="Confirm">Pay 3800</button>
					<form>
			</div>

		</div>
	</div>-->
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/3.0.0/jquery.payment.min.js"></script>
 <div class="padding">
        <div class="row">
            <div class="container-fluid d-flex justify-content-center">
                <div class="col-sm-8 col-md-6">
                    <div class="card">
                        <div class="card-header">

                        <div class="row">
                            <div class="col-md-6">
                                <span>CREDIT/DEBIT CARD PAYMENT</span>
                                
                            </div>

                            <div class="col-md-6 text-right" style="margin-top: -5px;">

                                  <img src="https://img.icons8.com/color/36/000000/visa.png">
                                  <img src="https://img.icons8.com/color/36/000000/mastercard.png">
                                  <img src="https://img.icons8.com/color/36/000000/amex.png">
                                           
                            </div>      

                        </div>    
  
                        </div>
                        <div class="card-body" style="height: 350px">
                            <div class="form-group">
                            <label for="cc-number" class="control-label">CARD NUMBER</label>
                            <input id="cc-number" pattern="^4[0-9]{12}(?:[0-9]{3})?$" type="tel" class="input-lg form-control cc-number" autocomplete="cc-number" placeholder="&bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull;" required>
                          </div>

                          <div class="row">

                            <div class="col-md-6">
                                 <div class="form-group">
                                    <label for="cc-exp" class="control-label">CARD EXPIRY</label>
                                    <input id="cc-exp" type="tel" class="input-lg form-control cc-exp" autocomplete="cc-exp" placeholder="&bull;&bull; / &bull;&bull;" required>
                                  </div>

                                
                            </div>

                             <div class="col-md-6">
                               <div class="form-group">
                                <label for="cc-cvc" class="control-label">CARD CVC</label>
                                <input id="cc-cvc" type="password" class="input-lg form-control cc-cvc" autocomplete="off" placeholder="&bull;&bull;&bull;&bull;" min="3" max="3"   required>
                              </div>
                            </div>
                              
                          </div>

      
                          <div class="form-group">
                            <label for="numeric" class="control-label">CARD HOLDER NAME</label>
                            <input  type="text" class="input-lg form-control">
                          </div>

                           <div class="form-group">
                           <form action="paysub1" method="post">
				    <label class="control-label">Enter the phono</label>
					<input type="tel" name="phono" class="input-lg form-control"><br>
					<br> <button class="btn btn-success btn-lg form-control" type="submit" value="Confirm" style="font-size: .8rem;background-color:black; width:230px; margin-left:280px;margin-top:-80px;">Pay 3800</button>
					<form>
                            
                            
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>
	

</body>
</html>