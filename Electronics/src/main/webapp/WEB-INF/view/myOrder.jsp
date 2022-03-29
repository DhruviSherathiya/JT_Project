<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Orders</title>
</head>
<body style="background-image: linear-gradient(to right, #FFF3E6, #CCE6FF)!important;">

	<c:if test = "${empty orders}">
			<div class="container col-8 mt-5 mb-4" style="margin-top: 15vh !important;">
				<center><h1>No Order !!</h1></center>
				<center><h3>Please do some shopping</h3></center>
			</div>
    </c:if>
    
    <c:if test = "${not empty orders}">
			<div align="center" class="container col-4 mt-2"	>
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
    </c:if>

<%@ include file = "footer.jsp" %>
</body>
</html>