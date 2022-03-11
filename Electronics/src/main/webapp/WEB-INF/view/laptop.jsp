<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Laptop Management Screen</title>
</head>
<body>

	<div align="center">
		<h1>Laptop List</h1>
		
		<table border="1">

			<th>ID</th>
			<th>Name</th>
			<th>Storage</th>
			<th>Color</th>
			<th>Processor</th>
			<th>Graphics</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>

			<c:forEach var="laptop" items="${listLaptop}">
				<tr>

					<td>${laptop.p_Id}</td>
					<td>${laptop.lName}</td>
					<td>${laptop.lStorage}</td>
					<td>${laptop.lColor}</td>
					<td>${laptop.lProcessor}</td>
					<td>${laptop.lGraphics}</td>
					<td>${laptop.p_Description}</td>
					<td>${laptop.p_Quantity}</td>
					<td>${laptop.p_Price}</td>
					<td><a href="editLaptop?id=${laptop.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteLaptop?id=${laptop.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<!-- <h4>
			New Employee Register <a href="newEmployee">here</a>
		</h4> -->
	</div>

</body>
</html>