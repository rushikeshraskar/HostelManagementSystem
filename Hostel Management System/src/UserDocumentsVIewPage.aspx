<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserDocumentsVIewPage.aspx.cs" Inherits="src_UserDocumentsVIewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>User Documents</title>
        <link href="css/OwnersPage.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>Pan Card
                <asp:Image ID="pan" runat="server" Width="400" Height="400"/>
            </div>

            <div>
                Aadhar Card
                <asp:Image ID="aadhar" runat="server"  Width="400" Height="400"/>
            </div>
            
            <div>
                Icard
                <asp:Image ID="icard" runat="server" Width="400" Height="400"/>
            </div>
            
        </div>
    </form>
</body>
</html>
