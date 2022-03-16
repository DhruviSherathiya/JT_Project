<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="adminnavbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


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

	<div class="container col-10 mt-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">Laptop List</h2>
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
												<p>
													<strong>Ram </strong>${laptop.lRam}</p>
												<p>
													<strong>Storage </strong>${laptop.lStorage}</p>
												<p>
													<strong>Processor </strong>${laptop.lProcessor}</p>
												<p>
													<strong>Graphics </strong>${laptop.lGraphics}</p>
												<p>
													<strong>Color </strong>${laptop.lColor}</p>
												<p>
													<strong>Description </strong>${laptop.p_Description}</p>
												<p>
													<strong>Quantity </strong>${laptop.p_Quantity}</p>
												<p>
													<strong>Price </strong>${laptop.p_Price}</p>
											</div>
										</div>
									</div>
								</div>
								<div class="mt-3">
									<a href="editLaptop?id=${laptop.p_Id}" class="btn btn-primary">Edit</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
										href="deleteLaptop?id=${laptop.p_Id}" class="btn btn-primary">Delete</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="container col-10 mt-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">Mobile List</h2>
		</div>

		<c:forEach var="mobile" items="${listMobile}" varStatus="theCount">
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
								<div class="accordion" id="accordionExample">
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
												<p>
													<strong>Ram </strong>${mobile.mRam}</p>
												<p>
													<strong>Storage </strong>${mobile.mStorage}</p>
												<p>
													<strong>Processor </strong>${mobile.mProcessor}</p>
												<p>
													<strong>Camera </strong>${mobile.mCamera}</p>
												<p>
													<strong>Color </strong>${mobile.mColor}</p>
												<p>
													<strong>Charger Type </strong>${mobile.mChargerType}</p>
												<p>
													<strong>Description </strong>${mobile.p_Description}</p>
												<p>
													<strong>Quantity </strong>${mobile.p_Quantity}</p>
												<p>
													<strong>Price </strong>${mobile.p_Price}</p>

											</div>
										</div>
									</div>
								</div>
								<div class="mt-3">
									<a href="editMobile?id=${mobile.p_Id}" class="btn btn-primary">Edit</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
										href="deleteMobile?id=${mobile.p_Id}" class="btn btn-primary">Delete</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="container col-10 mt-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">SmartWatch List</h2>
		</div>

		<c:forEach var="smartwatch" items="${listSmartWatch}"
			varStatus="theCount">
			<div class="container">
				<div class="card mb-3" style="max-width: 100%;">
					<div class="row g-0">
						<div class="col-md-4 p-5">
							<img src="${smartwatch.img_Url}" height="270px" width="270px"
								class="img-fluid rounded-start" alt="...">
						</div>
						<div class="col-md-8 p-5">
							<div class="card-body">
								<h5 class="card-title">${smartwatch.sName}</h5>
								<p class="card-text">${smartwatch.p_Description}</p>
								<div class="accordion" id="accordionExample">
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
												<p>
													<strong>Color </strong>${smartwatch.sColor}</p>
												<p>
													<strong>Size </strong>${smartwatch.sSize}</p>
												<p>
													<strong>Connectivity </strong>${smartwatch.sConnectivity}</p>
												<p>
													<strong>Description </strong>${smartwatch.p_Description}</p>
												<p>
													<strong>Quantity </strong>${smartwatch.p_Quantity}</p>
												<p>
													<strong>Price </strong>${smartwatch.p_Price}</p>

											</div>
										</div>
									</div>
								</div>
								<div class="mt-3">
									<a href="editSmartWatch?id=${smartwatch.p_Id}"
										class="btn btn-primary">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
										href="deleteSmartWatch?id=${smartwatch.p_Id}"
										class="btn btn-primary">Delete</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="container col-10 mt-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">Headphone List</h2>
		</div>

		<c:forEach var="headphone" items="${listHeadPhone}"
			varStatus="theCount">
			<div class="container">
				<div class="card mb-3" style="max-width: 100%;">
					<div class="row g-0">
						<div class="col-md-4 p-5">
							<img src="${headphone.img_Url}" class="img-fluid rounded-start"
								alt="...">
						</div>
						<div class="col-md-8 p-5">
							<div class="card-body">
								<h5 class="card-title">${headphone.hName}</h5>
								<p class="card-text">${headphone.p_Description}</p>
								<div class="accordion" id="accordionExample">
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
												<p>
													<strong>Sound Quality </strong>${headphone.hSoundQuality}</p>
												<p>
													<strong>price </strong>${headphone.p_Price}</p>
												<p>
													<strong>Quantity </strong>${headphone.p_Quantity}</p>
											</div>
										</div>
									</div>
								</div>
								<div class="mt-3">
									<a href="editHeadPhone?id=${headphone.p_Id}"
										class="btn btn-primary">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
										href="deleteHeadPhone?id=${headphone.p_Id}"
										class="btn btn-primary">Delete</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="container col-10 mt-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">Tablet List</h2>
		</div>

		<c:forEach var="tablet" items="${listTablet}" varStatus="theCount">
			<div class="container">
				<div class="card mb-3" style="max-width: 100%;">
					<div class="row g-0">
						<div class="col-md-4 p-5">
							<img src="${tablet.img_Url}" height="270px" width="270px"
								class="img-fluid rounded-start" alt="...">
						</div>
						<div class="col-md-8 p-5">
							<div class="card-body">
								<h5 class="card-title">${tablet.tName}</h5>
								<p class="card-text">${tablet.p_Description}</p>
								<div class="accordion" id="accordionExample">
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
												<p>
													<strong>Ram </strong>${tablet.tRam}</p>
												<p>
													<strong>Storage </strong>${tablet.tStorage}</p>
												<p>
													<strong>Color </strong>${tablet.tColor}</p>
												<p>
													<strong>Size </strong>${tablet.tSize}</p>
												<p>
													<strong>Description </strong>${tablet.p_Description}</p>
												<p>
													<strong>Quantity </strong>${tablet.p_Quantity}</p>
												<p>
													<strong>Price </strong>${tablet.p_Price}</p>
											</div>
										</div>
									</div>
								</div>
								<div class="mt-3">
									<a href="editTablet?id=${tablet.p_Id}" class="btn btn-primary">Edit</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
										href="deleteTablet?id=${tablet.p_Id}" class="btn btn-primary">Delete</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	
	<div class="container col-10 mt-5 mb-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">TV List</h2>
		</div>

		<c:forEach var="tv" items="${listTV}" varStatus="theCount">
		<div class="container">
			<div class="card mb-3" style="max-width: 100%;">
				<div class="row g-0">
					<div class="col-md-4 p-5">
						<img src="${tv.img_Url}" height="270px" width="270px" class="img-fluid rounded-start"
							alt="...">
					</div>
					<div class="col-md-8 p-5">
						<div class="card-body">
							<h5 class="card-title">${tv.tvName}</h5>
							<p class="card-text">${tv.p_Description}</p>
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
											<p><strong>Color </strong>${tv.tvColor}</p> 
											<p><strong>Size </strong>${tv.tvSize}</p> 
											<p><strong>Music System </strong>${tv.tvMusicSystem}</p>
											<p><strong>Description </strong>${tv.p_Description}</p>
											<p><strong>Quantity </strong>${tv.p_Quantity}</p>
											<p><strong>Price </strong>${tv.p_Price}</p>
											
										</div>
									</div>
								</div>
							</div>
							<div class="mt-3">
									<a href="editTV?id=${tv.p_Id}" class="btn btn-primary">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a href="deleteTV?id=${tv.p_Id}" class="btn btn-primary">Delete</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	</div>

</body>
</html>