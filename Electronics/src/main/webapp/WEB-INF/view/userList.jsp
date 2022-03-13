<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management Screen</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>

	<div align="center" class="container col-12 mt-5">
		<h1>User List</h1>
		
		<table class="table table-striped table-hover mt-5">

			<thead>				
				<th scope="col">ID</th>
				<th scope="col">Username</th>
				<th scope="col">Password</th>
				<th scope="col">Email</th>
				<th scope="col">Phone Number</th>
				<th scope="col">Date_Of_Birth</th>
				<th scope="col">Role</th>
				<th scope="col">Billing Address</th>
				<th scope="col">Shipping Address</th>
			</thead>
			<tbody>
				<c:forEach var="user" items="${listUser}">
					<tr>
						<td scope="row">${user.userId}</td>
						<td>${user.userName}</td>
						<td>${user.password}</td>
						<td>${user.email}</td>
						<td>${user.phoneNumber}</td>
						<td>${user.dateOfBirth}</td>
						<td>${user.role}</td>
						<td>${user.billing}</td>
						<td>${user.shipping}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>