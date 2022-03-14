<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ include file = "usernavbar.jsp" %> --%>
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
<!-- <script type = "text/javascript">  
    window.onload = function () {  
        document.onkeydown = function (e) {  
            return (e.which || e.keyCode) != 116;  
        };  
    }  
</script>  -->
<style>

.carousel .item {
  height: 300px;
}

.item img {
    position: absolute;
    top: 0;
    left: 0;
    min-height: 300px;
}

/*----  Main Style  ----*/
#cards_landscape_wrap-2 {
	text-align: center;
	background: #F7F7F7;
}

#cards_landscape_wrap-2 .container {
	padding-top: 80px;
	padding-bottom: 100px;
}

#cards_landscape_wrap-2 a {
	text-decoration: none;
	outline: none;
}

#cards_landscape_wrap-2 .card-flyer {
	border-radius: 5px;
}

#cards_landscape_wrap-2 .card-flyer .image-box {
	background: #ffffff;
	overflow: hidden;
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.50);
	border-radius: 5px;
}

#cards_landscape_wrap-2 .card-flyer .image-box img {
	-webkit-transition: all .9s ease;
	-moz-transition: all .9s ease;
	-o-transition: all .9s ease;
	-ms-transition: all .9s ease;
	width: 100%;
	height: 200px;
}

#cards_landscape_wrap-2 .card-flyer:hover .image-box img {
	opacity: 0.7;
	-webkit-transform: scale(1.15);
	-moz-transform: scale(1.15);
	-ms-transform: scale(1.15);
	-o-transform: scale(1.15);
	transform: scale(1.15);
}

#cards_landscape_wrap-2 .card-flyer .text-box {
	text-align: center;
}

#cards_landscape_wrap-2 .card-flyer .text-box .text-container {
	padding: 30px 18px;
}

#cards_landscape_wrap-2 .card-flyer {
	background: #FFFFFF;
	margin-top: 50px;
	-webkit-transition: all 0.2s ease-in;
	-moz-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
	box-shadow: 0px 3px 4px rgba(0, 0, 0, 0.40);
}

#cards_landscape_wrap-2 .card-flyer:hover {
	background: #fff;
	box-shadow: 0px 15px 26px rgba(0, 0, 0, 0.50);
	-webkit-transition: all 0.2s ease-in;
	-moz-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
	margin-top: 50px;
}

#cards_landscape_wrap-2 .card-flyer .text-box p {
	margin-top: 10px;
	margin-bottom: 0px;
	padding-bottom: 0px;
	font-size: 14px;
	letter-spacing: 1px;
	color: #000000;
}

#cards_landscape_wrap-2 .card-flyer .text-box h6 {
	margin-top: 0px;
	margin-bottom: 4px;
	font-size: 18px;
	font-weight: bold;
	text-transform: uppercase;
	font-family: 'Roboto Black', sans-serif;
	letter-spacing: 1px;
	color: #00acc1;
}
</style>
</head>
<body>
<% session = request.getSession(); %>
	<nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Welcome ${uname}</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/Electronics/Electronicshome/">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/Electronics/profile">Profile</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/Electronics/logout">Logout</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Dropdown </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <!-- <div class="carousel-item active">
      <img src="https://www.devsnews.com/template/epixx-prev/epixx/assets/img/slider/main-Banner-2.jpg" alt="...">
    </div> -->
    <div class="carousel-item active">
      <img src="https://fdn.gsmarena.com/imgroot/news/21/01/google-store-fitbit/inline/-1200/gsmarena_001.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img20/CEPC/Wearables/OnePlus/Watch/13thMay/PC-BANNER_13th.jpg" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://promotions.newegg.com/gigabyte/22-0303/1920x660@2x.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://promotions.newegg.com/nepro/22-0407/1920x660@2x.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://promotions.newegg.com/asus/22-0013/1920x660@2x.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="http://www.anshudisplay.com/images/slider-1.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



	<%-- 
	<div class="container col-md-8">
		<div class="row row-cols-4 row-cols-md-4 g-4">
			<c:forEach var="laptop" items="${listLaptop}">
				<div class="col">
					<div class="card h-100">
						<img src="..." class="card-img-top" alt="...">
						<div class="card-img-overlay">
    						<a href="#" class="card-link">Quick View</a>
  						</div>
						<div class="card-body">
							<h5 class="card-title">${laptop.lName}</h5>
							<p class="card-text">${laptop.p_Description}</p>
							<a href="#" class="card-link">Buy</a>
    						<a href="#" class="card-link">Add To Cart</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div> --%>

	<!-- Topic Cards -->
	
	<div id="cards_landscape_wrap-2" class="mt-4 p-5">
	<h1>Laptops</h1>
		<div class="container">
			<div class="row">
				<c:forEach var="laptop" items="${listLaptop}">
					<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
						<!-- <a href=""> -->
							<div class="card-flyer">
								<div class="text-box">
									<div class="image-box" style="padding: 15%;">
										<img
											src="https://rukminim1.flixcart.com/image/312/312/ktaeqvk0/computer/b/7/4/15s-gy0501au-thin-and-light-laptop-hp-original-imag6z6muntqnzzc.jpeg?q=70"
											alt="" />
									</div>
									<form action="/Electronics/buyProduct">
										<div class="text-container">
										<h6>${laptop.lName}</h6>
										<p class="mb-3">${laptop.p_Description}</p>
										<input style="width: 50px;" type="number" name="p_quantity" placeholder="Enter Quantity" value="1"  min="1" max="${laptop.p_Quantity}">
										<input type="hidden" name="pid" value="${laptop.p_Id}">
										<a href="buyProduct" class="btn btn-primary" type=submit>Buy</a>
										<a href="#" class="btn btn-primary">Add To Cart</a>
									</div>
									
									</form>
								</div>
							</div>
						<!-- </a> -->
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<div id="cards_landscape_wrap-2">
	<h1>Mobiles</h1>
		<div class="container">
			<div class="row">
				<c:forEach var="mobile" items="${listMobile}">
					<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
						<!-- <a href=""> -->
							<div class="card-flyer">
								<div class="text-box">
									<div class="image-box" style="padding: 15%;">
										<img style="width: 150px;"
											src="https://m.media-amazon.com/images/I/61+Q6Rh3OQL._AC_UL480_QL65_.jpg"
											alt="" />
									</div>
									<form action="/Electronics/buyProduct">
									<div class="text-container">
										<h6>${mobile.mName}</h6>
										<p class="mb-3">${mobile.p_Description}</p>
										<input style="width: 50px;" type="number" name="p_quantity" placeholder="Enter Quantity" value="1"  min="1" max="${laptop.p_Quantity}">
										<input type="hidden" name="pid" value="${mobile.p_Id}">
										<a href="buyProduct" class="btn btn-primary" type=submit>Buy</a>
										<a href="#" class="btn btn-primary">Add To Cart</a>
									</div>
									</form>
								</div>
							</div>
						<!-- </a> -->
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
</body>
</html>