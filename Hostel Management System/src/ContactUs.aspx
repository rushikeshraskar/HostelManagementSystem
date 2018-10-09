<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="src_ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <link rel="stylesheet" href="bootstrap/bootstrap.css"/>
  <script src="script/jquery.min.js"></script>
  <script src="bootstrap/bootstrap.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet"/>

     <link href="css/default.css" rel="stylesheet"/>

    <title>Contact Us</title>

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
    <form id="form1" runat="server">
        <marquee behavior="scroll" direction="up" >
    <img src="Images/fac1.jpg" width="500" height="400" alt="Natural" /><br/>
    <img src="Images/fac2.jpg" width="500" height="400" alt="Natural" /><br/>
    <img src="Images/fac3.jpg" width="500" height="400" alt="Natural" /><br/>
    <img src="Images/fac4.jpg" width="500" height="400" alt="Natural" /><br/>
    <img src="Images/fac5.jpg" width="500" height="400" alt="Natural" /><br/>
    <img src="Images/fac6.jpg" width="500" height="400" alt="Natural" /><br/>
  </marquee>
  <div align="right" style="color:#000000;font-weight:bold;">
      <h1>Contact Us:</h1>
 <h2>Rushikesh Raskar<br/>
 Nikita Yengul</h2>
 <h3>Address: 485/B, Somnath Nagar, VadgaonSheri, Pune 411014<br/><br/>
 Email Id: rushikesh4.raskar@gmail.com<br/> 
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nikita198.yengul@gmail.com<br/><br/>
 Contact No: 9260028800
 </h3>
 </div>
    </form>
</body>
</html>
