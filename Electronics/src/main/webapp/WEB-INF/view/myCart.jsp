<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>
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
		<h1>Cart List</h1>
		
		<table class="table table-striped table-hover mt-5">

			<thead>
				<th scope="col">ID</th>
				<th scope="col">Product</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
				<th></th>
				<th scope="col">Action</th>
			</thead>
			<tbody>
				<c:forEach var="cart" items="${listCart}" varStatus="theCount" >
					<tr>
	
						<td scope="row">${theCount.count}</td>
						<td>${productList[theCount.index]}</td>
						
						<td>${cart.cart_quantity}</td>
						<td>${cart.cart_Amount}</td>
						<%-- <td><a href="editLaptop?id=${laptop.p_Id}">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="deleteLaptop?id=${laptop.p_Id}">Delete</a></td> --%>
						<td colspan="3">
							<div style="display:flex; justify-content: space-around;  width: 70%;">
								<form method="POST" action="updateCart">
									<input type="hidden" name="cartid" value="${cart.cart_id}">
									<input style="width: 50px;" type="number" name="quantity" value="${cart.cart_quantity}" min="1" max="${cart.product.p_Quantity}">
									<input type="submit" value="Update">
								</form>
								<form method="POST" action="deleteCart">
									<input type="hidden" name="cartid" value="${cart.cart_id}">
									<input type="submit" value="Delete">
								</form>
								
							</div>
						</td>	
						<!-- <td>
							
						</td> -->
	
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>