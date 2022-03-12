<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tablet Management Screen</title>
</head>
<body>

	<div align="center">
		<h1>Tablet List</h1>
		
		<table border="1">

			<th>ID</th>
			<th>Name</th>
			<th>Color</th>
			<th>Ram</th>
			<th>Storage</th>
			<th>Size</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>

			<c:forEach var="tablet" items="${listTablet}">
				<tr>

					<td>${tablet.p_Id}</td>
					<td>${tablet.tName}</td>
					<td>${tablet.tColor}</td>
					<td>${tablet.tRam}</td>
					<td>${tablet.tStorage}</td>
					<td>${tablet.tSize}</td>
					<td>${tablet.p_Description}</td>
					<td>${tablet.p_Quantity}</td>
					<td>${tablet.p_Price}</td>
					<td><a href="editTablet?id=${tablet.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteTablet?id=${tablet.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<!-- <h4>
			New Employee Register <a href="newEmployee">here</a>
		</h4> -->
	</div>

</body>
</html>