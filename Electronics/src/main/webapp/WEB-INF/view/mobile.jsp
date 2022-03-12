<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mobile Management Screen</title>
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
		<h1>Mobile List</h1>
		
		<table class="table table-striped table-hover mt-5">
			<thead>
			    <tr>
			        <th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Storage</th>
					<th scope="col">Color</th>
					<th scope="col">Processor</th>
					<th scope="col">Ram</th>
					<th scope="col">Camera</th>
					<th scope="col">Charger Type</th>
					<th scope="col">Description</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
			    </tr>
			</thead>

			<tbody>
				<c:forEach var="mobile" items="${listMobile}">
					<tr>

						<td scope="row">${mobile.p_Id}</td>
						<td>${mobile.mName}</td>
						<td>${mobile.mStorage}</td>
						<td>${mobile.mColor}</td>
						<td>${mobile.mProcessor}</td>
						<td>${mobile.mRam}</td>
						<td>${mobile.mCamera}</td>
						<td>${mobile.mChargerType}</td>
						<td>${mobile.p_Description}</td>
						<td>${mobile.p_Quantity}</td>
						<td>${mobile.p_Price}</td>
						<td><a href="editMobile?id=${mobile.p_Id}">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="deleteMobile?id=${mobile.p_Id}">Delete</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h5 class="mt-5">
			New Mobile  <a href="newMobile">here</a>
		</h5>
	</div>

</body>
</html>