<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestInsert.aspx.cs" Inherits="src_TestInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            id: <input type="text" name="_id"><br>
            username: <input type="text" name="uname"><br>
            passowrd: <input type="text" name="pword"><br>
            <asp:button type="Submit" runat="server" onclick="SubmitForm"  name="Login" id="Login" text="Save" />
        </div>
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
