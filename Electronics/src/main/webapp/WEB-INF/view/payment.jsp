<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script>
/* 	window.onbeforeunload = function() {
	  return "Are you sure?";
	};
 */
	window.onkeydown = function(event) {
	  if (event.keyCode === 116) {
	    window.location.reload();
	  }
	};
</script>	
<style>

@import url("https://fonts.googleapis.com/css2?family=Poppins:weight@100;200;300;400;500;600;700;800&display=swap");

body {
    background-image: linear-gradient(to right, #FFF3E6, #CCE6FF)!important;
    font-family: "Poppins", sans-serif;
    font-weight: 300
}

.container {
    height: 100vh
}

.card {
    border: none
}

.card-header {
    padding: .5rem 1rem;
    margin-bottom: 0;
    background-color: rgba(0, 0, 0, .03);
    border-bottom: none
}

.btn-light:focus {
    color: #212529;
    background-color: #e2e6ea;
    border-color: #dae0e5;
    box-shadow: 0 0 0 0.2rem rgba(216, 217, 219, .5)
}

.form-control {
    height: 50px;
    border: 2px solid #eee;
    border-radius: 6px;
    font-size: 14px
}

.form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #039be5;
    outline: 0;
    box-shadow: none
}

.input {
    position: relative
}

.input i {
    position: absolute;
    top: 16px;
    left: 11px;
    color: #989898
}

.input input {
    text-indent: 25px
}

.card-text {
    font-size: 13px;
    margin-left: 6px
}

.certificate-text {
    font-size: 12px
}

.billing {
    font-size: 11px
}

.super-price {
    top: 0px;
    font-size: 22px
}

.super-month {
    font-size: 11px
}

.line {
    color: #bfbdbd
}

.free-button {
    background: #1565c0;
    height: 52px;
    font-size: 15px;
    border-radius: 8px
}

.payment-card-body {
    flex: 1 1 auto;
    padding: 24px 1rem !important
}

.pay .btn{
	background-image: linear-gradient(to right, #e7bfd4, #bdd5ed);
	color: black!important;
	cursor: pointer;
    border: none !important;
}

.pay .btn:hover{
background-image: linear-gradient(to right, #bdd5ed, #e996c1);
}

</style>

</head>
<body>

<div class="container d-flex justify-content-center mt-5 mb-5">
    <div class="row g-3">
    	<div class="col-md-2"></div>
    	
        <div class="col-md-8">
        <center class="p-4"><h2>Payment Method</h2></center>
            <div class="card">
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header p-0" id="headingTwo">
                            <h2 class="mb-0"> <button class="btn btn-light btn-block text-left collapsed p-3 rounded-0 border-bottom-custom" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <div class="d-flex align-items-center justify-content-between"> <span>Paypal</span> <img src="https://i.imgur.com/7kQEsHU.png" width="30"> </div>
                                </button> </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body"> <input type="text" class="form-control" placeholder="Paypal email"> </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header p-0">
                            <h2 class="mb-0"> <button class="btn btn-light btn-block text-left p-3 rounded-0" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <div class="d-flex align-items-center justify-content-between"> <span>Credit card</span>
                                        <div class="icons"> <img src="https://i.imgur.com/2ISgYja.png" width="30"> <img src="https://i.imgur.com/W1vtnOV.png" width="30"> <img src="https://i.imgur.com/35tC99g.png" width="30"> <img src="https://i.imgur.com/2ISgYja.png" width="30"> </div>
                                    </div>
                                </button> </h2>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body payment-card-body"> <span class="font-weight-normal card-text">Card Number</span>
                                <div class="input"> <i class="fa fa-credit-card"></i> <input type="text" class="form-control" placeholder="0000 0000 0000 0000"> </div>
                                <div class="row mt-3 mb-3">
                                    <div class="col-md-6"> <span class="font-weight-normal card-text">Expiry Date</span>
                                        <div class="input"> <i class="fa fa-calendar"></i> <input type="text" class="form-control" placeholder="MM/YY"> </div>
                                    </div>
                                    <div class="col-md-6"> <span class="font-weight-normal card-text">CVC/CVV</span>
                                        <div class="input"> <i class="fa fa-lock"></i> <input type="text" class="form-control" placeholder="000"> </div>
                                    </div>
                                </div> <span class="text-muted certificate-text"><i class="fa fa-lock"></i> Your transaction is secured with ssl certificate</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="m-4 pay"><a href="/Electronics/myOrder" class="btn btn-primary px-4 py-2">Pay $${total}</a></div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>

</body>
</html>