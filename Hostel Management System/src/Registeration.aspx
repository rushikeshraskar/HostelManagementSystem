<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="src_Registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Visitor Registeration</title>
    <script src="bootstrap/bootstrap.js"></script>
    <link href="bootstrap/bootstrap.css" rel="stylesheet"/>
    <link href="css/registeration.css" rel="stylesheet"/>
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
    
    <form id="regForm" runat="server" onsubmit="return validate(fname.value,lname.value,cno.value,email.value,occupation.value,dob.value,addr.value,uname.value,pword.value,repword.value,jdate.value)">
    <h1>Registeration Form</h1>    
        <div>
            <div>    
                First Name*<input type="text" id="fname" name="fname" required="required"/>
            </div>
            <div >
                Last Name*<input type="text" id="lname" name="lname"required="required"/>
            </div>
            <div>
                Contact Number*<input type="number" id="cno" name="cno"  required="required" pattern="[0-9]{10}"/>
            </div>
            <div>
                Email-id<input type="email" id="email" name="email" />
            </div>
            <div>
                College/Company Name<input type="text" id="occupation" name="occupation" />
            </div>
            <div>
                Date of Birth*<input type="Date" id="dob" name="dob" required="required"/>
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
            Aadhar Card*<input type="file" id="aadhar" name="aadhar" required="required"/>
            </div>
            <div>
            Pan Card*<input type="file" id="pan" name="pan" required="required"/>
            </div>
            <div>
            I-Card<input type="file" id="icard" name="icard"/>
            </div>
            <asp:button type="Submit" runat="server" onclick="SubmitForm"  name="register" id="register" text="Register" />
        </div>
    </form>
</body>
</html>
