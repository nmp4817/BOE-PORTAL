using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
  static int fl = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
        }
        if (fl == 1)
        {
            Button5.Enabled = false;
            Button1.Enabled = false;
        }
        else
        {
            Button5.Enabled = true;
            Button1.Enabled = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        fl = 0;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
        cmd.CommandText = "update HOD set Data_submit='Yes' where UserName ='"+Session["User"]+"'";
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        da.InsertCommand = cmd;
        con.Open();
        da.InsertCommand.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('DATA HAS BEEN SENT TO ADMIN SUCCESSFULLY.');window.location='HOD.aspx';", true);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HOD.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        fl = 1;
       
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
        cmd.CommandText = "update HOD set Data_submit='Yes' where UserName ='" + Session["User"] + "'";
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        da.InsertCommand = cmd;
        con.Open();
        da.InsertCommand.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('YOU HAVE SUCCESSFULLY LOCKED DATA, NOW IT CANNOT BE ALTERED.');window.location='Sub_show.aspx';", true);
     }
}