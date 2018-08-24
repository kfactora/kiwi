<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="sign_up">
		    <h1></h1>
		    <p><form:errors path="user.*"/></p>
			<p><c:out value="${error}" /></p>
		    
		    <form:form method="POST" action="/usersettings/${user.id}" modelAttribute="user">
	
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

		        <input type="submit" value="Update"/>
		        
		    </form:form>
		</div>
	</div>


</body>
</html>