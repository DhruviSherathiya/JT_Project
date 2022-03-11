<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>

	<div class="container-fluid col-md-3 mt-5 p-5">
		<center>
			<h2>Add Product</h2>
		</center>
		<form class="row g-3 needs-validation ps-5 p-3" novalidate>
			<div class="form-check">
				<input type="radio" class="form-check-input"
					id="validationFormCheck2" name="radio-stacked" required> <label
					class="form-check-label" for="validationFormCheck2" value="laptop">Laptop</label>
			</div>
			<div class="form-check mb-3">
				<input type="radio" class="form-check-input"
					id="validationFormCheck3" name="radio-stacked" required> <label
					class="form-check-label" for="validationFormCheck3" value="mobile">Mobile</label>
			</div>
			<div class="form-check mb-3">
				<input type="radio" class="form-check-input"
					id="validationFormCheck3" name="radio-stacked" required> <label
					class="form-check-label" for="validationFormCheck3" value="headphone">Headphone</label>
			</div>
			<div class="form-check mb-3">
				<input type="radio" class="form-check-input"
					id="validationFormCheck3" name="radio-stacked" required> <label
					class="form-check-label" for="validationFormCheck3" value="smartwatch">Smart Watch</label>
			</div>
			<div class="form-check mb-3">
				<input type="radio" class="form-check-input"
					id="validationFormCheck3" name="radio-stacked" required> <label
					class="form-check-label" for="validationFormCheck3" value="tablet">Tablet</label>
			</div>
			<div class="form-check mb-3">
				<input type="radio" class="form-check-input"
					id="validationFormCheck3" name="radio-stacked" required> <label
					class="form-check-label" for="validationFormCheck3" value="tv">TV</label>
			</div>
			<div class="col-12">
				<button class="btn btn-primary" type="submit">Submit form</button>
			</div>
		</form>

	</div>

	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')

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