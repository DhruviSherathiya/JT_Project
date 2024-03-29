<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>    
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" crossorigin="anonymous">		
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>	

<style>
	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');

* {
    padding: 0;
    margin: 0
}

body{
	background-image: linear-gradient(to right, #FFF3E6, #CCE6FF);
}

.container {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: linear-gradient(to right, #FFF3E6, #CCE6FF);
}

.card {
    height: 500px;
    width: 800px;
    background-color: #fff;
    position: relative;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    position: relative;
    font-family: 'Poppins', sans-serif
}

.form {
    width: 100%;
    height: 100%;
    display: flex
}

.left-side {
    width: 30%;
    background-color: #fff;
    height: 100%;
    position: relative;
    overflow: hidden;
    cursor: pointer
}

.left-side .line1 {
    height: 350px;
    width: 100%;
    background-color: #4b66ef;
    position: absolute;
    clip-path: polygon(0 0, 100% 0, 100% 50%, 50% 100%, 50% 100%, 0% 50%);
    z-index: 10
}

.left-side .line2 {
    height: 350px;
    width: 440px;
    background-color: #31c8ff;
    position: absolute;
    clip-path: polygon(0 0, 0% 100%, 100% 50%);
    top: 150px;
    z-index: 9
}

.left-side .line3 {
    height: 330px;
    width: 100%;
    background-color: #f0aec5;
    position: absolute;
    clip-path: polygon(100% 0, 0% 100%, 100% 100%);
    z-index: 11;
    bottom: 0
}

.contact-us {
    display: flex;
    justify-content: center
}

.contact-us p {
    z-index: 11;
    writing-mode: vertical-lr;
    text-orientation: mixed;
    transform: rotate(-180deg);
    color: #fff;
    font-size: 25px;
    font-weight: 700;
    position: absolute;
    top: 20px;
    left: 30px
}

.contact-us span {
    position: absolute;
    top: 180px;
    left: 49px;
    height: 80px;
    width: 2px;
    background-color: #fff;
    z-index: 11
}

.left-side .social {
    display: flex;
    position: absolute;
    bottom: 20px;
    left: 55px
}

.social i {
    margin-right: 20px;
    z-index: 12;
    font-size: 23px;
    color: #fff;
    transition: all 0.6s
}

.social i:nth-child(1) {
    position: absolute;
    bottom: -90px;
    left: 0
}

.social i:nth-child(2) {
    position: absolute;
    bottom: -90px;
    left: 30px;
    transition-delay: 0.3s
}

.social i:nth-child(3) {
    position: absolute;
    bottom: -90px;
    left: 70px;
    transition-delay: 0.6s
}

.social i:nth-child(4) {
    position: absolute;
    bottom: -90px;
    left: 110px;
    transition-delay: 0.9s
}

.left-side:hover .social i {
    bottom: 0
}

.right-side {
    width: 70%;
    background-color: #fff;
    height: 100%;
    position: relative;
    cursor: pointer;
    overflow: hidden
}

.top-div {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding: 20px;
    box-sizing: border-box
}

.top-div h2 {
    font-weight: 800;
    font-size: 25px
}

.top-div p {
    font-size: 13px;
    font-weight: 800
}

.stats {
    display: flex;
    justify-content: space-between;
    padding: 0 40px;
    margin-top: 30px
}

.stats1 i {
    display: flex;
    justify-content: center;
    font-size: 20px;
    color: #a5f1cf;
    transition: all 0.5s;
    transform: scale(0)
}

.right-side:hover .stats1 i {
    transform: scale(1.3)
}

.stats1 span {
    font-size: 12px;
    font-weight: 600
}

.card-content {
    display: flex;
    justify-content: center;
    margin-top: 20px
}

.card-content span {
    height: 230px;
    width: 300px;
    border-radius: 10px;
    background-color: #fff;
    box-shadow: 2px 2px 20px 5px #c8d2ff;
    padding: 25px;
    box-sizing: border-box
}

input[type='text'] {
    height: 15px;
    width: 100%;
    border: none;
    border-bottom: 2px solid #c8d2ff;
    outline: 0;
    caret-color: #c8d2ff;
    margin-bottom: 20px
}

.input-text {
    position: relative
}

.input-text small {
    position: absolute;
    top: 2px;
    left: 0;
    color: #c8d2ff;
    font-weight: 600;
    transition: all 0.5s
}

.input-text input:focus~small,
.input-text input:valid~small {
    top: -15px;
    font-size: 12px;
    color: black
}

.textarea {
    position: relative;
    margin-top: 8px;
    color: #c8d2ff
}

.textarea textarea {
    height: 60px;
    width: 100%;
    resize: none;
    border: none;
    outline: none;
    border-bottom: 2px solid #c8d2ff;
    caret-color: #c8d2ff;
    /* color: #c8d2ff */
}

.textarea small {
    position: absolute;
    top: -2px;
    left: 0;
    transition: all 0.5s;
    font-weight: 600
}

.textarea textarea:focus~small,
.textarea textarea:valid~small {
    top: -20px;
    font-size: 12px;
    color: black
}

.buttons {
    display: flex;
    justify-content: center;
    position: relative
}

.buttons button {
    height: 40px;
    width: 150px;
    position: absolute;
    bottom: -140px;
    color: white;
    background-color: #4b6fef;
    border-radius: 8px;
    transition: all 0.5s;
    cursor: pointer;
    border: none
}

.buttons button:hover {
    background-color: blue
}

.right-side:hover button {
    position: absolute;
    bottom: -20px
}

@media (max-width:750px) {
    .container .card {
        max-width: 350px
    }

    .container .card .right-side {
        display: none
    }

    .container .card .left-side {
        width: 100%
    }

    .left-side .social {
        display: flex;
        left: 30%;
        position: absolute;
        bottom: 20px
    }
}
</style>
</head>
<body>
        
<form action="contact" method="POST" clas="p-4">
<div class="container">
    <div class="card">
        <div class="form">
            <div class="left-side"> <span class="line1"></span> <span class="line2"></span> <span class="line3"></span>
                <div class="contact-us">
                    <p>Contact Us</p> <span></span>
                </div>
                <div class="social"> <i class="fa fa-facebook-f"></i> <i class="fa fa-twitter"></i> <i class="fa fa-instagram"></i> <i class="fa fa-dribbble"></i> </div>
            </div>
            <div class="right-side">
                <div class="top-div">
                    <h2>Get in touch !</h2>
                    <p>Contact us for a quote,help or to join the team. </p>
                </div>
                <div class="stats">
                    <div class="stats1"> <i class="fa fa-map-marker"></i> <span>Dharmsinh Desai University</span> </div>
                    <div class="stats1"> <i class="fa fa-phone"></i> <span>+91 72010 66052</span> </div>
                    <div class="stats1"> <i class="fa fa-envelope"></i> <span>dduprojects12@gmail.com</span> </div>
                </div>
                <div class="card-content">
                	
                		<span>
	                        <div class="input-text"> <input type="text" name="name" required="required"> <small>Name</small> </div>
	                        <div class="input-text"> <input type="text" name="email" required="required"> <small>E-mail</small> </div>
	                        <div class="textarea"> <textarea name="message" required="required"></textarea> <small>Message</small> </div>
                    	</span> 
                	
                </div>
                <div class="buttons"> <button type="submit">SEND</button> </div>
                </form> 
            </div>
        </div>
    </div>
</div>

</body>
</html>