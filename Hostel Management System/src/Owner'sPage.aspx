<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Owner'sPage.aspx.cs" Inherits="src_Owner_sPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Owner Home Page</title>
    <link href="css/OwnersPage.css" rel="stylesheet"/>
    <link href="css/default.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 id="tblCaption">Room Requests</h1>
        </div>
        <div>
            <asp:Table ID="Table1" runat="server"></asp:Table>
        </div>
    </form>
</body>
</html>