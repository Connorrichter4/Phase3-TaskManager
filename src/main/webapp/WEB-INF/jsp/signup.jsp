<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Page</title>
</head>
<body>
	<h1>Sign Up</h1>

	<p>Please enter a username, email and password:</p>

	<form:form method="post">
		<label for="username">Username:</label>
		<input type="text" id="username" name="username">
		<br>
		<br>
		<label for="email">Email:</label>
		<input type="text" id="email" name="email">
		<br>
		<br>
		<label for="password">Password:</label>
		<input type="password" id="password" name="password">
		<br>
		<br>
		<input type="submit" value="Submit">
		<br>
		<br>


	</form:form>
</body>
</html>