using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class src_Registeration : System.Web.UI.Page
{
    private SqlConnection con;
    private String ApplicationPath;


    protected void Page_Load(object sender, EventArgs e)
    {

        ApplicationPath = AppDomain.CurrentDomain.BaseDirectory;
        String DatabasePath = ApplicationPath + "App_Data\\Database.mdf";
        String connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = " + DatabasePath+ "; Integrated Security = True";
        con = new SqlConnection(connectionString);
        con.Open();
    }
    private int getLastResidentId()
    {
        int id = 1;
        String sql = "select max(rid) from Resident";
        SqlCommand cmd = new SqlCommand(sql,con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
             Int32.TryParse(reader.GetValue(0).ToString(),out id);
        }
        reader.Close();

        return id;
    }
    protected void SubmitForm(object sender, EventArgs e)
    {
        try
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
        
        int Newid = getLastResidentId()+1;

        Boolean aadharFlag = false, panFlag = false,icardFlag=false;
        if(aadhar.HasFile && pan.HasFile)
        {
            if (aadhar.PostedFile.ContentLength < 1000000 && pan.PostedFile.ContentLength < 1000000)
            {       
                System.IO.Directory.CreateDirectory(ApplicationPath + "uploads\\" + Newid);
                aadhar.SaveAs(ApplicationPath + "uploads\\" + Newid + "\\aadhar.png");
                pan.SaveAs(ApplicationPath + "uploads\\" + Newid + "\\pan.png");
                aadharFlag = true;
                panFlag =true;
                    if (icard.HasFile) {
                    if (icard.PostedFile.ContentLength < 1000000)
                    {
                        icard.SaveAs(ApplicationPath + "uploads\\" + Newid + "\\icard.png");
                        icardFlag = true;
                    }
                    else
                    {
                        Response.Write("I-Card Image size should be less than 1MB");
                        icardFlag = false;
                    }
                }
                else
                {
                    icardFlag = true;
                }
            }
            else
            {
                Response.Write("Upload Aadhar and Pan Card Image size should be less than 1MB");
                aadharFlag = false;
                panFlag = false;
            }
        }
        else
        {
            Response.Write("Upload Aadhar and Pan Card");
            aadharFlag = false;
            panFlag = false;
        }
        if (aadharFlag && panFlag && panFlag)
        {
        String sql = "insert into Resident(rid,fname,lname,cno,email,occupation,dob,addr,uname,password,jdate)values(@Rid,@Fname,@Lname,@Cno,@Email,@Occupation,@Dob,@Addr,@Uname,@Pword,@Jdate);";
        
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@Rid", Newid);
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

        System.Diagnostics.Debug.WriteLine(Newid+ " "+fname + " " + lname + " " + cno + " " + email + " " + occupation + " " + dob + " " + addr + " " + uname + " " + pword + " " + jdate+" "+aadhar.FileName + " "+pan.FileName+" "+icard.FileName);  
        int recordAffected = cmd.ExecuteNonQuery();  
        con.Close();

        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Show", "alert('Data Saved');", true);
                Response.Redirect("Login.aspx");
        }

        }
        catch (Exception e2)
        {
            Response.Write(e2);
        }
    }
      
}