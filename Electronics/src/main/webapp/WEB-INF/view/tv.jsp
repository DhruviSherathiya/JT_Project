<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TV Management Screen</title>
</head>
<body>

	<div align="center">
		<h1>TV List</h1>
		
		<table border="1">

			<th>ID</th>
			<th>Name</th>
			<th>Color</th>
			<th>Size</th>
			<th>Music System</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>

			<c:forEach var="tv" items="${listTV}">
				<tr>

					<td>${tv.p_Id}</td>
					<td>${tv.tvName}</td>
					<td>${tv.tvColor}</td>
					<td>${tv.tvSize}</td>
					<td>${tv.tvMusicSystem}</td>
					<td>${tv.p_Description}</td>
					<td>${tv.p_Quantity}</td>
					<td>${tv.p_Price}</td>
					<td><a href="editTV?id=${tv.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteTV?id=${tv.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<!-- <h4>
			New Employee Register <a href="newEmployee">here</a>
		</h4> -->
	</div>

</body>
</html>