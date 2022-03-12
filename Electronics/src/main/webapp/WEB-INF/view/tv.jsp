<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tablet Management Screen</title>
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

	<div align="center" class="container col-8 mt-5">
		<h1>Tablet List</h1>
		
		<table class="table table-striped table-hover mt-5">
			<thead>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Color</th>
				<th scope="col">Size</th>
				<th scope="col">MusicSystem</th>
				<th scope="col">Description</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
				<th scope="col">Action</th>
			</thead>
			<tbody>
				<c:forEach var="tv" items="${listTV}">
					<tr>
	
						<td scope="row">${tv.p_Id}</td>
						<td>${tv.tvName}</td>
						<td>${tv.tvColor}</td>
						<td>${tv.tvSize}</td>
						<td>${tv.tvMusicSystem}</td>
						<td>${tv.p_Description}</td>
						<td>${tv.p_Quantity}</td>
						<td>${tv.p_Price}</td>
						<td><a href="editTV?id=${tv.p_Id}">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="deleteTV?id=${tv.p_Id}">Delete</a></td>
	
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h5 class="mt-5">
			New TV <a href="newTV">here</a>
		</h5>
	</div>

</body>
</html>