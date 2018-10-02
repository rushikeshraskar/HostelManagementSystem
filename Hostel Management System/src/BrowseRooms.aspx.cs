using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButtonList1.Items[0].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList1.Items[1].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[0].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[1].Attributes.CssStyle.Add("margin-right", "50");
        RadioButtonList2.Items[2].Attributes.CssStyle.Add("margin-right", "50");

        Label1.Text = "Hello "+Session["userName"].ToString();
        
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