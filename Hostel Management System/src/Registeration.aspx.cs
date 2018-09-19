using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class src_Registeration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitForm(object sender, EventArgs e)
    {
        //fname, lname, cno, email, occupation, dob, addr, uname, pword, repword, jdate
        String fname = String.Format("{0}", Request.Form["fname"]);
        String lname = String.Format("{0}", Request.Form["lname"]);
        String cno= String.Format("{0}", Request.Form["cno"]);
        String email = String.Format("{0}", Request.Form["email"]);
        String occupation = String.Format("{0}", Request.Form["occupation"]);
        String dob = String.Format("{0}", Request.Form["dob"]);
        String addr= String.Format("{0}", Request.Form["addr"]);
        String uname = String.Format("{0}", Request.Form["uname"]);
        String pword = String.Format("{0}", Request.Form["pword"]);
        String jdate = String.Format("{0}", Request.Form["jdate"]);
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('data received Successful');", true);
        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + "D:\\workSpaces\\studio2017\\repos\\Hostel Management System Rushi\\Hostel Management System Rushi\\App_Data\\Database.mdf" + "; Integrated Security = True";

        String sql = "insert into [Resident](rid,fname,lname,cno,email,occupation,dob,addr,uname,password,jdate) values(2,'" + fname + "','" + lname + "','" + cno + "','" + email + "','" + occupation + "','" + dob + "','" + addr + "','" + uname + "','" + pword + "','" + jdate + "');";
        Console.WriteLine(sql);
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(connectionString);
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql,con);


        try
        {
            con.Open();
        int recordAffected = cmd.ExecuteNonQuery();

        }catch(Exception e2)
        {
            Console.WriteLine("error "+e2.Message);
        }
        finally
        {
            con.Close();
        }
    }
}