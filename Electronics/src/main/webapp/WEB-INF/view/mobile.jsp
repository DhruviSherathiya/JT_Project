<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mobile Management Screen</title>
</head>
<body>

	<div align="center">
		<h1>Mobile List</h1>
		
		<table border="1">

			<th>ID</th>
			<th>Name</th>
			<th>Storage</th>
			<th>Color</th>
			<th>Processor</th>
			<th>Ram</th>
			<th>Camera</th>
			<th>Charger Type</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>

			<c:forEach var="mobile" items="${listMobile}">
				<tr>

					<td>${mobile.p_Id}</td>
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
					<td><a href="editMobile?id=${mobile.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteMobile?id=${mobile.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<!-- <h4>
			New Employee Register <a href="newEmployee">here</a>
		</h4> -->
	</div>

</body>
</html>