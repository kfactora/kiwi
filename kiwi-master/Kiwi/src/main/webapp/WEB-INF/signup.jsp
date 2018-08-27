<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="css/signup.css">
</head>
<body>

	<div class="container">
		<h1>Kiwi</h1>
		<div class="sign_up">
		    
		    <%-- <p><form:errors path="user.*"/></p>
			<p><c:out value="${error}" /></p> --%>
		    
		    <form:form method="POST" action="/signup" modelAttribute="user">
	
		    	<div class="inputName">
		            <form:input type="text" placeholder="First Name" path="firstName"/>
		            <form:input type="text" placeholder="Last Name" path="lastName"/>
		        </div>
		        
		        <div class="inputOther">
		            <form:input type="email" placeholder="your@email.com" path="email"/>
		        </div>
		        <div class="inputOther">
		            <form:input type="password" placeholder="Password" path="password"/>
		        </div>
		        <div class="inputOther">
		            <form:input type="password" placeholder="Confirm Password" path="passwordConfirmation"/>
		        </div>
		        
		        <div class="inputOther">
		        	<input type="submit" value="Sign Up"/>
		        </div>
		        
		    </form:form>
		</div>
	</div> 






</body>
</html>