<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	<div align="center" class="container col-8 mt-5">
		<h1>HeadPhone List</h1>
		
		<table class="table table-striped table-hover mt-5">
			<thead>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Sound Quality</th>
				<th scope="col">Description</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
			</thead>
			<tbody>
				<c:forEach var="headphone" items="${listHeadPhone}">
					<tr>
						<td scope="row">${headphone.p_Id}</td>
						<td>${headphone.hName}</td>
						<td>${headphone.hSoundQuality}</td>
						<td>${headphone.p_Description}</td>
						<td>${headphone.p_Quantity}</td>
						<td>${headphone.p_Price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div align="center" class="container col-8 mt-5">
		<h1>Tablet List</h1>
		
		<table class="table table-striped table-hover mt-5">
			<thead>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Color</th>
				<th scope="col">Size</th>
				<th scope="col">MusicSystem</th>
				<th scope="col">Description</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
			</thead>
			<tbody>
				<c:forEach var="tv" items="${listTV}">
					<tr>
						<td scope="row">${tv.p_Id}</td>
						<td>${tv.tvName}</td>
						<td>${tv.tvColor}</td>
						<td>${tv.tvSize}</td>
						<td>${tv.tvMusicSystem}</td>
						<td>${tv.p_Description}</td>
						<td>${tv.p_Quantity}</td>
						<td>${tv.p_Price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div align="center" class="container col-12 mt-5">
		<h1>SmartWatch List</h1>
		
		<table class="table table-striped table-hover mt-5">
			<thead>
			    <tr>
			        <th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Color</th>
					<th scope="col">Size</th>
					<th scope="col">Connectivity</th>
					<th scope="col">Description</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
			    </tr>
			</thead>

			<tbody>
				<c:forEach var="smartwatch" items="${listSmartWatch}">
					<tr>
						<td scope="row">${smartwatch.p_Id}</td>
						<td>${smartwatch.sName}</td>
						<td>${smartwatch.sColor}</td>
						<td>${smartwatch.sSize}</td>
						<td>${smartwatch.sConnectivity}</td>
						<td>${smartwatch.p_Description}</td>
						<td>${smartwatch.p_Quantity}</td>
						<td>${smartwatch.p_Price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div align="center" class="container col-12 mt-5">
		<h1>Tablet List</h1>
		
		<table class="table table-striped table-hover mt-5">
			<thead>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Color</th>
				<th scope="col">Ram</th>
				<th scope="col">Storage</th>
				<th scope="col">Size</th>
				<th scope="col">Description</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
			</thead>
			<tbody>
				<c:forEach var="tablet" items="${listTablet}">
					<tr>
						<td scope="row">${tablet.p_Id}</td>
						<td>${tablet.tName}</td>
						<td>${tablet.tColor}</td>
						<td>${tablet.tRam}</td>
						<td>${tablet.tStorage}</td>
						<td>${tablet.tSize}</td>
						<td>${tablet.p_Description}</td>
						<td>${tablet.p_Quantity}</td>
						<td>${tablet.p_Price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>