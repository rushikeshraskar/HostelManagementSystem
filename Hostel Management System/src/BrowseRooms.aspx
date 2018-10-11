<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BrowseRooms.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Browse Rooms</title>
    <link href="css/BrowseRooms.css" rel="stylesheet"/>

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
                    <a class="navbar-brand active" href="/">Hostel Management System</a>
                </div>
            <ul class="nav navbar-nav">
                <li><a href="src/ContactUs.aspx">Contact Us</a></li>
                <li><a href="src/AboutUs.aspx">About Us</a></li>
                <li>               
                    <asp:LinkButton   ID="Button1" runat="server" OnClick="Button1_Click" Text="Previous Request Status">   </asp:LinkButton>   
                </li>
            </ul>
                
                

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <img id="Image1" src="Images/user.png" height="50" width="50"/>
                </li>

                 <li>
                     <asp:LinkButton ID="Label1"  runat="server" Text="Hello User"></asp:LinkButton>
                 </li>

                <li>               
                        <asp:LinkButton  ID="logoutLblBtn" runat="server" OnClick="logout_click" CssClass="glyphicon glyphicon-log-out" Text="Logout" ></asp:LinkButton>   
                </li>
    </ul>

  </div>
</nav>
        
<div id="myForm">
        <h1>BrowseRooms </h1>
       
        <div>
            <div>    
              For:
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True"  OnSelectedIndexChanged="onGenderTypeChanged" Enabled="true">
                    <asp:ListItem  Value="male" Selected="True" Text="Boys"/>
                    <asp:ListItem Value="female" Text="Girls"/>
                </asp:RadioButtonList>
            </div>
            <br />
            <div>  
                Select Room Type: 
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True"   CssClass="radioButtonList" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="onRoomTypeChanged" Enabled="true">
                <asp:ListItem  Value="single" Text="single" Selected="True"/>
                <asp:ListItem  Value="double" Text="Two Sharing"/>
                <asp:ListItem  Value="triple" Text="Three Sharing"/>
                    </asp:RadioButtonList>
            </div>
        <br />
            <div>
              <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Vertical"  Enabled="true" CssClass="radioButtonList"    OnSelectedIndexChanged="onRoomSelected">
               
                  </asp:RadioButtonList>
             </div>
            <div>
                <asp:Label ID="roomMsg" runat="server" Text="" ForeColor="Blue"></asp:Label>
                <br/>
            </div>
            <div>
                 <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick ="Button2_Click" Text="Book Now !" />
            </div>
     <br/>

</div>
    </div>
    </form>
    
</body>
</html>