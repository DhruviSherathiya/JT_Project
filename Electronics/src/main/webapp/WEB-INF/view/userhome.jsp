<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
	<style>
			/*----  Main Style  ----*/
#cards_landscape_wrap-2{
  text-align: center;
  background: #F7F7F7;
}
#cards_landscape_wrap-2 .container{
  padding-top: 80px; 
  padding-bottom: 100px;
}
#cards_landscape_wrap-2 a{
  text-decoration: none;
  outline: none;
}
#cards_landscape_wrap-2 .card-flyer {
  border-radius: 5px;
}
#cards_landscape_wrap-2 .card-flyer .image-box{
  background: #ffffff;
  overflow: hidden;
  box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.50);
  border-radius: 5px;
}
#cards_landscape_wrap-2 .card-flyer .image-box img{
  -webkit-transition:all .9s ease; 
  -moz-transition:all .9s ease; 
  -o-transition:all .9s ease;
  -ms-transition:all .9s ease; 
  width: 100%;
  height: 200px;
}
#cards_landscape_wrap-2 .card-flyer:hover .image-box img{
  opacity: 0.7;
  -webkit-transform:scale(1.15);
  -moz-transform:scale(1.15);
  -ms-transform:scale(1.15);
  -o-transform:scale(1.15);
  transform:scale(1.15);
}
#cards_landscape_wrap-2 .card-flyer .text-box{
  text-align: center;
}
#cards_landscape_wrap-2 .card-flyer .text-box .text-container{
  padding: 30px 18px;
}
#cards_landscape_wrap-2 .card-flyer{
  background: #FFFFFF;
  margin-top: 50px;
  -webkit-transition: all 0.2s ease-in;
  -moz-transition: all 0.2s ease-in;
  -ms-transition: all 0.2s ease-in;
  -o-transition: all 0.2s ease-in;
  transition: all 0.2s ease-in;
  box-shadow: 0px 3px 4px rgba(0, 0, 0, 0.40);
}
#cards_landscape_wrap-2 .card-flyer:hover{
  background: #fff;
  box-shadow: 0px 15px 26px rgba(0, 0, 0, 0.50);
  -webkit-transition: all 0.2s ease-in;
  -moz-transition: all 0.2s ease-in;
  -ms-transition: all 0.2s ease-in;
  -o-transition: all 0.2s ease-in;
  transition: all 0.2s ease-in;
  margin-top: 50px;
}
#cards_landscape_wrap-2 .card-flyer .text-box p{
  margin-top: 10px;
  margin-bottom: 0px;
  padding-bottom: 0px; 
  font-size: 14px;
  letter-spacing: 1px;
  color: #000000;
}
#cards_landscape_wrap-2 .card-flyer .text-box h6{
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
	User Home page
	<h3>Welcome ${uname}</h3>
	<a href="/Electronics/profile">Profile</a>
	<br>
	<a href="/Electronics/logout">Logout</a>
	<br>
	
	
	
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
    <div id="cards_landscape_wrap-2">
        <div class="container">
            <div class="row">
            <c:forEach var="laptop" items="${listLaptop}">
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box" style="padding: 10%;">
                                    <img src="https://rukminim1.flixcart.com/image/312/312/ktaeqvk0/computer/b/7/4/15s-gy0501au-thin-and-light-laptop-hp-original-imag6z6muntqnzzc.jpeg?q=70" alt="" />
                                </div>
                                <div class="text-container">
                                    <h6>${laptop.lName}</h6>
                                    <p>${laptop.p_Description}</p>
                                    <a href="#" class="btn btn-primary mt-3">Buy</a>
    								<a href="#" class="btn btn-primary mt-3">Add To Cart</a>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
            </div>
        </div>
    </div>
	
</body>
</html>