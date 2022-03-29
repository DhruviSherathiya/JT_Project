<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="adminnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Laptop Management Screen</title>

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

.card .btn{
	background-image: linear-gradient(to right, #e7bfd4, #bdd5ed);
	color: black!important;
	cursor: pointer;
    border: none !important;
}

.card .btn:hover{
background-image: linear-gradient(to right, #bdd5ed, #e996c1);
}

</style>

</head>
<body style="background-image: linear-gradient(to right, #FFF3E6, #CCE6FF)!important;">

	<div align="center" class="mb-5" style="margin-top: 20vh!important;">	
		<h5 class="mt-5">
			New Laptop <a href="newLaptop">here</a>
		</h5>
	</div>

	<c:forEach var="laptop" items="${listLaptop}" varStatus="theCount">
		<div class="container">
			<div class="card mb-3" style="max-width: 100%;">
				<div class="row g-0">
					<div class="col-md-4 p-5">
						<img src="${laptop.img_Url}" class="img-fluid rounded-start"
							alt="...">
					</div>
					<div class="col-md-8 p-5">
						<div class="card-body">
							<h5 class="card-title">${laptop.lName}</h5>
							<p class="card-text">${laptop.p_Description}</p>
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
											<p><strong>Ram </strong>${laptop.lRam}</p> 
											<p><strong>Storage </strong>${laptop.lStorage}</p> 
											<p><strong>Processor </strong>${laptop.lProcessor}</p> 
											<p><strong>Graphics </strong>${laptop.lGraphics}</p>
											<p><strong>Color </strong>${laptop.lColor}</p>
											<p><strong>Description </strong>${laptop.p_Description}</p>
											<p><strong>Quantity </strong>${laptop.p_Quantity}</p>
											<p><strong>Price </strong>${laptop.p_Price}</p>
										</div>
									</div>
								</div>
							</div>
							<div class="mt-3">
									<a href="editLaptop?id=${laptop.p_Id}" class="btn btn-primary">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a href="deleteLaptop?id=${laptop.p_Id}" class="btn btn-primary">Delete</a>
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