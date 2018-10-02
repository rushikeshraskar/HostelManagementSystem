using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButtonList1.Items[0].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList1.Items[1].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[0].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[1].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[2].Attributes.CssStyle.Add("margin-right", "50");

        Label1.Text = "Hello "+Session["userName"].ToString();
        
    }
     protected void logout_click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Home.aspx");
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
    protected void onGenderTypeChanged(object sender, EventArgs e)
    {
        //Response.Write(RadioButtonList1.SelectedItem.Text);
        //
    }
    protected void onRoomTypeChanged(object sender, EventArgs e)
    {
        //Response.Write(RadioButtonList2.SelectedItem.Text);
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}