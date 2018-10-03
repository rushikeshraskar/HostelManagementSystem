<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestStatusResident.aspx.cs" Inherits="src_RequestStatusResident" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request Status Resident Page</title>
    <link href="css/RequestStatusResident.css" rel="stylesheet"/>
</head>
<body>
    <asp:Image ID="Image1" runat="server" ImageAlign="left"  ImageUrl="Images/user.png" Height="50" Width="50"/><br> 
    Hello <asp:Label ID="Label1" runat="server"></asp:Label><br/>

    <form id="form1" runat="server">
        <div>
            <asp:Label ID="title" runat="server" Text="Request Status Page"></asp:Label>
            <br /><br />
            <asp:Table ID="Table1" runat="server"></asp:Table>
            
        </div>
    </form>
</body>
</html>
