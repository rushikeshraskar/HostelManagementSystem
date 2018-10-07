using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class src_UserDocumentsVIewPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Hello! " + Session["userName"].ToString();
        pan.ImageUrl= "/uploads/"+Request.QueryString["rid"]+"/pan.png";
        aadhar.ImageUrl = "/uploads/" + Request.QueryString["rid"] + "/aadhar.png";
        icard.ImageUrl = "/uploads/" + Request.QueryString["rid"] + "/icard.png";
    }
    protected void logout_click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("/");
    }

}