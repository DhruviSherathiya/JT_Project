<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="usernavbar.jsp"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Single HeadPhone Page</title>
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
<body style="background-image: linear-gradient(to right, #FFF3E6, #CCE6FF)!important;">

		<div class="container col-10 mt-5" style="margin-top: 15vh !important;">

			<div class="container">
				<div class="card mb-3" style="max-width: 100%;">
					<div class="row g-0">
						<div class="col-md-4 p-5">
							<img src="${headPhone.img_Url}" class="img-fluid rounded-start"
								alt="...">
						</div>
						<div class="col-md-8 p-5">
							<div class="card-body">
								<h5 class="card-title">${headPhone.hName}</h5>
								<p class="card-text">${headPhone.p_Description}</p>
								<%-- <div class="accordion" id="accordionExample">
									<div class="accordion-item">
										<h2 class="accordion-header" id="headingOne">
											<button class="accordion-button" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#divIDNo${theCount.index}"
												aria-expanded="true"
												aria-controls="divIDNo${theCount.index}">Key
												Features</button>
										</h2>
										<div id="divIDNo${theCount.index}"
											class="accordion-collapse collapse"
											aria-labelledby="headingOne"
											data-bs-parent="#accordionExample">
											<div class="accordion-body">
												<p><strong>Sound Quality </strong>${headPhone.hSoundQuality}</p>
												<p><strong>price </strong>${headPhone.p_Price}</p>
												<p><strong>Quantity </strong>${headPhone.p_Quantity}</p>
											</div>
										</div>
									</div>
								</div> --%>
								<div class="row mt-5">
									<div class="col">
										<p><strong>Sound Quality : </strong>${headPhone.hSoundQuality}</p>
										<p><strong>Description : </strong>${headPhone.p_Description}</p>
										<p><strong>price : </strong>${headPhone.p_Price}</p>
										<p><strong>Quantity : </strong>${headPhone.p_Quantity}</p>
									</div>
								</div>
								<div class="mt-5">
									<form action="/Electronics/addtocart" method="post">
											<a href="/Electronics/buyProduct?pid=${headPhone.p_Id}" class="btn btn-primary" type=submit>Buy</a>		
											<input style="width: 50px; margin-left: 50px" type="number" class="py-1" name="p_quantity" placeholder="Enter Quantity" value="1"  min="1" max="${headPhone.p_Quantity}">
											<input type="hidden" name="pid" value="${headPhone.p_Id}">
											
											<a href="addtocart" class="btn btn-primary mx-2" type=submit><input type="submit" value="Add To Cart" style="background:none; color: white; border: none;"></a>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>

</body>
</html>