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
        //setPage();
      
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

    protected void SubmitForm(object sender, EventArgs e)
    {
        //Response.Write("submit method called");

    }
    private void setPage()
    {
        openConnection();
        rooms.Clear();   
        String selectedGender = RadioButtonList1.SelectedItem.Value;
        String selectedType = RadioButtonList2.SelectedItem.Value;
        //Response.Write(selectedGender+" "+ selectedType);
        String sql = "select * from Rooms where type='" + selectedType.Trim()+ "' and gender='" + selectedGender.Trim() + "' and vacantBeds>0";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            
          //  Response.Write("Data : " + reader["rno"] + " " + reader["totalBeds"] + " " + reader["vacantBeds"]);
          //  ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('Data received');", true);
            rooms.Add(new RoomDataModel(Convert.ToInt32(reader["rno"].ToString()), reader["type"].ToString(), reader["gender"].ToString(), Convert.ToInt32(reader["floor"].ToString()), Convert.ToInt32(reader["totalBeds"].ToString()), Convert.ToInt32(reader["vacantBeds"].ToString()), float.Parse(reader["rent"].ToString()), float.Parse(reader["deposit"].ToString())));
        }
        reader.Close();
        closeConnection();
      
        foreach(RoomDataModel item in rooms)
        {
            RadioButtonList3.Items.Add(new ListItem("").Value(item.myrno));
        }
    }
     
     
    
    protected void onGenderTypeChanged(object sender, EventArgs e)
    {
        //Response.Write(RadioButtonList1.SelectedItem.Text);
        setPage();

    }
    protected void onRoomTypeChanged(object sender, EventArgs e)
    {
       //Response.Write(RadioButtonList2.SelectedItem.Text);
         setPage();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("RequestStatusResident.aspx");
    }
     
}