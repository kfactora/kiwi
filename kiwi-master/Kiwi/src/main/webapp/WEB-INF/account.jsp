<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Accounts</title>
	<style>
		table {
           border-collapse: collapse;
       }

       td, th {
           border: 1px solid #999;
           padding: 0.5rem;
           text-align: left;
       }
       
	    th {
	    	font-weight: bold;
	    	text-transform: uppercase;
	    }
	</style>
</head>
<body>
	<h1><c:out value="${user.firstName}"/></h1>
	
	<table>
		<tr>
			<td>Description</td>
			<td>Amount</td>
			<td>Date</td>
		</tr>
		
		<c:forEach items="${AllDeposits}" var="deposit">
		<tr>
			<td><c:out value="${deposit.description}"/></td>
			<td><c:out value="${deposit.amount}"/></td>
			<td><c:out value="${deposit.created_at}"/></td>
		</tr>
		</c:forEach>
	
	</table>
	<a href="/viewDeposit">Add Deposit</a>
</body>
</html>