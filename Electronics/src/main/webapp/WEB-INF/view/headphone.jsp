<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HeadPhone Management Screen</title>
</head>
<body>

	<div align="center">
		<h1>HeadPhone List</h1>
		
		<table border="1">

			<th>ID</th>
			<th>Name</th>
			<th>Sound Quality</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>

			<c:forEach var="headphone" items="${listHeadPhone}">
				<tr>

					<td>${headphone.p_Id}</td>
					<td>${headphone.hName}</td>
					<td>${headphone.hSoundQuality}</td>
					<td>${headphone.p_Description}</td>
					<td>${headphone.p_Quantity}</td>
					<td>${headphone.p_Price}</td>
					<td><a href="editHeadPhone?id=${headphone.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteHeadPhone?id=${headphone.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<!-- <h4>
			New Employee Register <a href="newEmployee">here</a>
		</h4> -->
	</div>

</body>
</html>