<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BrowseRooms.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="bootstrap/bootstrap.css" rel="stylesheet"/>
    <link href="css/BrowseRooms.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <h1>BrowseRooms</h1>    
        <div>
            <div>    
              For:<input type="radio" name="gender" value="male" checked="checked"> Boys&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="radio" name="gender" value="female"/> Girls<br/><br/>
            </div>
            <div>  
                Select Room Type: <input type="radio" name="roomType" value="single" checked="checked"/>Single&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="roomType" value="double"/> Two Sharing&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="roomType" value="triple"/>Three Sharing<br/><br/>
            </div>
              <div>   
                Amount to Deposit: <br/><input type="text"  id="deposit" name="deposit" disabled="disabled"/><br/><br/>
                Rent to Pay per month: <br/><input type="text"  id="rentPerM" name="rentPerM" disabled="disabled"/><br/><br/>
            </div>
             <div>    
                Available Rooms: <select name="availableRooms" form="form1">
  <option value="1" selected="selected">RoomNo1</option>
  <option value="2">RoomNo2</option>
  <option value="3">RoomNo3</option>
</select><br/><br/>
            </div>
            <input type="Submit" runat="server"  name="browseRooms" value="Submit" id="browseRooms" text="browseRooms" />
        </div>
    </form>
</body>
</html>