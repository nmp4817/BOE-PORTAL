using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session.IsNewSession || Session["User"].Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
        string s = (string)Session["User"];
        Label1.Text = s;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["User"] = "";
        Response.Redirect("Login.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int fl = 0;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();

        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
        cmd.Connection = con;
        cmd.CommandText = "update HOD set password='" + TextBox1.Text + "' where UserName='" + Session["User"].ToString() + "'";
        cmd.CommandType = CommandType.Text;
        da.UpdateCommand = cmd;
        con.Open();
        if (TextBox1.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Insert New Password OR click on Cancel.');window.location='HOD.aspx';", true);
            fl = 1;
        }
        else
        {
            da.UpdateCommand.ExecuteNonQuery();
        }
        if(fl == 0)
        {
            con.Close();
            Label4.Visible = false;
            Label3.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
        }
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Label4.Visible = true;
        Label3.Visible = true;
        Button3.Visible = true;
        Button4.Visible = true;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label4.Visible = false;
        Label3.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
    }
}