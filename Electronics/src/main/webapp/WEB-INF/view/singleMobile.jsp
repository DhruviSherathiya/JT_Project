<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="usernavbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Single Mobile Page</title>
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
<body style="background: #f5eded;"> 

	<div class="container col-10 mt-5" style="margin-top: 15vh !important;">

			<div class="container">
				<div class="card mb-3" style="max-width: 100%;">
					<div class="row g-0">
						<div class="col-md-4 p-5">
							<img src="${mobile.img_Url}" height="270px" width="270px"
								class="img-fluid rounded-start" alt="...">
						</div>
						<div class="col-md-8 p-5">
							<div class="card-body">
								<h5 class="card-title">${mobile.mName}</h5>
								<p class="card-text">${mobile.p_Description}</p>
								
								<div class="row mt-5">
									<div class="col">
										<p><strong>Ram : </strong>${mobile.mRam}</p>
										<p><strong>Storage : </strong>${mobile.mStorage}</p>
										<p><strong>Processor : </strong>${mobile.mProcessor}</p>
										<p><strong>Camera : </strong>${mobile.mCamera}</p>
										<p><strong>Color : </strong>${mobile.mColor}</p>
									</div>
									<div class="col">
										<p><strong>Charger Type : </strong>${mobile.mChargerType}</p>
										<p><strong>Description : </strong>${mobile.p_Description}</p>
										<p><strong>Quantity : </strong>${mobile.p_Quantity}</p>
										<p><strong>Price : </strong>${mobile.p_Price}</p>
									</div>
								</div>
								<div class="mt-5">
									<form action="/Electronics/addtocart" method="post">
											<a href="/Electronics/buyProduct?pid=${mobile.p_Id}" class="btn btn-primary" type=submit>Buy</a>		
											<input style="width: 50px; margin-left: 50px" type="number" class="py-1" name="p_quantity" placeholder="Enter Quantity" value="1"  min="1" max="${mobile.p_Quantity}">
											<input type="hidden" name="pid" value="${mobile.p_Id}">
											
											<a href="addtocart" class="btn btn-primary mx-2" type=submit><input type="submit" value="Add To Cart" style="background:none; color: white; border: none;"></a>
									</form>
								</div>
								<%-- <div class="mt-3">
									<a href="editMobile?id=${mobile.p_Id}" class="btn btn-primary">Edit</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
										href="deleteMobile?id=${mobile.p_Id}" class="btn btn-primary">Delete</a>
								</div> --%>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	

</body>
</html>