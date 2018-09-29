﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BrowseRooms.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" onsubmit="">
    <h1 >BrowseRooms</h1>    
        <div >
            <div>    
              For:<input type="radio" name="gender" value="male" checked> Boys&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="radio" name="gender" value="female"> Girls<br><br>
            </div>
            <div>  
                Select Room Type: <input type="radio" name="roomType" value="single" checked>Single&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="roomType" value="double"> Two Sharing&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="roomType" value="triple">Three Sharing<br><br>
            </div>
              <div>   
                Amount to Deposit: <br><input type="text"  id="deposit" name="deposit" disabled><br><br>
                Rent to Pay per month: <br><input type="text"  id="rentPerM" name="rentPerM" disabled><br><br>
            </div>
             <div>    
                Available Rooms: <select name="availableRooms" form="form1">
  <option value="1" selected>RoomNo1</option>
  <option value="2">RoomNo2</option>
  <option value="3">RoomNo3</option>
</select><br><br>
            </div>

            <input type="Submit" runat="server" onclick=""  name="browseRooms" value="Submit" id="browseRooms" text="browseRooms" />
        </div>
    </form>
</body>
</html>
