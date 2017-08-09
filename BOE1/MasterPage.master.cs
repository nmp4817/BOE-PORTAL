using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession || Session["User"].Equals(""))
            Button3.Text = "LogIn";
        else
            Button3.Text = "LogOut";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (Session["User"].Equals("Admin"))
            Response.Redirect("Admin.aspx");
        else
            Response.Redirect("HOD.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (!Session["User"].Equals(""))
            Session["User"] = "";
        Response.Redirect("HOD_reg.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["User"] = "";
        Response.Redirect("Login.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }
}
