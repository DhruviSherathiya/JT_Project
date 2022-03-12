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

	<div align="center" class="container col-12 mt-5">
		<h1>Tablet List</h1>
		
		<table class="table table-striped table-hover mt-5">
			<thead>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Color</th>
				<th scope="col">Ram</th>
				<th scope="col">Storage</th>
				<th scope="col">Size</th>
				<th scope="col">Description</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
				<th scope="col">Action</th>
			</thead>
			<tbody>
				<c:forEach var="tablet" items="${listTablet}">
					<tr>
	
						<td scope="row">${tablet.p_Id}</td>
						<td>${tablet.tName}</td>
						<td>${tablet.tColor}</td>
						<td>${tablet.tRam}</td>
						<td>${tablet.tStorage}</td>
						<td>${tablet.tSize}</td>
						<td>${tablet.p_Description}</td>
						<td>${tablet.p_Quantity}</td>
						<td>${tablet.p_Price}</td>
						<td><a href="editTablet?id=${tablet.p_Id}">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="deleteTablet?id=${tablet.p_Id}">Delete</a></td>
	
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h5 class="mt-5">
			New Tablet <a href="newTablet">here</a>
		</h5>
	</div>

</body>
</html>