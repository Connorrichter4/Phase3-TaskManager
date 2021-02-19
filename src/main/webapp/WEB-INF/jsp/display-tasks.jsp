<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Tasks</title>
</head>
<body>
	<h1>Welcome! Displaying Tasks Below</h1>
	<br>
	<a href="/create-task">Click here to create a task!</a>
	<br>
	<br>
	<form:form action="logout" method="post">
		<input type="submit" value="Sign Out" />
	</form:form>
	<br>
	<table>
		<tr>
			<th>Task Name</th>
			<th>Description</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Email</th>
			<th>Severity</th>
			<th>Owner</th>
		</tr>
			<c:forEach items="${tasks}" var="task">
			<tr>
				<td>${task.name}</td>
				<td>${task.description}</td>
				<td>${task.startDate}</td>
				<td>${task.endDate}</td>
				<td>${task.email}</td>
				<td>${task.severity}</td>
				<td>${task.user.username}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>