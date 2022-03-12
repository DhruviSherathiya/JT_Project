<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SmartWatch Management Screen</title>
</head>
<body>

	<div align="center">
		<h1>SmartWatch List</h1>
		
		<table border="1">

			<th>ID</th>
			<th>Name</th>
			<th>Color</th>
			<th>Size</th>
			<th>Connectivity</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>

			<c:forEach var="smartwatch" items="${listSmartWatch}">
				<tr>

					<td>${smartwatch.p_Id}</td>
					<td>${smartwatch.sName}</td>
					<td>${smartwatch.sColor}</td>
					<td>${smartwatch.sSize}</td>
					<td>${smartwatch.sConnectivity}</td>
					<td>${smartwatch.p_Description}</td>
					<td>${smartwatch.p_Quantity}</td>
					<td>${smartwatch.p_Price}</td>
					<td><a href="editSmartWatch?id=${smartwatch.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteSmartWatch?id=${smartwatch.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<!-- <h4>
			New Employee Register <a href="newEmployee">here</a>
		</h4> -->
	</div>

</body>
</html>