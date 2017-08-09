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
        if (Session.IsNewSession || Session["User"].Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
}