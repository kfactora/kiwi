<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kiwi</title>
   	<link rel="icon" href="http://i67.tinypic.com/s3ddnk.jpg">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link href="https://fonts.googleapis.com/css?family=BioRhyme" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <style>
    * {
    	font-family: 'BioRhyme', serif;
    }
    .moneyimg {
        width: 100%;
    }
    .piggybank {
        height: 50px;
        width: 50px;
    }
    #jumbo1body {
        text-align: center; 
        background-image: url(http://i65.tinypic.com/2saffom.jpg); 
        background-size: cover;
        height: 400px;
        border-radius: 0px;
    }
    #jumbo2body {
    	background-image: url(http://i65.tinypic.com/2a8qngo.jpg);
    	background-size: cover;
    	height: 600px;
    }
    .headerlogo {
    	height: 30px;
    	width: 30px;
    }
    .bg-faded {
    	background-color: #4CAF50!important;
    }
    a {
    	text-decoration: none;
    	color: black;
    }
    </style>
</head>
<body>
	<!-- Navbar  -->
	<nav class="navbar navbar-light navbar-expand-md bg-faded justify-content-center">
	<div class="navbar-brand d-flex w-50 mr-auto">		
    	<img class="headerlogo" src="http://i67.tinypic.com/s3ddnk.jpg">
    	<a href="/home">Kiwi</a>
   	</div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
        <ul class="navbar-nav w-100 justify-content-center">
            <li class="nav-item">
                <a class="nav-link" href="">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="">Support</a>
            </li>
        </ul>
        <ul class="nav navbar-nav ml-auto w-100 justify-content-end">
            <li class="nav-item">
                <a class="nav-link" href="/login">Log In</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/signup">Sign Up</a>
            </li>
        </ul>
    </div>
	</nav>
	<!-- 	End Navbar  -->
<!--     <div id="jumbo1body" class="jumbotron"> -->
        <h2>Welcome to Kiwi!</h2>
    </div>
    
    <div id="jumbo2body" class="jumbotron">
 
    </div>
</body>
</html>