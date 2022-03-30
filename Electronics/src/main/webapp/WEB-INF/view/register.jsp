<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
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
body {
	color: #000;
	overflow-x: hidden;
	height: 100%;
	background-image: linear-gradient(to right,  #CCE6FF, #FFF3E6);
	background-repeat: no-repeat
}

input, textarea {
	background-color: #FFF3E6;
	border-radius: 50px !important;
	padding: 12px 15px 12px 15px !important;
	width: 100%;
	box-sizing: border-box;
	border: none !important;
	border: 1px solid #FFF3E6 !important;
	font-size: 16px !important;
	color: #000 !important;
	font-weight: 400
}

input:focus, textarea:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	border: 1px solid  #CCE6FF !important;
	outline-width: 0;
	font-weight: 400
}

button:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	outline-width: 0
}

.card {
	border-radius: 0;
	border: none
}

.card1 {
	width: 50%;
	padding: 40px 30px 10px 30px
}

.card2 {
	width: 50%;
	background-image: linear-gradient(to right, #FFF3E6,  #CCE6FF)
}

#logo {
	width: 70px;
	height: 60px
}

.heading {
	margin-bottom: 60px !important
}

::placeholder {
	color: #000 !important;
	opacity: 1
}

:-ms-input-placeholder {
	color: #000 !important
}

::-ms-input-placeholder {
	color: #000 !important
}

.form-control-label {
	font-size: 12px;
	margin-left: 15px
}

.msg-info {
	padding-left: 15px;
	margin-bottom: 30px
}

.btn-color {
	border-radius: 50px;
	background-image: linear-gradient(to right, #FFF3E6,  #CCE6FF);
	padding: 15px;
	cursor: pointer;
	border: none !important;
	margin-top: 40px
}

.btn-color:hover {
	/* color: #fff; */
	background-image: linear-gradient(to right,  #CCE6FF, #FFF3E6)
}

.btn-white {
	border-radius: 50px;
	background-color: #fff;
	padding: 8px 40px;
	cursor: pointer;
	border: 2px solid  #CCE6FF !important
}

.btn-white:hover {
	/* color: #fff; */
	background-image: linear-gradient(to right, #FFF3E6,  #CCE6FF)
}

a {
	color: #000
}

a:hover {
	color: #000
}

.bottom {
	width: 100%;
	margin-top: 50px !important
}

.sm-text {
	font-size: 15px
}

@media screen and (max-width: 992px) {
	.card1 {
		width: 100%;
		padding: 40px 30px 10px 30px
	}
	.card2 {
		width: 100%
	}
	.right {
		margin-top: 100px !important;
		margin-bottom: 100px !important
	}
}

@media screen and (max-width: 768px) {
	.container {
		padding: 10px !important
	}
	.card2 {
		padding: 50px
	}
	.right {
		margin-top: 50px !important;
		margin-bottom: 50px !important
	}
}
</style>
</head>
<body>

	<div class="container col-md-8 mt-3">
		<c:if test="${not empty error_msg}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img"
				aria-label="Danger:">
				<use xlink:href="#exclamation-triangle-fill" /></svg>
			<div class="alert alert-danger alert-dismissible fade show"
				role="alert">
				${error_msg}
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
		</c:if>
	</div>

	<div class="container px-4 py-3 mb-3 mx-auto">
		<div class="card card0">
			<div class="d-flex flex-lg-row flex-column-reverse">
				<div class="card card1">
					<div class="row justify-content-center my-auto">
						<div class="col-md-8 col-10 my-5">
							<!-- <div class="row justify-content-center px-3 mb-3"> <img id="logo" src="https://i.imgur.com/PSXxjNY.png"> </div> -->
							<h3 class="mb-5 text-center heading">Electronic Store</h3>
							<h6 class="msg-info">Register your account here</h6>
							<form:form action="addUser" method="post" modelAttribute="user">
								<form:hidden path="userId" />
								<form:hidden path="role" value="user" />
								<div class="form-group">
									<label class="form-control-label text-muted">Username</label> 
									<form:input type="text" id="username" name="username"
										placeholder="Enter Your User Name" class="form-control" path="userName" required="required" />
								</div>
								<div class="form-group">
									<label class="form-control-label text-muted">Password</label>
									<form:input type="password" id="password" name="password"
										placeholder="Password" class="form-control" path="password" required="required" />
								</div>
								<div class="form-group">
									<label class="form-control-label text-muted">Email</label> 
									<form:input type="email" id="email" name="email"
										placeholder="Email" class="form-control" path="email" required="required" />
								</div>
								<div class="form-group">
									<label class="form-control-label text-muted">Phone Number</label> 
									<form:input type="text" id="phoneNumber" name="phoneNumber"
										placeholder="Phone Number" class="form-control" path="phoneNumber" required="required" />
								</div>
								<div class="form-group">
									<label class="form-control-label text-muted">Date Of Birth</label> 
									<form:input type="date" id="dateOfBirth" name="dateOfBirth"
										placeholder="Date Of Birth" class="form-control" path="dateOfBirth" required="required" />
								</div>
								<div class="form-group">
									<label class="form-control-label text-muted">Billing Address</label> 
									<form:textarea id="billing" name="billing"
										placeholder="Billing Address" class="form-control" path="billing" required="required"></form:textarea>
								</div>
								<div class="form-group">
									<label class="form-control-label text-muted">Shipping Address</label> 
									<form:textarea id="shipping" name="shipping"
										placeholder="Billing Address" class="form-control" path="shipping" required="required"></form:textarea>
								</div>
								<div class="row justify-content-center my-3 px-3">
									<button class="btn-block btn-color" type="submit">Creat New One</button>
								</div>
							</form:form>
							<!-- <div class="row justify-content-center my-2"> <a href="#"><small class="text-muted">Forgot Password?</small></a> </div> -->
							<div class="bottom text-center mb-2">
								<p href="register" class="sm-text mx-auto mb-3">
									Already have an account?<a href="/Electronics/"
										class="btn btn-white ml-5" style="margin-left: 10px;">Login</a>
								</p>
							</div>
						</div>
					</div>

				</div>
				<div class="card card2">
					<div class="my-5 mx-md-5 px-md-5 right" style="margin-top: 40vh!important;">
						<h3>We are Awesome</h3>
						<small>In this world of technology, come to our store and buy your favourite products at very reasonable price with jumbo discount and offers.</small>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>