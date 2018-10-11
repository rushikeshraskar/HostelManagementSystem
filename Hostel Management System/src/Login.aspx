<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="src_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
 <link rel="stylesheet" href="bootstrap/bootstrap.css"/>
  <script src="script/jquery.min.js"></script>
  <script src="bootstrap/bootstrap.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet"/>
    <link href="css/default.css" rel="stylesheet"/>

     <link href="css/login.css" rel="stylesheet"/>
    
    <script>
        function validate(uname, pword) {
            if (uname.length == 0 || pword.length == 0) {
                alert("Enter Username and Password");
                return false;
            }
            else {
                return true;
            }

        }
    </script>
    <title>Login Page</title>
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


    <form id="loginForm" runat="server" onsubmit="return validate(uname.value,pword.value)">
        <h1>Login Page</h1>
        <div>
            <br />
            <div>
                <asp:RadioButtonList ID="loginTypeRadioList" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="true">
                    <asp:ListItem  Value="Hosteller" Text="Owner"/>
                    <asp:ListItem  Value="Resident" Selected="True" Text="Resident"/>
                </asp:RadioButtonList>
            </div>
            <br />
            <div>
                <input type="text" name="uname" id="uname" placeholder="Username" required="required"/>
              </div>
            <br />
              <div>
            <input type="password" name="pword" id="pword" placeholder="Password" required="required"/>
              </div>
            <br />
            <a href="Registeration.aspx">Create Account</a>
            <div>
                 <br />
                <asp:LinkButton type="Submit" CssClass="btn btn-success" runat="server" onclick="SubmitForm"  name="Login" id="Login" text="Login" />
                <input type="reset"class="btn btn-success" id="resetBtn"/>
                </div>
            <br />
        </div>
    </form>
    <footer>
        <span style="background-color:white;">
	    <p style="color: lightcoral;">System Developed by <a class="footer-text" href="#">Rushikesh and Nikita</a></p>
            </span>
</footer>
</body>
</html>
