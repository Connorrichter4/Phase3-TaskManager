<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>Login</h1>

	<p>Please enter your username and password:</p>

	<form:form method="post">
		<label for="username">Username:</label> <input type="text" id="username"
			name="username"><br>
		<br> <label for="password">Password:</label> <input
			type="password" id="password" name="password"><br>
		<br> <input type="submit" value="Submit"><br>
		<br>
		<c:if test='${param.error != null}'>
			<div>Incorrect Credentials!</div>
		</c:if>
		<c:if test="${param.logout != null}">
			<div>Signed out</div>
		</c:if>
		<br> <a href="/signup">Click here to sign up!</a><br>
		<br>
	</form:form>
</body>
</html>