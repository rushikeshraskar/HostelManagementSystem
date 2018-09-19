using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class src_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitForm(object sender, EventArgs e)
    {
        String uname = String.Format("{0}", Request.Form["uname"]);
        String pword = String.Format("{0}", Request.Form["pword"]);
        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + "D:\\workSpaces\\studio2017\\repos\\Hostel Management System Rushi\\Hostel Management System Rushi\\App_Data\\Database.mdf" + "; Integrated Security = True";
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(connectionString);
        con.Open();
        Console.WriteLine("connection opened successfully");
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select * from Users where uname='" + uname + "' and pword='" + pword + "'", con);

        System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('Login Successful');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('Login Failed');", true);
        }
        con.Close();
        Console.WriteLine("connection closed successfully");
    }
}