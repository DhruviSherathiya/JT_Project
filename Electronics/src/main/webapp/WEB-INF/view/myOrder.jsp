<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Orders</title>
</head>
<body style="background: #f5eded;">

	<div align="center" class="container col-4 mt-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">Order List</h2>
		</div>
		
		<table class="table table-striped table-hover mt-5">

			<thead>				
				<th scope="col-3">Order ID</th>
				<th scope="col-3">Order Date</th>
				<th scope="col-3">Total</th>
			</thead>
			<tbody>
				<c:forEach var="order" items="${orders}">
					<tr>
						<td scope="row">${order.orderId}</td>
						<td scope="row">${order.orderDate}</td>
						<td scope="row">$${order.totalAmount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>