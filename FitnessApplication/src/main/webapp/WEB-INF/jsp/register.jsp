<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<link href="NewFile.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
 <link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="registerstyle.css">
<link rel="stylesheet" type="text/css" media="only screen and (max-device-width: 480px)" href="small-device.css" />
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>

.animate-charcter
{
   text-transform: uppercase;
  background-image: linear-gradient(
    -225deg,
    #231557 0%,
    #44107a 29%,
    #ff1361 67%,
    #fff800 100%
  );
  background-size: auto auto;
  background-clip: border-box;
  background-size: 200% auto;
  color: #fff;
  background-clip: text;
  text-fill-color: transparent;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: textclip 2s linear infinite;
  
  font-size: 15px;
  position:relative;
  text-align:center;
  margin-top:-280px;
  
      
}

@keyframes textclip {
  to {
    background-position: 300% left;}
     0%,
    50% {
      transform: translateY(100%);
      opacity: 0;
    }
     
    60%,
    100% {
      transform: translateY(0);
      opacity: 1;
    
    }
  }
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
<!--<form:form action ="uregister" method="post" modelAttribute="info">
<center>
			<h1>Registration Page</h1>
			
		<div>
			Enter First Name : <form:input type="text"  path="fullname" pattern="^([A-Za-z]+[,.]?[ ]?|[A-Za-z]+['-]?)+$"/>
			<form:errors path="fullname" cssClass="error">
			</form:errors>
		</div>
		
		
		<div>
			Enter User Name : <form:input type="text"  path="username"/>
			<form:errors path="username" cssClass="error">
			</form:errors>
		</div>
		
		<div>
			Enter Password : <form:input type="text"  path="password"/>
			<form:errors path="password" cssClass="error">
			</form:errors>
		</div>
		
		<div>
				<!--  <input type="submit" value="register">
				<form:button type="submit">register</form:button>
		</div>
			
			</center>
			</form:form>-->
			
<nav class="navbar navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="befiticon.png" height=50px width=200px></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Welcome!Be.fitian</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="frstpage">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="frstpage">Subscriptions</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Login
            </a>
            <ul class="dropdown-menu dropdown-menu-dark">
              <li><a class="dropdown-item" href="signup">signup</a></li>
              <li><a class="dropdown-item" href="mlogin">login</a></li>
               <li><a class="dropdown-item" href="adminlogin">Admin login</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>	
<div class="bg-image"></div>		
<div class="container">
      <div class="card">
        <div class="card_title">
          <h1>Create Account</h1>
          <span>Already have an account? <a href="mlogin" style="color:red;">login</a></span>
        </div>
        <div class="form">
        <form action="/uregister" method="post" modelAttribute="info">
          <input type="text" name="Fullname" id="username" placeholder="FullName" path="fullname" pattern="^([A-Za-z]+[,.]?[ ]?|[A-Za-z]+['-]?)+$" />
          <input type="text" name="Username" placeholder="Username" path="username" id="email"/>
          <input type="password" name="password" placeholder="Password" id="password" path="password" />
          <button type="submit">Sign Up</button>
          </form>
        </div>
        <div class="card_terms">
            <input type="checkbox" name="" id="terms"> <span>I have read and agree to the <a href="">Terms of Service</a></span>
        </div>
      </div>
    </div>
    <% String x=(String)session.getAttribute("error");
   
    
    if( x != null){
    	
    	out.println("<p class='animate-charcter text-center' style='color:red;'>"+x+"</p>");
    }%>
    
    
    
    
    
    
    
    
    
    
    

</body>
</html>