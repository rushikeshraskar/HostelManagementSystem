<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BrowseRooms.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Browse Rooms</title>
    <link href="css/BrowseRooms.css" rel="stylesheet"/>
</head>
<body>
    <asp:Image ID="Image1" runat="server" ImageAlign="left"  ImageUrl="Images/user.png" Height="50" Width="50"/><br> 
    <asp:Label ID="Label1" runat="server"></asp:Label><br/>
    <form id="form1" runat="server">
    <asp:Button ID="logout" runat="server" OnClick="logout_click" Text="Logout"/>
        <h1>BrowseRooms </h1>
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Previous Request Status" CssClass="notificationBtn" />   
        <div>
            <div>    
              For:
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True"  OnSelectedIndexChanged="onGenderTypeChanged" Enabled="true">
                    <asp:ListItem  Value="male" Selected="True" Text="Boys"/>
                    <asp:ListItem Value="female" Text="Girls"/>
                </asp:RadioButtonList>
                <br/>
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
            <div>
              <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Vertical"  Enabled="true" CssClass="radioButtonList" >
               
                  </asp:RadioButtonList>
             </div>
            <div>
                <asp:Label ID="roomMsg" runat="server" Text="" ForeColor="Blue"></asp:Label>
                
            </div>
                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
                 <br/>
                 <br/>
            
        </div>
    </form>
</body>
</html>