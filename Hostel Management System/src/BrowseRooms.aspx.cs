using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    ArrayList rooms = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButtonList1.Items[0].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList1.Items[1].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[0].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[1].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[2].Attributes.CssStyle.Add("margin-right", "50");

        Label1.Text = "Hello "+Session["userName"].ToString().Trim();

        getDataFromDB();
    }
     protected void logout_click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("/");
    }

    private void openConnection()
    {
        string ApplicationPath = AppDomain.CurrentDomain.BaseDirectory;
        String DatabasePath = ApplicationPath + "App_Data\\Database.mdf";
        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + DatabasePath + "; Integrated Security = True";
        con = new SqlConnection(connectionString);
        con.Open();
    }
    private void closeConnection()
    {
        con.Close();
    }
    private void getDataFromDB()
    {
        RadioButtonList3.Items.Clear();
        rooms.Clear();
        openConnection();
        String sql = "select * from Rooms where vacantBeds>0 and gender='" + RadioButtonList1.SelectedValue + "' and type='" + RadioButtonList2.SelectedValue + "';";
        SqlCommand cmd = new SqlCommand(sql,con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            rooms.Add(new RoomDataModel(Convert.ToInt32(reader["rno"].ToString()), reader["type"].ToString(), reader["gender"].ToString(), Convert.ToInt32(reader["floor"].ToString()), Convert.ToInt32(reader["totalBeds"].ToString()),Convert.ToInt32( reader["vacantBeds"].ToString()), float.Parse(reader["rent"].ToString()), float.Parse(reader["deposit"].ToString())));
        }
        reader.Close();
        closeConnection();
        loadDataToUI();
    }
    private void loadDataToUI()
    {
        foreach(RoomDataModel items in rooms)
        {
            ListItem dummy = new ListItem(items.getDispData(), items.myrno.ToString());
            RadioButtonList3.Items.Add(dummy);
            
        }
        

        RadioButtonList3.SelectedIndex = 0;
    }
    protected void SubmitForm(object sender, EventArgs e)
    { 
    }
    protected void onGenderTypeChanged(object sender, EventArgs e)
    {
        //Response.Write(RadioButtonList1.SelectedItem.Text);
        getDataFromDB();
    }
    protected void onRoomTypeChanged(object sender, EventArgs e)
    {
        //Response.Write(RadioButtonList2.SelectedItem.Text);
        getDataFromDB();
    }
    protected void onRoomSelected(object sender, EventArgs e)
    {
        
    }
    
    private int getLastID()
    {
        int lastid = 1;
        string sql = "select max(reqId) from Room_Request";
        SqlCommand cmd = new SqlCommand(sql,con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Int32.TryParse(reader.GetValue(0).ToString(), out lastid);
        }
        reader.Close();
        return lastid;
    }

    private int getResidentId()
    {
        int rid = 1;
        string sql = "select rid from Resident where uname='"+ Session["userName"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Int32.TryParse(reader.GetValue(0).ToString(), out rid);
        }
        reader.Close();
        return rid;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int roomno = Convert.ToInt32(RadioButtonList3.SelectedValue.ToString());
        //save request in table
        openConnection();
        int NewId = getLastID()+1;
        String sql = "insert into Room_Request(reqId,rid,rno,status) Values(@ReqId,@Rid,@Rno,@Status)";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@ReqId", NewId);
        cmd.Parameters.AddWithValue("@Rid", getResidentId()); //resident id
        cmd.Parameters.AddWithValue("@Rno", roomno);//room no
        cmd.Parameters.AddWithValue("@Status","pending");

        int recordAffected = cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('Room Booking Request Sent !');", true);

        RadioButtonList3.Items.Clear();
        closeConnection();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("RequestStatusResident.aspx");
    }
}