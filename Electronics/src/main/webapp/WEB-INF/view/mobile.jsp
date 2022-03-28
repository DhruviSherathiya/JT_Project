<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="adminnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mobile Management Screen</title>

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

	<div align="center" class="mb-5" style="margin-top: 20vh!important;">
		<h5 class="mt-5">
			New Mobile  <a href="newMobile">here</a>
		</h5>
	</div>
	
	<c:forEach var="mobile" items="${listMobile}" varStatus="theCount">
		<div class="container">
			<div class="card mb-3" style="max-width: 100%;">
				<div class="row g-0">
					<div class="col-md-4 p-5">
						<img src="${mobile.img_Url}" height="270px" width="270px" class="img-fluid rounded-start"
							alt="...">
					</div>
					<div class="col-md-8 p-5">
						<div class="card-body">
							<h5 class="card-title">${mobile.mName}</h5>
							<p class="card-text">${mobile.p_Description}</p>
							<div class="accordion" id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#divIDNo${theCount.index}"
											aria-expanded="true" aria-controls="divIDNo${theCount.index}">
											Key Features</button>
									</h2>
									<div id="divIDNo${theCount.index}" class="accordion-collapse collapse"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<p><strong>Ram </strong>${mobile.mRam}</p> 
											<p><strong>Storage </strong>${mobile.mStorage}</p> 
											<p><strong>Processor </strong>${mobile.mProcessor}</p> 
											<p><strong>Camera </strong>${mobile.mCamera}</p>
											<p><strong>Color </strong>${mobile.mColor}</p>
											<p><strong>Charger Type </strong>${mobile.mChargerType}</p>
											<p><strong>Description </strong>${mobile.p_Description}</p>
											<p><strong>Quantity </strong>${mobile.p_Quantity}</p>
											<p><strong>Price </strong>${mobile.p_Price}</p>
											
										</div>
									</div>
								</div>
							</div>
							<div class="mt-3">
									<a href="editMobile?id=${mobile.p_Id}" class="btn btn-primary">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a href="deleteMobile?id=${mobile.p_Id}" class="btn btn-primary">Delete</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>

<%@ include file = "footer.jsp" %>
</body>
</html>