using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
        String cno = String.Format("{0}", Request.Form["cno"]);
        String email = String.Format("{0}", Request.Form["email"]);
        String occupation = String.Format("{0}", Request.Form["occupation"]);
        String dob = String.Format("{0}", Request.Form["dob"]);
        String addr = String.Format("{0}", Request.Form["addr"]);
        String uname = String.Format("{0}", Request.Form["uname"]);
        String pword = String.Format("{0}", Request.Form["pword"]);
        String jdate = String.Format("{0}", Request.Form["jdate"]);

        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + "D:\\workSpaces\\studio2017\\repos\\Hostel Management System\\Hostel Management System\\App_Data\\Database.mdf" + "; Integrated Security = True";
        
        String sql = "insert into Resident(rid,fname,lname,cno,email,occupation,dob,addr,uname,password,jdate)values('3',@Fname,@Lname,@Cno,@Email,@Occupation,@Dob,@Addr,@Uname,@Pword,@Jdate);";
       // Console.WriteLine(sql);
        
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        
        cmd.Parameters.AddWithValue("@Fname",fname.Trim());
        cmd.Parameters.AddWithValue("@Lname", lname.Trim());
        cmd.Parameters.AddWithValue("@Cno", cno.Trim());
        cmd.Parameters.AddWithValue("@Email", email.Trim());
        cmd.Parameters.AddWithValue("@Occupation", occupation);
        cmd.Parameters.AddWithValue("@Dob", dob.Trim());
        cmd.Parameters.AddWithValue("@Addr", addr.Trim());
        cmd.Parameters.AddWithValue("@Uname", uname.Trim());
        cmd.Parameters.AddWithValue("@Pword", pword.Trim());
        cmd.Parameters.AddWithValue("@Jdate", jdate.Trim());

        
        System.Diagnostics.Debug.WriteLine(fname + " " + lname + " " + cno + " " + email + " " + occupation + " " + dob + " " + addr + " " + uname + " " + pword + " " + jdate);  
        int recordAffected = cmd.ExecuteNonQuery();  
        con.Close();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('Data Saved');", true);
    }
      
}