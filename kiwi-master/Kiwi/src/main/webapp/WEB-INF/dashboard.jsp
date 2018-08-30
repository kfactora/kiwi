<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    a {
    	text-decoration: none;
    	color: black;
    }
    .card-body {
    	width: 50%;
    }
    .bg-faded {
    	background-color: #4CAF50!important;
    }
    </style>
</head>
<body>
	<!-- Navbar  -->
	<nav class="navbar navbar-light navbar-expand-md bg-faded justify-content-center">
	<div class="navbar-brand d-flex w-50 mr-auto">		
    	<img class="headerlogo" src="http://i67.tinypic.com/s3ddnk.jpg">
    	<a href="/">Kiwi</a>
   	</div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
        <ul class="navbar-nav w-100 justify-content-center">
            <li class="nav-item">
                <a class="nav-link" href="/viewAccount/${user.id}">Deposits</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="">Spending</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="">Budgets</a>
            </li>
        </ul>
        <ul class="nav navbar-nav ml-auto w-100 justify-content-end">
            <li class="nav-item">
                <a class="nav-link" href="/usersettings/${user.id}">User Settings</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/logout">Logout</a>
            </li>
        </ul>
    </div>
	</nav>
	
	<script>
	$( "img" ).click(function() {
  		$( this ).hide();
	});
	</script>
	
	
	
	<div class="card">
	  <div class="card-body">Accounts</div>
	</div>
	<div class="card">
	  <div class="card-body">Budgets</div>
	</div>
	<div class="card">
	  <div class="card-body">Spending</div>
	</div>
</body>
</html>