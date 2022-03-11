<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored = "false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
</head>
<body>

	<div class="container col-md-8 mt-4 p-5">
		<center>
			<h2>Register Form</h2>
		</center>
		<c:if test = "${not empty error_msg}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
	        <div class="alert alert-danger alert-dismissible fade show" role="alert">
				  ${error_msg}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
        </c:if>
		<form:form action="addUser" method="post" modelAttribute="user" class="row g-3 needs-validation" novalidate="novalidate">
			<form:hidden path="userId"/>
			<form:hidden path="role" value="user"/>
			<div class="col-md-4">
				<label for="validationCustomUsername" class="form-label">Username</label>
				<div class="input-group has-validation">
					<span class="input-group-text" id="inputGroupPrepend">@</span> 
					<form:input
						type="text" class="form-control" name="username" id="validationCustomUsername"
						aria-describedby="inputGroupPrepend" path="userName" required="required"/>
					    <div class="invalid-feedback">Please choose a username. ${error_msg}</div>
					<div class="valid-feedback">Nice Username!</div>
				</div>
			</div>
			<div class="col-md-4">
				<label for="validationCustom01" class="form-label">Password</label>
				<form:input type="password" class="form-control" name="password" id="validationCustom01" path="password" required="required"/>
				<div class="invalid-feedback">Please choose a Password.</div>
				<div class="valid-feedback">Looks Good!</div>
			</div>
			<div class="col-md-4">
				<label for="validationCustom02" class="form-label">Email</label> 
				<form:input type="email" class="form-control" id="validationCustom02" name="email" path="email" required="required"/>
				<div class="invalid-feedback">Please choose a Email!</div>
				<div class="valid-feedback">Fine!</div>
			</div>
			<div class="col-md-6">
				<label for="validationCustom03" class="form-label">Phone
					Number</label> <form:input type="text" class="form-control"
					id="validationCustom03" path="phoneNumber" name="phoneNumber" required="required"/>
				<div class="invalid-feedback">Please provide a valid Phone Number!</div>
			</div>
			<div class="col-md-3">
				<label for="validationCustom05" class="form-label">Date Of
					Birth</label> 
				<form:input type="date" class="form-control" id="validationCustom05" name="dateOfBirth" path="dateOfBirth" required="required"/>
				<div class="invalid-feedback">Please provide a valid dob.</div>
			</div>
			<div class="form-floating col-md-6">
				<form:textarea class="form-control" placeholder="Leave a comment here"
					id="floatingTextarea2" style="height: 100px" path="billing" name="billing" required="required"></form:textarea>
				<label for="floatingTextarea2">Billing Address</label>
			</div>
			<div class="form-floating col-md-6">
				<form:textarea class="form-control" placeholder="Leave a comment here"
					id="floatingTextarea2" style="height: 100px" path="shipping" name="shipping" required="required"></form:textarea>
				<label for="floatingTextarea2">Shipping Address</label>
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
		</form:form>
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