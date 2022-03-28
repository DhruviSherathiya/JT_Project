<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" crossorigin="anonymous">		
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

 @import url('https://fonts.googleapis.com/css?family=Muli&display=swap');

/*  body {
     font-family: 'Muli', sans-serif;
     background-color: #fff !important;
     color: #000 !important;
     overflow-x: hidden !important
 }

 html {
     overflow-x: hidden !important
 } */
 
 footer .card:hover {
	background: #fff;
	box-shadow: 0px 15px 26px rgba(0, 0, 0, 0.50);
	-webkit-transition: all 0.2s ease-in;
	-moz-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
}

 .footer .card-0 {
     overflow-x: hidden !important;
     padding: auto 0px auto 0px !important;
     background-color: #000F2E !important;
     color: #FFFFFF !important;
     border-radius: 0;
     margin: 0 !important;
     background: url('https://i.imgur.com/4uwpRtg.jpg');
     background-size: contain;
     background-repeat: no-repeat;
     background-position: right calc(70px + (120 - 70) * ((100vw - 320px) / (1600 - 320))) bottom !important
 }

 .footer h5 {
     font-size: calc(16px + (21 - 16) * ((100vw - 360px) / (1600 - 360))) !important
 }

 .footer h6 {
     font-size: calc(13px + (15 - 13) * ((100vw - 360px) / (1600 - 360))) !important;
     color: #3f3d3d !important
 }

 .footer .fa {
     cursor: pointer;
     font-size: 21px;
     margin: 5px 10px 5px 10px !important
 }

 .footer button:focus {
     -moz-box-shadow: none !important;
     -webkit-box-shadow: none !important;
     box-shadow: none !important;
     outline-width: 0
 }

 .footer li {
     margin-top: 8px;
     margin-bottom: 8px
 }

 .footer input {
     border-radius: 2px !important;
     background: transparent !important;
     color: #FFFFFF !important
 }

 .footer input:focus {
     -moz-box-shadow: none !important;
     -webkit-box-shadow: none !important;
     box-shadow: none !important;
     outline-width: 0;
     border-color: #FFFFFF !important
 }

.footer img {
     vertical-align: middle !important;
     width: 100%;
     width: calc(30px + 6 * ((100vw - 320px) / 680)) !important
 }

.footer li:first-child {
     font-size: 20px !important;
     font-weight: bold
 }

 .footer small {
     font-size: calc(12px + (14 - 12) * ((100vw - 360px) / (1600 - 360))) !important
 }

 .footer p {
     font-size: calc(14px + (16 - 14) * ((100vw - 360px) / (1600 - 360))) !important;
     color: rgb(78, 77, 77) !important
 }

 .footer .social {
     position: relative;
     left: -10px
 }

 .footer .Subscribe {
     background-color: #FFFFFF !important;
     font-weight: bold
 }

 .footer small {
     color: #777 !important
 }

 .footer .btn {
     border-radius: 50px
 }

 .footer .card-1 {
     border-left: 3px solid green !important;
     border-radius: 0;
     padding : 4%;
 }

 .footer img {
     width: 25px !important
 }

 .footer hr.colored {
     height: 8px;
     background: linear-gradient(to left, rgba(196, 222, 138, 1) 0%, rgba(196, 222, 138, 1) 12.5%, rgba(245, 253, 212, 1) 12.5%, rgba(245, 253, 212, 1) 25%, rgba(255, 208, 132, 1) 25%, rgba(255, 208, 132, 1) 37.5%, rgba(242, 122, 107, 1) 37.5%, rgba(242, 122, 107, 1) 50%, rgba(223, 157, 185, 1) 50%, rgba(223, 157, 185, 1) 62.5%, rgba(192, 156, 221, 1) 62.5%, rgba(192, 156, 221, 1) 75%, rgba(95, 156, 217, 1) 75%, rgba(95, 156, 217, 1) 87.5%, rgba(94, 190, 227, 1) 87.5%, rgba(94, 190, 227, 1) 87.5%, rgba(94, 190, 227, 1) 100%);
 	 margin: 0;
 }

 .footer .fa {
     padding: calc(10px + (10 - 10) * ((100vw - 360px) / (1600 - 360))) !important;
     font-size: calc(15px + (20 - 15) * ((100vw - 360px) / (1600 - 360))) !important;
     width: calc(30px + (38 - 30) * ((100vw - 360px) / (1600 - 360))) !important;
     text-align: center;
     text-decoration: none;
     border-radius: 50px !important;
     margin: 6px !important
 }

 .footer a {
     text-decoration: none !important
 }

 .footer .fa-facebook {
     background: #3B5998;
     color: white
 }

 .footer .fa:hover {
     background-color: transparent !important;
     color: blue;
 }

 .footer .fa-twitter {
     background: #55ACEE;
     color: white
 }

 .footer .fa-instagram {
     background: #3f729b;
     color: white
 }

 .footer .fa-linkedin {
     background: #0e76a8;
     color: white
 }

 .footer .form-row {
     position: relative;
     left: calc(30px + (50 - 30) * ((100vw - 320px) / (1600 - 320)))
 }

 @media screen and (max-width: 726px) {
     .footer .form-row {
         position: relative;
         left: 0px !important
     }
 }

 @media screen and (max-width: 1143px) {
     .footer .card-0 {
         background: none
     }
 }

