<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="src_Registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Visitor Registeration</title>
    <script src="bootstrap/bootstrap.js"></script>
    <link href="bootstrap/bootstrap.css" rel="stylesheet"/>
    <link href="css/css1.css" rel="stylesheet"/>
    <script>
        function validate(fname, lname, cno, email, occupation, dob, addr, uname, pword, repword, jdate) {
            if (pword != repword) {
                alert("Re-entered Password must be same.");
            }
        }
    </script>
</head>
<body>
    
    <form id="form1" runat="server" onsubmit="return validate(fname.value,lname.value,cno.value,email.value,occupation.value,dob.value,addr.value,uname.value,pword.value,repword.value,jdate.value)">
    <h1>Registeration Form</h1>    
        <div>
            <div>    
                First Name<input type="text" id="fname" name="fname" required>
            </div>
            <div >
            Last Name<input type="text" id="lname" name="lname"required>
            </div>
            <div>
            Contact Number<input type="number" id="cno" name="cno"  required pattern="[0-9]{10}">
            </div>
            <div>
            Email-id<input type="email" id="email" name="email" required>
            </div>
            <div>
            College/Company Name<input type="text" id="occupation" name="occupation" required>
            </div>
            <div>
            Date of Birth<input type="Date" id="dob" name="dob" required>
            </div>
            <div>
            Address<textarea id="addr" name="addr" required></textarea>
            </div>
            <div>
            User Name<input type="text" id="uname" name="uname" required>
            </div>
            <div>
            password<input type="password" id="pword" name="pword" required>
            </div>
            <div>
            Re-enter Password<input type="password" id="repword" name="repword" required>
            </div>
            <div>
            Join Date<input type="Date" id="jdate" name="jdate" required>
            </div>
            <asp:button type="Submit" runat="server" onclick="SubmitForm"  name="register" id="register" text="Register" />
            
        </div>
    </form>
</body>
</html>
