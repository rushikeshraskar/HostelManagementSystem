<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="src_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="bootstrap/bootstrap.js"></script>
    <link href="bootstrap/bootstrap.css" rel="stylesheet"/>
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
    <form id="loginForm" runat="server" onsubmit="return validate(uname.value,pword.value)">
        <h1>Login Form</h1>
        <div>
            <div>
                <input type="text" name="uname" id="uname" placeholder="Username" required/>
              </div>
              <div>
            <input type="password" name="pword" id="pword" placeholder="Password" required/>
              </div>
            <div>
            <asp:button type="Submit" runat="server" onclick="SubmitForm"  name="Login" id="Login" text="Login" />
                </div>
        </div>
    </form>
</body>
</html>
