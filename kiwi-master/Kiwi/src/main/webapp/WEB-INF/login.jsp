<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>

	<div class="container">
 		<div class="login">
		    <h1>Login</h1>
		    <p><c:out value="${error}" /></p>
		    <form method="post" action="/login">

		    	<div>
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
    
</body>
</html>