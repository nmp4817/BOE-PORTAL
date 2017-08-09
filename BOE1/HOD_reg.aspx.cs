using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox4.Text.Equals("") || TextBox5.Text.Equals("") || TextBox6.Text.Equals("") || TextBox7.Text.Equals("") || TextBox8.Text.Equals("") || TextBox9.Text.Equals("") || TextBox10.Text.Equals(""))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Any Field cannot be left Empty.');window.location='HOD_reg.aspx';", true);
        }
        else
        {
            SqlConnection con1 = new SqlConnection();
            SqlCommand cmd1 = new SqlCommand();
            SqlDataAdapter da1 = new SqlDataAdapter();
            DataTable dt1 = new DataTable();
            con1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
            cmd1.CommandText = "select * from HOD where DepartmentNo=" + TextBox1.Text +" or UserName = '"+TextBox7.Text+"'";
            cmd1.Connection = con1;
            cmd1.CommandType = CommandType.Text;
            da1.SelectCommand = cmd1;
            da1.Fill(dt1);

            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO HOD(DepartmentNo,DepartmentName,HODName,ContactNo,EmailId,FacultyName,Address,UserName,Password,Data_submit) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox9.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','No')";
            if (dt1.Rows.Count == 0)
            {
                da.InsertCommand = cmd;
                con.Open();
                da.InsertCommand.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Data Inserted Successfully.');window.location='Login.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Data has been Already Inserted.');window.location='HOD_reg.aspx';", true);
            }         
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}