</style>

</head>
<body>

	<div class="container-fluid justify-content-center mt-5 p-0 mx-0 footer">
    <div class="row px-0">
        <div class="col">
            <div class="card py-5 border-0 card-0">
                <div class="card-body ">
                    <div class="form-row">
                        <div class="col-12 mb-4">
                            <h5><b>Refer your friends</b></h5>
                        </div>
                        <div class="col-sm-auto col-12 my-sm-0 mt-3 text-left"><label for="validationCustom01">First name</label> <input type="text" class="form-control" id="validationCustom01" placeholder="First name" value="Mark"></div>
                        <div class="col-sm-auto col-12 my-sm-0 mt-4 "><label for="validationCustom01 ">Contact Number</label><input type="text" class="form-control" id="validationCustom01" placeholder="Contact Number" value="88888 88888"> </div>
                        <div class="col-auto align-self-end mt-sm-0 mt-4"><button class="btn btn-block btn-success ml-2 mt-md-0 mt-3">Refer Now</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="card border-0">
            <div class="card-body px-5">
                <div class="row justify-content-around mb-0 pt-5 ">
                    <div class="col-xl-3 col-md-6 col-sm-6 col-12 my-auto">
                        <ul class="list-unstyled mt-md-3 mt-5">
                            <li>
                                <p class="mb-4">Developer 1 </p>
                            </li>
                            <li>
                                <div class="card card-1 border-0">
                                    <div class="card-body p-0 pl-3">
                                        <h6 class="mb-3"><b>Dev Oza</b></h6> <small>devoza121220@gmail.com</small><br> <small>7201066052</small>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xl-3 col-md-6 col-sm-6 col-12 my-auto">
                        <ul class="list-unstyled mt-md-3 mt-5">
                            <li>
                                <p class="mb-4">Developer 2 </p>
                            </li>
                            <li>
                                <div class="card card-1 border-0">
                                    <div class="card-body p-0 pl-3">
                                        <h6 class="mb-3"><b>Dhruvi Sherathiya</b></h6> <small>Dhruvi@gmail.com</small><br> <small>801094697</small>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xl-3 col-md-6 col-sm-6 col-12 my-auto">
                        <ul class="list-unstyled mt-md-3 mt-5">
                            <li>
                                <p class="mb-4">Developer 3 </p>
                            </li>
                            <li>
                                <div class="card card-1 border-0">
                                    <div class="card-body p-0 pl-3">
                                        <h6 class="mb-3"><b>Harsh Patel</b></h6> <small>Harsh@gmail.com</small><br> <small>801094697</small>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xl-3 col-md-6 col-sm-6 col-12 my-auto">
                        <ul class="list-unstyled mt-md-3 mt-5">
                            <li>
                                <p class="mb-4">Developer 4 </p>
                            </li>
                            <li>
                                <div class="card card-1 border-0">
                                    <div class="card-body p-0 pl-3">
                                        <h6 class="mb-3"><b>Krupali Pipaliya</b></h6> <small>Krupali@gmail.com</small><br> <small>771094697</small>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row justify-content-around mb-0 py-5 ">
                    <div class="col-xl-3 col-md-6 col-sm-6 col-12 pt-4">
                        <ul class="list-unstyled">
                            <li class="mt-md-0 mt-4">For Companies</li>
                            <li>Become a Sponsor</li>
                            <li>Download brochure</li>
                        </ul>
                    </div>
                    
                    <div class="col-xl-3 col-md-6 col-sm-6 col-12 pt-4">
                        <ul class="list-unstyled">
                            <li class="mt-md-0 mt-4">For Companies</li>
                            <li>Become a Sponsor</li>
                            <li>Download brochure</li>
                        </ul>
                    </div>
                    <div class="col-xl-3 col-md-6 col-sm-6 col-12 pt-4">
                        <ul class="list-unstyled">
                            <li class="mt-md-0 mt-4">Our initiatiives</li>
                            <li>Enablers</li>
                            <li>Changemakers</li>
                        </ul>
                    </div>
                    <div class="col-xl-auto col-md-6 col-sm-6 co-12 pt-4">
                        <ul class="list-unstyled">
                            <li class="mt-md-0 mt-4">We are social</li>
                            <li><a href="#" class="fa fa-facebook"></a><a href="#" class="fa fa-twitter"></a><a href="#" class="fa fa-instagram"></a><a href="#" class="fa fa-linkedin"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
    </footer>
    <hr class="colored" />
</div>

</body>
</html>