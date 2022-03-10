<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
session = request.getSession();
if (session.getAttribute("user_name") == null) {
%>
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
</head>
<body>

	<div class="container col-md-4 mt-5 p-5">
		<center>
			<h2>Login Form</h2>
		</center>
		
		<form class="mt-4">
		
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" placeholder="Enter You Username" required>
			  <label for="floatingInput">Username</label>
			</div>
			<div class="form-floating">
			  <input type="password" class="form-control" id="floatingPassword" placeholder="Password" required>
			  <label for="floatingPassword">Password</label>
			</div>
			
			<div class="row">
			
				<div class="col-md-3">
					<div class="col mt-4">
				    	<button type="submit" class="btn btn-primary mb-3">Submit</button>
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
<%
}

else {
// Session is already created.
response.sendRedirect("CustomerHomePage.jsp");
// So i again redirect them to their home page
}
%>