<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Owner'sPage.aspx.cs" Inherits="src_Owner_sPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Owner Home Page</title>
    <link href="css/OwnersPage.css" rel="stylesheet"/>
    <link href="css/default.css" rel="stylesheet"/>
    <link rel="stylesheet" href="bootstrap/bootstrap.css"/>
    <script src="script/jquery.min.js"></script>
    <script src="bootstrap/bootstrap.js"></script>
    <link href="css/common.css" rel="stylesheet"/>

</head>
<body>
    
    <form id="form1" runat="server">

        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">Hostel Management System</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="src/Login.aspx">Log In</a></li>
      <li><a href="src/ContactUs.aspx">Contact Us</a></li>
      <li><a href="src/AboutUs.aspx">About Us</a></li>
     <li><img id="Image1" src="Images/user.png" height="50" width="50"/> </li>
        
        <li><asp:Label ID="Label1" runat="server"></asp:Label></li>
        
        <li>
           <asp:Button ID="logout" CssClass="logoutBtn" runat="server" OnClick="logout_click" Text="Logout"/>
           </li>
    </ul> 
  </div>
            </nav>
        <div>
            <h1 >Room Requests</h1>
        </div>
        <div>
            <asp:Table ID="Table1" runat="server"></asp:Table>
        </div>
    </form>
</body>
</html>