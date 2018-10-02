using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class src_Login : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        string ApplicationPath = AppDomain.CurrentDomain.BaseDirectory;
        String DatabasePath = ApplicationPath + "App_Data\\Database.mdf";
        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + DatabasePath + "; Integrated Security = True";
        con = new SqlConnection(connectionString);
        con.Open();
    }

    protected void SubmitForm(object sender, EventArgs e)
    {
        String uname = String.Format("{0}", Request.Form["uname"]);
        String pword = String.Format("{0}", Request.Form["pword"]);
        Session["userName"] = uname;

        SqlCommand cmd = new SqlCommand("select * from Resident where uname='" + uname + "' and password='" + pword + "'", con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('Login Successful');", true);
            Response.Redirect("BrowseRooms.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('Login Failed');", true);
        }
        con.Close();
        Console.WriteLine("connection closed successfully");
    }
}