<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Accounts</title>
</head>
<body>
	<h1><c:out value="${user.firstName}"/></h1>
	<h3><c:out value="${user.balance}"/></h3>
	
	<table>
		
	
	</table>
	
	<a href="/viewDeposit/${account.id}">Add Deposit</a>
</body>
</html>