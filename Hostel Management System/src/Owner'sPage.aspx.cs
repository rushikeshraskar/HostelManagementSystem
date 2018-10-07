using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Collections;


public partial class src_Owner_sPage : System.Web.UI.Page
{
    SqlConnection con;

    private void openConnection()
    {
        string ApplicationPath = AppDomain.CurrentDomain.BaseDirectory;
        String DatabasePath = ApplicationPath + "App_Data\\Database.mdf";
        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + DatabasePath + "; Integrated Security = True";
        con = new SqlConnection(connectionString);
        con.Open();
        Label1.Text = "Hello! "+Session["userName"].ToString();
    }
    private void closeConnection()
    {
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
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

        TableCell c10 = new TableCell();
        c10.Text = "fname";
        c10.CssClass = "cellHeader";

        TableCell c11 = new TableCell();
        c11.Text = "lname";
        c11.CssClass = "cellHeader";

        TableCell c12 = new TableCell();
        c12.Text = "Contact Number";
        c12.CssClass = "cellHeader";

        TableCell c13 = new TableCell();
        c13.Text = "Email";
        c13.CssClass = "cellHeader";

        TableCell c14 = new TableCell();
        c14.Text = "Gender";
        c14.CssClass = "cellHeader";

        TableCell c7 = new TableCell();
        c7.Text = "Joining Date";
        c7.CssClass = "cellHeader";

        TableCell c3 = new TableCell();
        c3.Text = "Rent";
        c3.CssClass = "cellHeader";

        TableCell c4 = new TableCell();
        c4.Text = "Deposit";
        c4.CssClass = "cellHeader";

        TableCell c5 = new TableCell();
        c5.Text = "Vacant Beds";
        c5.CssClass = "cellHeader";

        TableCell c6 = new TableCell();
        c6.Text = "Status";
        c6.CssClass = "cellHeader";

        TableCell c15 = new TableCell();
        c15.Text = "Documents";
        c15.CssClass = "cellHeader";

        TableCell c8 = new TableCell();
        c8.Text = "Approve";
        c8.CssClass = "cellHeader";

        TableCell c9 = new TableCell();
        c9.Text = "Reject";
        c9.CssClass = "cellHeader";

        

        TableRow row = new TableRow();

        row.Controls.Add(c1);
        row.Controls.Add(c2);
        row.Controls.Add(c10);
        row.Controls.Add(c11);
        row.Controls.Add(c12);
        row.Controls.Add(c13);
        row.Controls.Add(c14);
        row.Controls.Add(c7);
        row.Controls.Add(c3);
        row.Controls.Add(c4);
        row.Controls.Add(c5);
        row.Controls.Add(c6);
        row.Controls.Add(c15);
        row.Controls.Add(c8);
        row.Controls.Add(c9);

        Table1.Controls.Add(row);
        //reqno rno rent deposit vacantbeds
        ArrayList tableData = getTableData();
        foreach (RoomRequestOwnerTblModel item in tableData)
        {
            TableRow rowi = new TableRow();

            TableCell c = new TableCell();
            c.Text = "" + item.myRequestNumber;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myRoomNo;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myfname;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.mylname;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.mycno;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);


            c = new TableCell();
            c.Text = "" + item.mymailid;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myGender;
            c.CssClass = "cellData";
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Text = "" + item.myjdate;
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

            Button docs = new Button();
            Button approve = new Button();
            Button decline = new Button();
            docs.Text = "Documents";
            approve.Text = "Approve";
            approve.Attributes.Add("ACTION","approved");
            decline.Text = "Decline";
            decline.Attributes.Add("ACTION", "declined");

            docs.ToolTip = item.myrid.ToString();
            approve.ToolTip = item.myRequestNumber.ToString();
            decline.ToolTip = item.myRequestNumber.ToString();

            docs.Click += new EventHandler(docBtn_click);
            approve.Click+= new EventHandler(btn_click);
            decline.Click += new EventHandler(btn_click);

            c = new TableCell();
            c.Controls.Add(docs);
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Controls.Add(approve);
            rowi.Controls.Add(c);

            c = new TableCell();
            c.Controls.Add(decline);
            rowi.Controls.Add(c);

            Table1.Controls.Add(rowi);
        }
    }

    protected void docBtn_click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        Response.Redirect("/src/UserDocumentsViewPage.aspx/?rid="+btn.ToolTip);
    }
        protected void btn_click(object sender, EventArgs e)
    {
        /*
         update room_request table entry to approved or declined
         entry in resident_room rid and allocated room no
         update rooms table decrement vacant beds
         */


        Button btn = (Button)sender;
        int requestId = Convert.ToInt32(btn.ToolTip);
        string action = btn.Attributes["ACTION"];

        //get rid and rno
        openConnection();
        int rid, rno;
        string sql = "select * from Room_Request where reqId=@ReqId";
        SqlCommand cmd1 = new SqlCommand(sql, con);
        cmd1.Parameters.AddWithValue("@ReqId", requestId);
        SqlDataReader reader = cmd1.ExecuteReader();
        reader.Read();
        rid = Convert.ToInt32(reader["rid"].ToString());
        rno = Convert.ToInt32(reader["rno"].ToString());
        reader.Close();
        closeConnection();

        //update room_request status
        openConnection();
        sql = "update Room_Request SET Room_Request.status=@Status where reqId=@ReqId";

        SqlCommand cmd2 = new SqlCommand(sql,con);
        cmd2.Parameters.AddWithValue("@Status",action);
        cmd2.Parameters.AddWithValue("@ReqId",requestId);
        cmd2.ExecuteNonQuery();
        closeConnection();


        //decrement vacant beds
        openConnection();
         sql = "update Rooms SET Rooms.vacantBeds=Rooms.vacantBeds-1 where Rooms.rno=@Rno";

        SqlCommand cmd3 = new SqlCommand(sql, con);
        cmd3.Parameters.AddWithValue("@Rno", rno);
        cmd3.ExecuteNonQuery();
        closeConnection();


        //entry in Resident_Room
        openConnection();
        sql = "insert into Resident_Room(rid,rno) values(@Rid,@Rno)";
        SqlCommand cmd4 = new SqlCommand(sql,con);
        cmd4.Parameters.AddWithValue("@Rid",rid);
        cmd4.Parameters.AddWithValue("@Rno", rno);
        closeConnection();
    }

    private ArrayList getTableData()
    {
        ArrayList tableData = new ArrayList();
        openConnection();
         
        string sql = "select * from Room_Request,Resident,Rooms where Resident.rid=Room_Request.rid and Rooms.rno=Room_Request.rno and Room_Request.status='pending'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader reader = cmd.ExecuteReader();
     
        while (reader.Read())
        {
            tableData.Add(new RoomRequestOwnerTblModel(Convert.ToInt32(reader["reqId"].ToString().Trim()), Convert.ToInt32(reader["rno"].ToString().Trim()), Convert.ToInt32(reader["vacantBeds"].ToString().Trim()), float.Parse(reader["rent"].ToString().Trim()), Convert.ToInt32(reader["deposit"].ToString().Trim()), reader["status"].ToString().Trim(), reader["gender"].ToString().Trim(), reader["fname"].ToString().Trim(), reader["lname"].ToString().Trim(), reader["cno"].ToString().Trim(), reader["email"].ToString().Trim(), reader["occupation"].ToString().Trim(), reader["jdate"].ToString().Trim(), reader["rid"].ToString().Trim()));
        }
        reader.Close();
        closeConnection();

        return tableData;
    }
    protected void logout_click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("/");
    }
}