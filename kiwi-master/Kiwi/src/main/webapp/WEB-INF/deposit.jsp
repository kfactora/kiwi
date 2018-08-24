<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Deposits</title>
</head>
<body>
	<form:form action="/addDeposit" method="POST" modelAttribute="deposit">
				<div>
		            <form:label path="description">Description</form:label>
		            <form:input type="text" path="description"/>
		        </div>
		        
		        <div>
		            <form:label path="amount">Amount</form:label>
		            <form:input type="text" path="amount"/>
		        </div>
		        
		        <input type="submit" value="Deposit"/>
		        
	</form:form>
</body>
</html>