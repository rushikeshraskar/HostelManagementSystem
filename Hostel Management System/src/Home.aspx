<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="src_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  
    <link rel="stylesheet" href="bootstrap/bootstrap.css"/>
  <script src="script/jquery.min.js"></script>
  <script src="bootstrap/bootstrap.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet"/>

    <link href="css/default.css" rel="stylesheet"/>

    <title>Hostel Management System</title>
    <link href="css/home.css" rel="stylesheet"/>
</head>
<body>
    
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand active" href="/">Hostel Management System</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="src/ContactUs.aspx">Contact Us</a></li>
      <li><a href="src/AboutUs.aspx">About Us</a></li>
        <li><a href="src/Rules.aspx">Rules</a></li>
    </ul> 

        <ul class="nav navbar-nav navbar-right">
      <li><a href="src/Registeration.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="src/Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>

  </div>
</nav>
     
    <br/>


    <form id="myForm" runat="server">
        <div>
            <h1>Your Comfort is Our Highest Priority</h1>
        </div>
<div class="slideshow-container">

<div class="mySlides fade">
  <img src="src/Images/img1.jpg"  height="400" width="500"/>
</div>

<div class="mySlides fade">
  <img src="src/Images/img2.jpg" height="400" width="500">
</div>

<div class="mySlides fade">
  <img src="src/Images/img3.jpg" height="400" width="500">
</div>
</div>
<br/>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

    </form>
    <footer>
        <span style="background-color:white;">
	<p style="color: lightcoral;">System Developed by <a class="footer-text" href="#">Rushikesh and Nikita</a></p>
            </span>
</footer>
</body>
</html>
