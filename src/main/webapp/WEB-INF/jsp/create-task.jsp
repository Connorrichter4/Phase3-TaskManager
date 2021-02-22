<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Task</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
</head>
<body>
	<div class="d-flex justify-content-center">
		<div class="d-flex justify-content-center align-items-center ">
			<form:form id="form" class="border border-3 rounded p-4 m-3">
				<h1 class="text-center">Create Task:</h1>
				<p>Please enter the details of your task:</p>
				<label for="name" class="mb-1">Task Name:</label>
				<div class="input-group mb-3">

					<input type="text" id="name" name="name"
						placeholder="Enter a task name" class="form-control">

				</div>
				<label for="startDate" class="mb-1">Start Date:</label>
				<div class="input-group mb-3">

					<input type="date" id="startDate" name="startDate"
						class="form-control">
				</div>
				<label for="endDate" class="mb-1">End Date:</label>
				<div class="input-group mb-3">

					<input type="date" id="endDate" name="endDate" class="form-control">
				</div>
				<label for="description" class="mb-1">Description:</label>
				<div class="input-group mb-3">

					<textarea id="description" name="description" rows="5" cols="33"
						placeholder="Enter description here..." class="form-control"></textarea>

				</div>
				<label for="email" class="mb-1">Email:</label>
				<div class="input-group mb-3">

					<input type="text" id="email" name="email"
						placeholder="Enter an email" class="form-control">

				</div>
				<label for="severity" class="mb-1">Severity:</label>
				<div class="input-group mb-2">

					<select name="severity" id="severity" class="form-control">
						<option value="high">High</option>
						<option value="medium">Medium</option>
						<option value="low">Low</option>
					</select>
				</div>
				<div class="d-flex justify-content-center mt-3">
					<input type="submit" value="Submit">
				</div>
			</form:form>
		</div>

	</div>
</body>
</html>