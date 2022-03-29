<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="adminnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management Screen</title>
</head>
<body style="background-image: linear-gradient(to right, #FFF3E6, #CCE6FF)!important;">

	<div align="center" class="container col-12 mt-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">User List</h2>
		</div>
		
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

<%@ include file = "footer.jsp" %>
</body>
</html>