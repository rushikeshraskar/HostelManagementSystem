﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class src_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitForm(object sender, EventArgs e)
    {
        String uname = String.Format("{0}", Request.Form["uname"]);
        String pword = String.Format("{0}", Request.Form["pword"]);
        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + "D:\\workSpaces\\studio2017\\repos\\Hostel Management System\\Hostel Management System\\App_Data\\Database.mdf" + "; Integrated Security = True";

        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        Console.WriteLine("connection opened successfully");
        SqlCommand cmd = new SqlCommand("select * from Users where uname='" + uname + "' and pword='" + pword + "'", con);

        SqlDataReader reader = cmd.ExecuteReader();

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