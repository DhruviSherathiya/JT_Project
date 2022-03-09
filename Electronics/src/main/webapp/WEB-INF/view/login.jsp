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

	<div class="container col-md-4 mt-5 p-5"
		style="border: 2px solid black !important; margin-top: 150px !important;">
		<center>
			<h2>Login Form</h2>
		</center>
		<form method="POST" class="row g-3 needs-validation mt-4" novalidate>
			<div class="col-12">
				<label for="validationCustomUsername" class="form-label">Username</label>
				<div class="input-group has-validation">
					<span class="input-group-text" id="inputGroupPrepend">@</span> <input
						type="text" class="form-control" id="validationCustomUsername"
						aria-describedby="inputGroupPrepend" name="username" required>
					<div class="invalid-feedback">Please choose a username.</div>
				</div>
			</div>
			<div class="col-12">
				<label for="validationCustom03" class="form-label">Password</label>
				<input type="password" class="form-control" id="validationCustom03"
					minlength="6" maxlength="10" name="password" required>
				<div id="passwordHelpBlock" class="form-text">Your password
					must be 6-10 characters long, contain letters and numbers, and must
					not contain spaces, special characters, or emoji.</div>
				<div class="invalid-feedback">Please provide a valid password.
				</div>
			</div>
			<div class="col-12 mt-3">
				<button class="btn btn-primary stretched-link" type="submit">Submit
					form</button>
			</div>
			<!-- <div class="col-12 mt-3"> -->

			<!-- </div> -->

			<!-- <a href="register" class="link-primary">Register</a> -->

		</form>


	</div>

	</script>

	<script>
		//Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')

			var smit = document.getElementById("smit");
			smit.addEventListener("click", formvalidate(), false);

			// Loop over them and prevent submission
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault()
						event.stopPropagation()
					}

					form.classList.add('was-validated')
				}, false)
			})
		})()
	</script>

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