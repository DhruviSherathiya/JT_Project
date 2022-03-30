<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="adminnavbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Mobile</title>

<style>
.col button{
	background-image: linear-gradient(to right, #e7bfd4, #bdd5ed);
	color: black!important;
	cursor: pointer;
    border: none !important;
}

.col button:hover{
background-image: linear-gradient(to right, #bdd5ed, #e996c1);
}
</style>

</head>
<body style="background-image: linear-gradient(to right, #FFF3E6, #CCE6FF)!important;">

	<div class="container col-8" style="margin-top: 10vh!important;">

		<form:form action="saveSmartWatch" method="post" modelAttribute="smartwatch"
			class="row g-3 needs-validation form-floating mb-3 mt-2"
			novalidate="novalidate">
				<form:hidden path="p_Id"/>
				<form:hidden path="p_Type" value="SmartWatch"/>
				<div class="col">
					<div class="col-md-12 mt-3">
						<label for="validationCustom01" class="form-label">Name</label>
						<form:input type="text" class="form-control"
							id="validationCustom01" path="sName" required="required" />
						<div class="valid-feedback">Looks good!</div>
					</div>
					<div class="col-md-12 mt-3">
						<label for="validationCustom03" class="form-label">Color</label>
						<form:input type="text" class="form-control"
							id="validationCustom03" path="sColor" required="required" />
						
					</div>
					<div class="col-md-12 mt-3">
						<label for="validationCustom02" class="form-label">Size</label>
						<form:input type="text" class="form-control"
							id="validationCustom02" path="sSize" required="required" />
						<div class="valid-feedback">Looks good!</div>
					</div>
					<div class="col-md-12 mt-3">
						<label for="validationCustom02" class="form-label">Connectivity</label>
						<form:input type="text" class="form-control"
							id="validationCustom02" path="sConnectivity" required="required" />
						<div class="valid-feedback">Looks good!</div>
					</div>


					

				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">Description</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="p_Description" required="required" />
					
				</div>
				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">Price</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="p_Price" required="required" />
					
				</div>
				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">URL</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="img_Url" required="required" />
					
				</div>
				<div class="col-md-12 mt-3">
					<label for="validationCustom03" class="form-label">Quantity</label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="p_Quantity" required="required" />
					
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