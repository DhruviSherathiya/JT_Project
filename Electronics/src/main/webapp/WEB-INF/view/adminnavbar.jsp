<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script> -->
</head>
<body>

	<nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Welcome ${uname}</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/Electronics/"><i class="fa fa-fw fa-home"></i> Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/Electronics/profile">Profile</a></li>
					<c:if test = "${role == 'admin'}">
					<li class="nav-item"><a class="nav-link"
						href="/Electronics/Product/inventory">Inventory</a></li>	
					<li class="nav-item"><a class="nav-link"
						href="/Electronics/users">Users</a></li>	
					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Category </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="/Electronics/Product/laptop">Laptop</a></li>
							
							<li><a class="dropdown-item" href="/Electronics/Product/headphone">HeadPhone</a></li>
							
							<li><a class="dropdown-item" href="/Electronics/Product/mobile">Mobile</a></li>
							
							<li><a class="dropdown-item" href="/Electronics/Product/smartwatch">SmartWatch</a></li>
							
							<li><a class="dropdown-item" href="/Electronics/Product/tablet">Tablet</a></li>
							
							<li><a class="dropdown-item" href="/Electronics/Product/tv">TV</a></li>
						</ul>
					</li>
					</c:if>
					<c:if test = "${role == 'user'}">
					<li class="nav-item"><a class="nav-link" href="/Electronics/myOrder">My Orders</a></li>	
					<li class="nav-item"><a class="nav-link" href="/Electronics/contactUs">Contact Us</a></li>	
					<li class="nav-item"><a class="nav-link"
						href="/Electronics/aboutUs">About Us</a></li>
					</c:if>	
					<li class="nav-item"><a class="nav-link"
						href="/Electronics/logout"><i class="fa fa-sign-out"></i>Logout</a></li>	
				</ul>
				<c:if test = "${role == 'user'}">
					<ul class="nav navbar-nav navbar-right px-4">
						<li class="nav-item"><a class="nav-link" href="/Electronics/myCart"><i class="fa fa-shopping-cart"></i>MyCart</a></li>
					</ul>
				</c:if>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
</body>
</html>