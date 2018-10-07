<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Owner'sPage.aspx.cs" Inherits="src_Owner_sPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Owner Home Page</title>
    <link href="css/OwnersPage.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" ImageAlign="left"  ImageUrl="Images/user.png" Height="50" Width="50"/><br> 
    <asp:Label ID="Label1" runat="server"></asp:Label><br/>
        <asp:Button ID="logout" runat="server" OnClick="logout_click" Text="Logout"/>
        <div>
            <h1 id="tblCaption">Room Requests</h1>
        </div>
        <div>
            <asp:Table ID="Table1" runat="server"></asp:Table>
        </div>
    </form>
</body>
</html>