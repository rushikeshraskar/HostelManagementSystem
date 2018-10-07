<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserDocumentsVIewPage.aspx.cs" Inherits="src_UserDocumentsVIewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>User Documents</title>
        <link href="css/UserDocumentsViewPage.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" ImageAlign="left"  ImageUrl="Images/user.png" Height="50" Width="50"/><br> 
        <asp:Label ID="Label1" runat="server"></asp:Label><br/>
        <asp:Button ID="logout" runat="server" OnClick="logout_click" Text="Logout"/>

        <div>
            <div>Pan Card
                <asp:Image ID="pan" runat="server" Width="400" Height="400" CssClass="img"/>
            </div>

            <div>
                Aadhar Card
                <asp:Image ID="aadhar" runat="server"  Width="400" Height="400" CssClass="img"/>
            </div>
            
            <div>
                Icard
                <asp:Image ID="icard" runat="server" Width="400" Height="400" CssClass="img"/>
            </div>
            
        </div>
    </form>
</body>
</html>
