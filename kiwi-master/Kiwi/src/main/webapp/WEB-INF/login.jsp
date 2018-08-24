<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="css/login.css">
</head>
<body>
<%-- 
	<div class="container">
 		<div class="login">
		    <h1>Login</h1>
		    <p><c:out value="${error}" /></p>
		    <form method="post" action="/login">

		    	<div class="has-float-label">
		            <label for="email">Email</label>
		            <input type="email" id="email" name="email"/>
		        </div>

		        <div>
		            <label for="password">Password</label>
		            <input type="password" id="password" name="password"/>
		        </div>
		        
		        <input type="submit" value="Login"/>
		        
		    </form>  
		</div>
    </div>
     --%>
    
  <div class="box">
  <div id="header">
    <div id="cont-lock"><i class="material-icons lock">Kiwi</i></div>
    <div id="bottom-head"><h1 id="logintoregister">Login</h1></div>
  </div> 
  
 	<form action="/login" method="post">
	    <div class="group">      
	    	<input class="inputMaterial" id="email" name="email" type="email" required>
	    	<span class="highlight"></span>
	    	<span class="bar"></span>
	    	<label>Email</label>
	    </div>
	    
		<div class="group">      
	    	<input class="inputMaterial" name="password" type="password" required>
	    	<span class="highlight"></span>
	    	<span class="bar"></span>
	    	<label>Password</label>
	    </div>
	    <button id="buttonlogintoregister" type="submit">Login</button>
  	</form>
  	
  <div id="footer-box"><p class="footer-text">Not a member?<span class="sign-up"> Sign up now</span></p></div>
</div>

<!-- 
<div id="container-floating">  
  <a href="https://plus.google.com/105749628523180076386/posts" target="_blank"><span class="profile-name">Simone</span></a>
  <div id="container-a">
    <div id="badge">
    </div>
    <div id="letter">
      <a href="https://plus.google.com/105749628523180076386/posts"><span>S</span></a>
    </div>  
  </div>

  <a href="https://codepen.io/collection/XyrMQr/" target="_blank"><div class="nds nd1" data-toggle="tooltip" data-placement="left" data-original-title="Codepen"></div></a>
  <a href="  https://twitter.com/simoberny" target="_blank"><div class="nds nd3" data-toggle="tooltip" data-placement="left" data-original-title="Twitter"></div></a>
 <a href="https://plus.google.com/105749628523180076386/posts" target="_blank"><div class="nds nd4" data-toggle="tooltip" data-placement="left" data-original-title="G+"></div></a>
</div>
     -->
    
</body>
</html>