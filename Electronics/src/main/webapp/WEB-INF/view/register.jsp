<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
</head>
<body>

	<div class="container col-md-8 mt-4 p-5">
		<center>
			<h2>Register Form</h2>
		</center>
		<form class="row g-3 needs-validation" novalidate>
			<div class="col-md-4">
				<label for="validationCustomUsername" class="form-label">Username</label>
				<div class="input-group has-validation">
					<span class="input-group-text" id="inputGroupPrepend">@</span> <input
						type="text" class="form-control" id="validationCustomUsername"
						aria-describedby="inputGroupPrepend" required>
					<div class="invalid-feedback">Please choose a username.</div>
					<div class="valid-feedback">Nice Username!</div>
				</div>
			</div>
			<div class="col-md-4">
				<label for="validationCustom01" class="form-label">Password</label>
				<input type="password" class="form-control" id="validationCustom01" required>
				<div class="invalid-feedback">Please choose a Password.</div>
				<div class="valid-feedback">Looks Good!</div>
			</div>
			<div class="col-md-4">
				<label for="validationCustom02" class="form-label">Email</label> <input
					type="email" class="form-control" id="validationCustom02" required>
				<div class="invalid-feedback">Please choose a Email!</div>
				<div class="valid-feedback">Fine!</div>
			</div>
			<div class="col-md-6">
				<label for="validationCustom03" class="form-label">Phone
					Number</label> <input type="text" class="form-control"
					id="validationCustom03" required>
				<div class="invalid-feedback">Please provide a valid Phone Number!</div>
			</div>
			<div class="col-md-3">
				<label for="validationCustom05" class="form-label">Date Of
					Birth</label> <input type="date" class="form-control"
					id="validationCustom05" required>
				<div class="invalid-feedback">Please provide a valid dob.</div>
			</div>
			<div class="form-floating col-md-6">
				<textarea class="form-control" placeholder="Leave a comment here"
					id="floatingTextarea2" style="height: 100px" required></textarea>
				<label for="floatingTextarea2">Billing Address</label>
			</div>
			<div class="form-floating col-md-6">
				<textarea class="form-control" placeholder="Leave a comment here"
					id="floatingTextarea2" style="height: 100px" required></textarea>
				<label for="floatingTextarea2">Shipping Address</label>
			</div>
			<div class="form-check form-check-inline col-md-6">
				<input class="form-check-input" type="radio"
					name="role" id="inlineRadio1" value="option1">
				<label class="form-check-label" for="inlineRadio1">User</label>
			</div>
			<div class="form-check form-check-inline col-md-6">
				<input class="form-check-input" type="radio"
					name="role" id="inlineRadio2" value="option2">
				<label class="form-check-label" for="inlineRadio2">Admin</label>
			</div>
			<div class="col-12">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="invalidCheck" required> <label
						class="form-check-label" for="invalidCheck"> Agree to
						terms and conditions </label>
					<div class="invalid-feedback">You must agree before
						submitting.</div>
				</div>
			</div>
			<div class="col-12">
				<button class="btn btn-primary" type="submit">Submit form</button>
			</div>
		</form>
	</div>
	
	<script>
	
	(function () {
		  'use strict'

		  // Fetch all the forms we want to apply custom Bootstrap validation styles to
		  var forms = document.querySelectorAll('.needs-validation')

		  // Loop over them and prevent submission
		  Array.prototype.slice.call(forms)
		    .forEach(function (form) {
		      form.addEventListener('submit', function (event) {
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