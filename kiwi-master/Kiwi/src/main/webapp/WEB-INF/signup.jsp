<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="css/login.css">
</head>
<body>

	<%-- <div class="container">
		<div class="sign_up">
		    <h1>Register</h1>
		    <p><form:errors path="user.*"/></p>
			<p><c:out value="${error}" /></p>
		    
		    <form:form method="POST" action="/signup" modelAttribute="user">
	
		    	<div>
		            <form:label path="firstName">First Name</form:label>
		            <form:input type="text" path="firstName"/>
		        </div>
		        <div>
		            <form:label path="lastName">Last Name</form:label>
		            <form:input type="text" path="lastName"/>
		        </div>
		        <div>
		            <form:label path="email">Email</form:label>
		            <form:input type="email" path="email"/>
		        </div>
		        <div>
		            <form:label path="password">Password</form:label>
		            <form:input type="password" path="password"/>
		        </div>
		        <div>
		            <form:label path="passwordConfirmation">Password Confirmation</form:label>
		            <form:input type="password" path="passwordConfirmation"/>
		        </div>
		        
		        <input type="submit" value="Sign Up"/>
		        
		    </form:form>
		</div>
	</div> --%>

	<div class="box">
    	<div id="header">
	    <div id="cont-lock"><i class="material-icons lock">Kiwi</i></div>
	    <div id="bottom-head"><h1 id="logintoregister">Sign Up</h1></div>
    </div> 
  
 	<form action="/signup" method="post">
 		
 		<div class="group">      
	    	<input class="inputMaterial" id="email" name="email" type="email" required>
	    	<span class="highlight"></span>
	    	<span class="bar"></span>
	    	<label>First Name</label>
	    </div>
 		
 		<div class="group">      
	    	<input class="inputMaterial" id="email" name="email" type="email" required>
	    	<span class="highlight"></span>
	    	<span class="bar"></span>
	    	<label>Last Name</label>
	    </div>
 		
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
	    	
	    	<div class="group">      
	    	<input class="inputMaterial" id="email" name="email" type="email" required>
	    	<span class="highlight"></span>
	    	<span class="bar"></span>
	    	<label>Confirm Password</label>
	    </div>
	    
	    </div>
	    <button id="buttonlogintoregister" type="submit">Sign Up</button>
  	</form>
  	
  <div id="footer-box"><p class="footer-text">Not a member?<span class="sign-up"> Sign up now</span></p></div>
  </div>





</body>
</html>