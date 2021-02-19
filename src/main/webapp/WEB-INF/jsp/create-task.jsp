<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Task</title>
</head>
<body>
	<h1>Create Task</h1>

	<p>Please enter the details of your task:</p>

	<form:form method="post">
		<label for="name">Task Name:</label> <input type="text" id="name"
			name="name"><br>
		<br> <label for="startdate">Start Date:</label> <input
			type="date" id="startdate" name="startDate"><br>
		<br> <label for="enddate">End Date:</label> <input type="date"
			id="enddate" name="endDate"><br>
		<br> <label for="description">Description:</label>
		<textarea id="description" name="description" rows="4" cols="50"></textarea>
		<br>
		<br> <label for="email">Email:</label> <input type="text"
			id="email" name="email"><br>
		<br> <label for="severity">Severity:</label> <select
			name="severity" id="severity">
			<option value="high">High</option>
			<option value="medium">Medium</option>
			<option value="low">Low</option>
		</select> <br>
		<br> <input type="submit" value="Submit"><br>
		<br> <input type="reset" value="Reset"><br>
		<br>

	</form:form>
</body>
</html>