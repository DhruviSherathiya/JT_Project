<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
	<h3>Welcome ${uname}</h3>
	<a href="/Electronics/Product/laptop">Laptop</a><br>
	<a href="/Electronics/Product/headphone">Headphone</a><br>
	<a href="/Electronics/Product/mobile">Mobile</a><br>
	<a href="/Electronics/Product/smartwatch">SmartWatch</a><br>
	<a href="/Electronics/Product/tablet">Tablet</a><br>
	<a href="/Electronics/Product/tv">TV</a><br>
	<a href="/Electronics/Product/inventory">Inventory List</a><br>
	<a href="/Electronics/users">User List</a><br>
	<a href="/Electronics/profile">Profile</a><br>
	<a href="/Electronics/logout">Logout</a><br>
</body>
</html>