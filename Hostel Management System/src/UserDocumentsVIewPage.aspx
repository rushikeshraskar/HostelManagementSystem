<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserDocumentsVIewPage.aspx.cs" Inherits="src_UserDocumentsVIewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>User Documents</title>
        <link href="css/UserDocumentsViewPage.css" rel="stylesheet"/>

    <link rel="stylesheet" href="bootstrap/bootstrap.css"/>
  <script src="script/jquery.min.js"></script>
  <script src="bootstrap/bootstrap.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet"/>
    <link href="css/default.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
    
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">Hostel Management System</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="ContactUs.aspx">Contact Us</a></li>
      <li><a href="AboutUs.aspx">About Us</a></li>
    </ul> 
         <ul class="nav navbar-nav navbar-right">
                
                 <li>
                     <asp:LinkButton ID="LinkButton1"  runat="server" Text="Hello User"></asp:LinkButton>
                 </li>
                <li>               
                      <asp:LinkButton ID="logoutLblBtn" CssClass="glyphicon glyphicon-log-out" runat="server" OnClick="logout_click" Text="Logout"></asp:LinkButton>   
                </li>
            </ul>
        </div>
            </nav>

        <div class="mainContent">
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
