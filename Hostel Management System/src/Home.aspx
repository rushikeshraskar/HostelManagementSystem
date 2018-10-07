﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="src_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hostel Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/home.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
      <h1>Hostel Management System</h1>
<a href="src/Login.aspx">Login</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="src/ContactUs.aspx">ContactUs</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="src/AboutUs.aspx">AboutUs</a>
<br/>


<div class="slideshow-container">

<div class="mySlides fade">
  <img src="src/Images/img1.jpg"  height="200" width="300">
</div>

<div class="mySlides fade">
  <img src="src/Images/img2.jpg" height="200" width="300">
</div>

<div class="mySlides fade">
  <img src="src/Images/img3.jpg" height="200" width="300">
</div>
</div>
<br>

<div style="text-align:bottom">
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
</body>
</html>
