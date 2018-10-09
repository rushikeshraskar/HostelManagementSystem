<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="src_AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <link rel="stylesheet" href="bootstrap/bootstrap.css"/>
  <script src="script/jquery.min.js"></script>
  <script src="bootstrap/bootstrap.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet"/>


    <link href="css/default.css" rel="stylesheet"/>

    <title>About Us</title>

</head>
<body>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand active" href="/">Hostel Management System</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="ContactUs.aspx">Contact Us</a></li>
      <li><a href="AboutUs.aspx">About Us</a></li>
        <li><a href="Rules.aspx">Rules</a></li>
    </ul> 

        <ul class="nav navbar-nav navbar-right">
      <li><a href="Registeration.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>

  </div>
</nav>
     
       <br/>

    <form id="form1" >
        <center style="color:#FFF;font-weight:bold;background-color:#14104a;padding:10px;width:500px;align-content:center;margin:auto;">
    <h1 style="font-weight:bold;">About Us</h1>
        <h2>We Facilitate:</h2>
<h3>
	<ul type="square">
		<li>Free WiFi</li>
		<li>Purified Water</li>
		<li>Daily Cleaning</li>
		<li>24/7 Water Supply</li>
		<li>Wardrobe</li>
		<li>Kitchen</li>
		<li>Fridge</li>
		<li>Washing Machine</li>
		<li>AC</li>
	</ul>
     
</h3>
            </center>
  <marquee behavior="scroll" direction="left" >
    <img src="Images/fac1.jpg" width="400" height="300" alt="Natural" />
    <img src="Images/fac2.jpg" width="400" height="300" alt="Natural" />
    <img src="Images/fac3.jpg" width="400" height="300" alt="Natural" />
    <img src="Images/fac4.jpg" width="400" height="300" alt="Natural" />
    <img src="Images/fac5.jpg" width="400" height="300" alt="Natural" />
    <img src="Images/fac6.jpg" width="400" height="300" alt="Natural" />
  </marquee>
   </form>
</body>
</html>
