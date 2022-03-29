<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "usernavbar.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<style>
    *{
    margin: 0;
    padding: 0;
    font-family: "Open Sans",sans-serif;
    box-sizing: border-box;
}

body{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #f1f1f1;
}

.about-section{
    background: url(https://w0.peakpx.com/wallpaper/816/971/HD-wallpaper-headphones-equalizer-music.jpg) no-repeat left;
    background-size: 55%;
    background-color: black;
    overflow: hidden;
    padding: 100px 0;
}

.inner-container{
    width: 55%;
    float: right;
    background-color: #fdfdfd;
    padding: 90px;
    
}

.inner-container h1{
    margin-bottom: 30px;
    font-size: 30px;
    font-weight: 900;
}

.text{
    font-size: 15px;
    color: #545454;
    line-height: 30px;
    text-align: justify;
    margin-bottom: 40px;
}

@media screen and (max-width:1200px){
    .inner-container{
        padding: 80px;
    }
}

@media screen and (max-width:1000px){
    .about-section{
        background-size: 100%;
        padding: 100px 40px;
    }
    .inner-container{
        width: 100%;
    }
}

@media screen and (max-width:600px){
    .about-section{
        padding: 0;
    }
    .inner-container{
        padding: 60px;
    }
}
</style>
</head>
<body>
    <div class="about-section">
        <div class="inner-container">
            <h1>About Us</h1>
            <p class="text">
                What started out as a primarily computer parts store, has 
                grown into one of the most trusted Electronic Accessories 
                eRetailer store found online.  A lot has changed since we 
                started our humble business over a decade ago for both us and the 
                consumer.Today we offer thousands of different electronic accessories 
                like smartphone, tablet, laptop, headphone, and more!
            </p>
      
        </div>
    </div>
</body>
</html>

		



