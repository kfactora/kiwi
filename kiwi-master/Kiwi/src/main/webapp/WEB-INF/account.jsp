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
	    button {
	    	background-color: red;
	    	color: white;
	    }
	</style>
</head>
<body>
	<h1><c:out value="${user.firstName}"/>'s Deposit Summary</h1>
	<table>
		<tr>
			<td>Description</td>
			<td>Amount</td>
			<td>Date</td>
			<td>Action</td>
		</tr>
		
		<c:forEach items="${AllDeposits}" var="deposit">
		<tr>
			<td><c:out value="${deposit.description}"/></td>
			<td>$<c:out value="${deposit.amount}"/></td>
			<td><c:out value="${deposit.created_at}"/></td>
			<td>
				<a href="/viewdepositpage/${deposit.id}">Edit</a> | 
				<a href="/deposit/delete/${deposit.id}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	
	</table>
	<a href="/viewDeposit"><button>Add Deposit</button></a>
</body>
</html>