<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kiwi</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <style>
    .moneyimg {
        width: 100%;
    }
    .kiwilogobody {
        height: 100px;
        width: 100px;
    }
    #jumbo1body {
        text-align: center; 
    }
    .headerlogo {
    	height: 30px;
    	width: 30px;
    }
    .bg-light {
    	background-color: white!important;
    }
    </style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <img class="headerlogo" src="http://i67.tinypic.com/s3ddnk.jpg">Kiwi
	  <!-- <a class="navbar-brand" href="#">Kiwi</a> -->
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="#"><span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Blog</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Support</a>
	      </li>
		    <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Features
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="#">Action</a>
	          <a class="dropdown-item" href="#">Another action</a>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/login">Log In</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/signup">Sign Up</a>
	      </li>
	    </ul>
	  </div>
	</nav>
    <div id="jumbo1body" class="jumbotron">
        <h2>Welcome to Kiwi!</h2>
        <img class="kiwilogobody" src="http://i67.tinypic.com/aer50m.png">
    </div>
    <img class="moneyimg" src="https://cdn.stocksnap.io/img-thumbs/960w/11HX337XXR.jpg">
</body>
</html>