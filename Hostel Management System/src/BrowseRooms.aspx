<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BrowseRooms.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/BrowseRooms.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <h1>BrowseRooms</h1>    
        <div>
            <div>    
              For:
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True"  OnSelectedIndexChanged="onGenderTypeChanged" Enabled="true">
                    <asp:ListItem  Value="boys" Selected="True" Text="Boys"/>
                    <asp:ListItem Value="girls" Text="Girls"/>
                </asp:RadioButtonList>
                <br/>
            </div>
            <div>  
                Select Room Type: 
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True"   CssClass="radioButtonList" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="onRoomTypeChanged" Enabled="true">
                <asp:ListItem  Value="single" Text="single" Selected="True"/>
                <asp:ListItem  Value="double" Text="Two Sharing"/>
                <asp:ListItem  Value="triple" Text="Three Sharing"/>
                    </asp:RadioButtonList>
            </div>
             <div>    
                Available Rooms:
                 <asp:DropDownList ID="availableRooms" runat="server">
                     <asp:ListItem value="1" selected="True" Text="RoomNo1"></asp:ListItem>
                     <asp:ListItem value="2"  Text="RoomNo2"></asp:ListItem>
                     <asp:ListItem value="3"  Text="RoomNo3"></asp:ListItem>
                 </asp:DropDownList>
                 <br/><br/>
            </div>
              <div>   
                Amount to Deposit: <br/>
                  <asp:TextBox ID="deposit" runat="server" Enabled="false"></asp:TextBox>
                  <br/><br/>
                
                  Rent to Pay per month: <br/>
                  <asp:TextBox ID="rentPerM" runat="server" Enabled="false"></asp:TextBox>
                  <br/><br/>
            </div>
           
            <input type="Submit" runat="server"  name="browseRooms" value="Submit" id="browseRooms" text="browseRooms" />
        </div>
    </form>
</body>
</html>
