<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Laptop Management Screen</title>
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
		<h1>Laptop List</h1>
		
		<table class="table table-striped table-hover mt-5">

			<thead>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Storage</th>
				<th scope="col">Color</th>
				<th scope="col">Processor</th>
				<th scope="col">Ram</th>
				<th scope="col">Graphics</th>
				<th scope="col">Description</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
				<th scope="col">Action</th>
			</thead>
			<tbody>
				<c:forEach var="laptop" items="${listLaptop}">
					<tr>
	
						<td scope="row">${laptop.p_Id}</td>
						<td>${laptop.lName}</td>
						<td>${laptop.lStorage}</td>
						<td>${laptop.lColor}</td>
						<td>${laptop.lProcessor}</td>
						<td>${laptop.lRam}</td>
						<td>${laptop.lGraphics}</td>
						<td>${laptop.p_Description}</td>
						<td>${laptop.p_Quantity}</td>
						<td>${laptop.p_Price}</td>
						<td><a href="editLaptop?id=${laptop.p_Id}">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="deleteLaptop?id=${laptop.p_Id}">Delete</a></td>
	
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h5 class="mt-5">
			New Laptop <a href="newLaptop">here</a>
		</h5>
	</div>

</body>
</html>