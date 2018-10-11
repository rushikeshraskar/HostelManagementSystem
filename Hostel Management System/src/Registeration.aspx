<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="src_Registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Visitor Registeration</title>
    
    <link rel="stylesheet" href="bootstrap/bootstrap.css"/>
  <script src="script/jquery.min.js"></script>
  <script src="bootstrap/bootstrap.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet"/>

     <link href="css/default.css" rel="stylesheet"/>

    <link href="css/Registeration.css" rel="stylesheet"/>
    <script>
        function validate(fname, lname, cno, email, occupation, dob, addr, uname, pword, repword, jdate) {
            if (pword != repword) {
                alert("Re-entered Password must be same.");
                return false;   
            }
            if (cno.length != 10) {
                alert("Mobile number should be of 10 digits");
                return false;   
            }
            var _cno = parseInt("" + cno, 10);
            if (_cno < 0) {
                alert("Mobile number should be positive Integer");
                return false;   
            }
            return true;
        }
    </script>
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
    <form id="regForm" runat="server" onsubmit="return validate(fname.value,lname.value,cno.value,email.value,occupation.value,dob.value,addr.value,uname.value,pword.value,repword.value,jdate.value">
    <h1>Registeration Form</h1>    
        <div>
            <div>    
                First Name*<input type="text" id="fname" name="fname" required="required"/>
            </div>
            <div >
                Last Name*<input type="text" id="lname" name="lname"required="required"/>
            </div>
            <div>
                Contact Number*<input type="tel" id="cno" name="cno"  required="required"  pattern="^\d{10}$"/>
            </div>
            <div>
                Email-id<input type="email" id="email" name="email" />
            </div>
            <div>
                College/Company Name<input type="text" id="occupation" name="occupation" />
            </div>
            <div>
                Date of Birth*<input type="date" id="dob" name="dob" required="required"/>
            </div>
            <div>
            Address<textarea id="addr" name="addr" required="required"></textarea>
            </div>
            <div>
            User Name<input type="text" id="uname" name="uname" required="required"/>
            </div>
            <div>
            password<input type="password" id="pword" name="pword" required="required"/>
            </div>
            <div>
            Re-enter Password<input type="password" id="repword" name="repword" required="required"/>
            </div>
            <div>
            Join Date<input type="date" id="jdate" name="jdate" required="required"/>
            </div>
            <div>
            Aadhar Card*
                <asp:FileUpload ID="aadhar" runat="server" />
            </div>
            <div>
            Pan Card*
            <asp:FileUpload ID="pan" runat="server" />
            </div>
            <div>
                <span>
                   I-Card
                <asp:FileUpload ID="icard" runat="server" />
                    </span>
            </div>
                <div>
                    <asp:button type="Submit" runat="server" onclick="SubmitForm"  name="register" id="register" text="Register" class="btn btn-success"/>
                    <input type="reset"class="btn btn-success" id="resetBtn"/>
                </div>
        </div>
    </form>
    <br />
</body>
</html>
