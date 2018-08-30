<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Deposit</title>
</head>
<body>
	<form:form method="POST" action="/deposit/edit/${deposit.id}" modelAttribute="deposit">
			<p>
	            <form:label path="description">Description:</form:label>
	            <form:input path="description"/>
	        </p>
	        <p>
	            <form:label path="amount">Amount:</form:label>
	            <form:input path="amount"/>
	        </p>
	        <input type="submit" value="Edit Deposit"/>
	</form:form>

</body>
</html>