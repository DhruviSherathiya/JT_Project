<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file = "usernavbar.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>

<style>
.card:hover {
	background: #fff;
	box-shadow: 0px 15px 26px rgba(0, 0, 0, 0.50);
	-webkit-transition: all 0.2s ease-in;
	-moz-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
}
</style>

</head>
<body style="background: linear-gradient(to right, #FFF3E6, #CCE6FF);">

<!-- <div class="container col-12 mt-5"> -->
	<!-- <div align="center" class="container col-8 mt-5">
	
	</div> -->
	
	<div class="container col-8 mt-5" style="margin-top: 15vh !important;">        
        <c:if test = "${not empty cart_success}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
	        <div class="alert alert-success alert-dismissible fade show" role="alert">
				  ${cart_success}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
        </c:if>
	</div>
	
	<div class="container col-8 mt-5" style="margin-top: 15vh !important;">        
        <c:if test = "${not empty listCart}">
			<div class="container col-3 mb-4">
				<div class="row">
					<div class="col"><a class="btn btn-primary" href="orderCart">Purchase</a></div>
					<div class="col"><a class="btn btn-primary" href="clearCart">Clear Cart</a></div>
				</div>
			</div>
        </c:if>
	</div>
	      
        <c:if test = "${empty listCart}">
			<div class="container col-8 mt-5 mb-4" style="margin-top: 15vh !important;">
				<center><h1>Cart is Empty</h1></center>
			</div>
        </c:if>
	
	<c:forEach var="cart" items="${listCart}" varStatus="theCount">
		<div class="container mt-3 col-8">
			<div class="card mb-3">
				<div class="row g-0">
					<div class="col-md-4 p-5">
						<img src="${cart.product.img_Url}" class="img-fluid rounded-start"
							alt="..." height="250px" width="250px">
					</div>
					<div class="col-md-8 p-5">
						<div class="card-body">
							<h5 class="card-title">${productList[theCount.index]}</h5>
							<p class="card-text">${cart.product.p_Description}</p>
							<div class="mt-5">
								<div class=row>
									<form method="POST"name="myform" action="updateCart" class="col">
											<input type="hidden" name="cartid" value="${cart.cart_id}">
											<input style="width: 50px;" type="number" name="quantity" value="${cart.cart_quantity}" min="1" max="${cart.product.p_Quantity}">
											<button class="btn btn-primary">Update</button>
									</form>
									<form method="POST" action="deleteCart" class="col">
											<input type="hidden" name="cartid" value="${cart.cart_id}">
											<!-- <input type="submit" value="Delete"> -->
											<button class="btn btn-primary">Delete</button>
									</form>
								</div>
							</div>
							<div class="row mt-5">
								<div class="col">
									<p><strong>Quantity : </strong>${cart.cart_quantity}</p> 
								</div>
								<div class="col">
									<p><strong>Price/Quantity : </strong>${cart.product.p_Price}</p> 
								</div>
								<div class="col">
									<p><strong>Price : </strong>${cart.cart_Amount}</p> 
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
<!-- </div>	 -->
	<script>
var button = document.querySelector('form[name="myform"] > button');
button.addEventListener(function() {
  document.querySelector("form[name="myform"]").submit();
});
</script>
<%@ include file = "footer.jsp" %>
</body>
</html>