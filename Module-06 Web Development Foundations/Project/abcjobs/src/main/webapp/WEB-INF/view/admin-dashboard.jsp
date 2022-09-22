<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
</head>
<body>
	<%@ include file="../components/navbar-admin.jsp"%>

	<section class="h-100 mt-3">
		<div class="container h-100">
		<div class="card m-3 shadow">
			<div class="m-4">
				<button type="button" onclick="window.location.href='adduser';"
					class="btn btn-primary">Add User</button>
				<table class="table">
					<tr>
						<th>Id</th>
						<th>FirstName</th>
						<th>LastName</th>
						<th>Email</th>
						<th>Password</th>
						<th>Country</th>
						<th>City</th>
						<th>Phone</th>
						<th>Company</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<c:forEach var="user" items="${listuser}">
						<tr>
							<td>${user.userID}</td>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td>${user.pass}</td>
							<td>${user.country}</td>
							<td>${user.city}</td>
							<td>${user.phone}</td>
							<td>${user.company}</td>
							<td><a href="edituser/${user.userID}">Edit</a></td>
							<td><a href="deleteuser/${user.userID}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			</div>
		</div>
	</section>
</body>
</html>