<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Tasks</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/f8ebbde80f.js" crossorigin="anonymous"></script>
</head>
<body class="p-2">
	
	<div class="d-flex justify-content-between p-2">
		<h1>Welcome! Displaying Tasks Below</h1>
		
		<form:form action="logout" method="post">
			<input type="submit" class="btn btn-dark" value="Sign Out" />
		</form:form>
	</div>
	
	<div class="p-2 mb-2">
		<a href="/create-task"><i
			class="fas fa-plus-square fa-2x text-dark"></i></a>
	</div>
	
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">Task Name</th>
				<th scope="col">Description</th>
				<th scope="col">Start Date</th>
				<th scope="col">End Date</th>
				<th scope="col">Email</th>
				<th scope="col">Severity</th>
				<th scope="col">Owner</th>
				<th scope="col"></th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${tasks}" var="task">
				<tr>
					<td>${task.name}</td>
					<td>${task.description}</td>
					<td><fmt:formatDate type="date" value="${task.startDate}" /></td>
					<td><fmt:formatDate type="date" value="${task.endDate}" /></td>
					<td>${task.email}</td>
					<td>${task.severity}</td>
					<td>${task.user.username}</td>
					<c:choose>
						<c:when test="${task.user.id == user.id}">
							<td><a href="/edit-task/${task.id}"><i style="color:white" class="far fa-edit"></i></a></td>
							<td><a href="/delete-task/${task.id}"><i style="color:white" class="fas fa-trash"></i></a></td>
						</c:when>
						<c:otherwise>
							<td></td>
							<td></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>