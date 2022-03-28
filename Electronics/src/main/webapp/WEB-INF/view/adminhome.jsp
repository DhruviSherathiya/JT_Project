<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="adminnavbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<style>
.container {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center
}

.card1 {
	position: relative;
	width: 400px;
	height: 250px;
	border-radius: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
	transition: 2s
}

.circle {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	color: #fff;
	overflow: hidden;
	border-radius: 10px;
	z-index: 5
}

.circle::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: #b52626;
	clip-path: circle(120px at 50% 50%);
	transition: 0.9s;
	z-index: 10
}

.card1:hover .circle::before {
	clip-path: circle(400px at 50% 50%)
}

.card1 img {
	z-index: 10;
	position: absolute;
	transition: 0.5s;
	pointer-event: none
}

.card1:hover img {
	height: 250px;
	width: 300px;
	top: -20%;
	right: -20%
}

.card1 .content {
	position: absolute;
	opacity: 0;
	color: #fff;
	top: 40px;
	width: 200px;
	left: 20px;
	z-index: 20;
	transition: 0.4s
}

.content p {
	font-size: 13px
}

.content button {
	width: auto;
	height: 35px;
	border: none;
	background-color: #0000ffb8;
	color: #fff;
	font-size: 14px;
	border-radius: 4px;
}

.content button:hover {
	background-color: blue
}

.card1:hover .content {
	opacity: 1
}
</style>

<html>
<head>
<meta charset="ISO-8859-1">

<title>Admin Panel</title>
</head>
<body style="background: #f5eded;">

	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-bs-ride="carousel" style="height: 100vh;">
		<div class="carousel-inner">
			<!-- <div class="carousel-item active">
      <img src="https://www.devsnews.com/template/epixx-prev/epixx/assets/img/slider/main-Banner-2.jpg" alt="...">
    </div> -->
			<div class="carousel-item active">
				<img
					src="https://fdn.gsmarena.com/imgroot/news/21/01/google-store-fitbit/inline/-1200/gsmarena_001.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://images-eu.ssl-images-amazon.com/images/G/31/img19/Wireless/A52020/LP/Web.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://images-eu.ssl-images-amazon.com/images/G/31/img20/CEPC/Wearables/OnePlus/Watch/13thMay/PC-BANNER_13th.jpg"
					alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://images-eu.ssl-images-amazon.com/images/G/31/img18/Wireless/OPPOF11Pro/OpenSale/LP/PC/2._CB469241851_.jpg"
					class="d-block w-100" alt="...">
			</div>
			<!-- <div class="carousel-item">
      <img src="https://promotions.newegg.com/nepro/22-0407/1920x660@2x.jpg" class="d-block w-100" alt="...">
    </div> -->
			<div class="carousel-item">
				<img
					src="https://acsoft.co.uk/wp-content/uploads/2017/01/Slider.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="http://www.anshudisplay.com/images/slider-1.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://truvison.com/wp-content/uploads/2014/12/Websie_Slider1-inner-page.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://demo.codezeel.com/opencart/OPC06/OPC060143/image/cache/catalog/main-banner-1-1131x498.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://images-eu.ssl-images-amazon.com/images/G/31/img19/Wireless/MobileAccessories/OnePlus_accessories/PC_accesories_banner._CB443675846_.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://m.media-amazon.com/images/S/aplus-media/vc/6c538caa-ea73-4397-9a63-286b1b575dd6.__CR0,0,1464,600_PT0_SX1464_V1___.png"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://images-eu.ssl-images-amazon.com/images/G/31/img20/Laptops/DELL/Microsite/PC/D17796502_IN_PC_GGD_Dell_Microsite_Banner_2A.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://m.media-amazon.com/images/S/aplus-media-library-service-media/62382b79-ce1d-442d-b639-76f53b4b7fc0.__CR0,0,1464,600_PT0_SX1464_V1___.jpeg"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container mt-5 p-0" style="height: 300px!important; justify-content: space-around;">
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>Laptops</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<a href="/Electronics/Product/laptop"><button>All Laptops</button></a>
			</div>
			<img width="170" src="https://media.croma.com/image/upload/v1637664814/Croma%20Assets/Computers%20Peripherals/Laptop/Images/245695_nxtbds.png">
		</div>
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>HeadPhones</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<a href="/Electronics/Product/headphone" style="width: auto;"><button>All HeadPhones</button></a>
			</div>
			<img width="200" src="https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1605107047/Croma%20Assets/Entertainment/Headphones%20and%20Earphones/Images/8945129619486.png/mxw_2048,f_auto">
		</div>
	</div>
	<div class="container mt-5 p-0" style="height: 300px!important; justify-content: space-around;">
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>Mobiles</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<a href="/Electronics/Product/mobile" style="width: auto;"><button>All Mobiles</button></a>
			</div>
			<img width="200" src="https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1638446751/Croma%20Assets/Communication/Mobiles/Images/233912_biu7qr.png/mxw_2048,f_auto">
		</div>
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>Smart Watches</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<a href="/Electronics/Product/smartwatch" style="width: auto;"><button>All Smart Watches</button></a>
			</div>
			<img width="200" src="https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1622022828/Croma%20Assets/Communication/Wearable%20Devices/Images/234633_thp0uu.png/mxw_2048,f_auto">
		</div>
	</div>
		
		<div class="container mt-5 p-0" style="height: 300px!important; justify-content: space-around;">
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>Tablets</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<a href="/Electronics/Product/tablet" style="width: auto;"><button>All Tablets</button></a>
			</div>
			<img width="180" src="https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1631791324/Croma%20Assets/Computers%20Peripherals/Tablets%20and%20iPads/Images/243615_zj2ohe.png/mxw_2048,f_auto">
		</div>
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>TVs</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<a href="/Electronics/Product/tv" style="width: auto;"><button>All TVs</button></a>
			</div>
			<img width="180" src="https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1618814193/Croma%20Assets/Entertainment/Television/Images/233045_qwdoto.png/mxw_2048,f_auto">
		</div>
	</div>
		
		

	<%@ include file="footer.jsp"%>
</body>
</html>