<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BrowseRooms.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Browse Rooms</title>
    <link href="css/BrowseRooms.css" rel="stylesheet"/>
</head>
<body>
    
     
    <form id="form1" runat="server">
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

              <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Vertical"  Enabled="true">
               
                  </asp:RadioButtonList>
             
            <div>
                <asp:Label ID="roomMsg" runat="server" Text="" ForeColor="Blue"></asp:Label>
                
            </div>
                 <br/>
                 <br/>
            <input type="Submit" runat="server"  name="browseRooms" value="Submit" id="browseRooms" text="browseRooms" />
        </div>
    </form>
</body>
</html>