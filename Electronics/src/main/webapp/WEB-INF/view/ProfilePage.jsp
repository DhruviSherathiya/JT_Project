<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="adminnavbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>

<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='' rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
body {
	background-image: linear-gradient(to right, #FFF3E6, #CCE6FF)!important;
}

.form-control:focus {
	box-shadow: none;
	border-color: #B3DAFF;
}

.profile-button {
	background: #CCE6FF;
	box-shadow: none;
	border: none
}

.profile-button:hover {
	background: #B3DAFF
}

.profile-button:focus {
	background: #B3DAFF;
	box-shadow: none
}

.profile-button:active {
	background: #B3DAFF;
	box-shadow: none
}

.back:hover {
	color: #B3DAFF;
	cursor: pointer
}

.labels {
	font-size: 11px
}

.add-experience:hover {
	background: #B3DAFF;
	color: #fff;
	cursor: pointer;
	border: solid 1px #B3DAFF
}
</style>
<script>var elements = document.getElementsByTagName("*");
for(var id = 0; id < elements.length; ++id) { elements[id].oncontextmenu = null; }</script>
</head>
<body oncontextmenu='return false' class='snippet-body'>

	<div class="container rounded bg-white mt-5 p-5 mb-5" style="margin-top: 15vh!important;">
	
	<form:form action="updateProfile" method="post" modelAttribute="user">
	<c:if test = "${not empty success_msg}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
	        <div class="alert alert-success alert-dismissible fade show" role="alert">
				  ${success_msg}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
        </c:if>
        <form:hidden path="password" value="${user.password}"/>
        <form:hidden path="role" value="${user.role}"/>
		<div class="row">
			<div class="col-md-3 border-right">
				<div
					class="d-flex flex-column align-items-center text-center p-3 py-5">
					<img class="rounded-circle mt-5" width="150px"
						src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span
						class="font-weight-bold">${user.userName}</span><span
						class="text-black-50">${user.email}</span><span> </span>
				</div>
			</div>
			<div class="col-md-5 border-right">
				<div class="p-3 py-5">
					<div class="d-flex justify-content-between align-items-center mb-3">
						<h4 class="text-right">Profile Settings</h4>
					</div>
					
						<form:hidden path="userId" value="${user.userId}"/>
						<div class="row mt-2">
							<div class="col-md-12">
								<label class="labels">Name</label>
								<form:input type="text"
									class="form-control" placeholder="first name"
									value="${user.userName}"  path="userName" required="required" />
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-12 p-2">
								<label class="labels">Email ID</label>
								<form:input type="text"
									class="form-control" placeholder="enter email id"
									value="${user.email}" path="email" required="required" />
							</div>
							<div class="col-md-12 p-2">
								<label class="labels">Phone Number</label>
								<form:input type="text"
									class="form-control" placeholder="enter phone number"
									value="${user.phoneNumber}" path="phoneNumber" required="required" />
							</div>
							<div class="col-md-12 p-2">
								<label class="labels">Date Of Birth</label>
								<form:input type="date"
									class="form-control" placeholder="enter your birth date"
									value="${user.dateOfBirth}" path="dateOfBirth" required="required" />
							</div>
						</div>
						
					
				</div>
			</div>
			<div class="col-md-4 mt-5">
				<div class="p-3 py-5">
					
					<div class="col-md-12 p-2">
						<label class="labels">Billing Address</label>
						<form:input type="text"
							class="form-control" placeholder="enter Billing Address"
							value="${user.billing}"  path="billing" required="required" />
					</div>
					<div class="col-md-12 p-2">
						<label class="labels">Shipping Address</label>
						<form:input type="text"
							class="form-control" placeholder="enter Shipping Address"
							value="${user.shipping}" path="shipping" required="required" />
					</div>
					<div class="mt-5 text-center">
							<button class="btn btn-primary profile-button" type="submit">Save
								Profile</button>
						</div>
				</div>
			</div>
		</div>
		</form:form>
	</div>
	<%@ include file = "footer.jsp" %>
	<script type='text/javascript'
		src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>

	
</body>
</html>