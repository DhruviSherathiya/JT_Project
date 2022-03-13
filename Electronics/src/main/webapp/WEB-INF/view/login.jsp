<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored = "false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

</head>
<body>

	<div class="container col-md-4 mt-5">
		<center class="mb-4">
			<h2>Login Form</h2>
		</center>
		
		<c:if test = "${not empty error_message}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
	        <div class="alert alert-danger alert-dismissible fade show" role="alert">
				  ${error_message}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
        </c:if>
        
        <c:if test = "${not empty success_msg}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
	        <div class="alert alert-success alert-dismissible fade show" role="alert">
				  ${success_msg}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
        </c:if>
		
		
	</div>

	<div class="container col-md-4">
		
		<form  action="checkLogin" method="post">
		
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="username" placeholder="Enter You Username" required>
			  <label for="floatingInput">Username</label>
			</div>
			<div class="form-floating">
			  <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password" required>
			  <label for="floatingPassword">Password</label>
			</div>
			
			<div class="row">
			
				<div class="col-md-3">
					<div class="col mt-4">
				    	<button type="submit" class="btn btn-primary mb-3">Login</button>
				    </div>
				</div>
				<div class="col-md-3">
					<div class="col mt-4">
				    	<a href="register" class="btn btn-primary">Register</a>
				    </div>
				</div>
			
			</div>
		
		</form>
	</div>

</body>
</html>