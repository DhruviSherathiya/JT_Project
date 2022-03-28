<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="adminnavbar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Laptop</title>

</head>
<body style="background: #f5eded;">
	<%-- <center class="mt-5">
		<h1>New/Edit Laptop</h1>
	</center> --%>
	<div class="container col-8" style="margin-top: 10vh!important;">

		<form:form action="saveLaptop" method="post" modelAttribute="laptop"
			class="row g-3 needs-validation form-floating mb-3 mt-2"
			novalidate="novalidate">
				<form:hidden path="p_Type" value="Laptop"/>
				<div class="col">
					<div class="col-md-12 mt-3">
						<label for="validationCustom01" class="form-label">Name</label>
						<form:input type="text" class="form-control"
							id="validationCustom01" path="lName" required="required" />
						<div class="valid-feedback">Looks good!</div>
					</div>
					<div class="col-md-12 mt-3">
						<label for="validationCustom02" class="form-label">Ram</label>
						<form:input type="text" class="form-control"
							id="validationCustom02" path="lRam" required="required" />
						<div class="valid-feedback">Looks good!</div>
					</div>
					<div class="col-md-12 mt-3">
						<label for="validationCustom03" class="form-label">Processor</label>
						<form:input type="text" class="form-control"
							id="validationCustom03" path="lProcessor" required="required" />
						<div class="invalid-feedback">Please provide a valid city.</div>
					</div>
					<div class="col-md-12 mt-3">
						<label for="validationCustom05" class="form-label">Storage</label>
						<form:input type="text" class="form-control"
							id="validationCustom05" path="lStorage" required="required" />
						<div class="invalid-feedback">Please provide a valid zip.</div>
					</div>
					<div class="col-md-12 mt-3">
						<label for="validationCustom03" class="form-label">Color</label>
						<form:input type="text" class="form-control"
							id="validationCustom03" path="lColor" required="required" />
						<div class="invalid-feedback">Please provide a valid city.</div>
					</div>

				
				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">Graphics</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="lGraphics" required="required" />
					<div class="invalid-feedback">Please provide a valid city.</div>
				</div>

				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">Description</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="p_Description" required="required" />
					<div class="invalid-feedback">Please provide a valid city.</div>
				</div>
				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">Price</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="p_Price" required="required" />
					<div class="invalid-feedback">Please provide a valid city.</div>
				</div>
				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">Quantity</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="p_Quantity" required="required" />
					<div class="invalid-feedback">Please provide a valid city.</div>
				</div>
				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">URL</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="img_Url" required="required" />
					<div class="invalid-feedback">Please provide a valid city.</div>
				</div>
				<div class="col-12 mt-3">
					<button class="btn btn-primary" type="submit">Save</button>
				</div>
			</div>

		</form:form>
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
	
<%@ include file = "footer.jsp" %>	
</body>
</html>