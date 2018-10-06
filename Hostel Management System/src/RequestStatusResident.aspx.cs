using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;

public partial class src_RequestStatusResident : System.Web.UI.Page
{
    SqlConnection con;

    private void openConnection()
    {
        string ApplicationPath = AppDomain.CurrentDomain.BaseDirectory;
        String DatabasePath = ApplicationPath + "App_Data\\Database.mdf";
        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + DatabasePath + "; Integrated Security = True";
        con = new SqlConnection(connectionString);
        con.Open();
        Label1.Text = Session["userName"].ToString();
    }
    private void closeConnection()
    {
        con.Close();
    }
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        addRecord();
    }
    private void addRecord()
    {
        Table1.BorderColor = Color.Black;
        Table1.BorderWidth = 2;
        Table1.BorderStyle = BorderStyle.Solid;
        Table1.GridLines = GridLines.Both;
        TableCell c1 = new TableCell();
        c1.Text = "Request Number";
        c1.CssClass = "cellHeader";
        
        TableCell c2 = new TableCell();
        c2.Text = "Room No";
        c2.CssClass = "cellHeader";

        TableCell c3 = new TableCell();
        c3.Text = "Rent";
        c3.CssClass = "cellHeader";

        TableCell c4 = new TableCell();
        c4.Text = "Deposit";
        c4.CssClass = "cellHeader";

        TableCell c5 = new TableCell();
        c5.Text = "Vacant Beds";
        c5.CssClass = "cellHeader";

        TableCell c7 = new TableCell();
        c7.Text = "Gender";
        c7.CssClass = "cellHeader";

        TableCell c6 = new TableCell();
        c6.Text = "Status";
        c6.CssClass = "cellHeader";

        TableRow row = new TableRow();
        
        row.Controls.Add(c1);
        row.Controls.Add(c2);
        row.Controls.Add(c3);
        row.Controls.Add(c4);
        row.Controls.Add(c5);
        row.Controls.Add(c6);
        row.Controls.Add(c7);

        Table1.Controls.Add(row);
        
        ArrayList tableData = getTableData();
        foreach (RoomRequestResidentTblModel item in tableData)
        {
            TableRow rowi = new TableRow();

            TableCell c = new TableCell();
            c.Text = ""+item.myRequestNumber;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myRoomNo;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myRent;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myDeposit;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myVacantBeds;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myStatus;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myGender;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            Table1.Controls.Add(rowi);
        }
    }
    
    private ArrayList getTableData()
    {
        ArrayList tableData = new ArrayList();
        openConnection();
        string userName = Label1.Text.ToString().Trim();
        string sql = "select Rooms.rno,Rooms.vacantBeds,Rooms.gender,Room_Request.reqId,Rooms.rent,Rooms.deposit,Room_Request.status from Room_Request,Resident,Rooms where Resident.uname='" + userName+"' and Resident.rid=Room_Request.rid and Rooms.rno=Room_Request.rno";
        SqlCommand cmd = new SqlCommand(sql,con);
        SqlDataReader reader = cmd.ExecuteReader();
        //Response.Write(reader.HasRows);
        while (reader.Read())
        {
            //Response.Write("<br/> "+reader["rno"]);
            tableData.Add(new RoomRequestResidentTblModel(Convert.ToInt32(reader["reqId"].ToString().Trim()), Convert.ToInt32(reader["rno"].ToString().Trim()), Convert.ToInt32(reader["vacantBeds"].ToString().Trim()), float.Parse( reader["rent"].ToString().Trim()), Convert.ToInt32(reader["deposit"].ToString().Trim()), reader["status"].ToString().Trim(), reader["gender"].ToString().Trim()));
        }
        reader.Close();
        closeConnection();
        
        return tableData;
    }
}