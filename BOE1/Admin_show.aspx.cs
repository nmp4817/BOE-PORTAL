using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button6.Visible = false;
        if (Session.IsNewSession || Session["User"].Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con1 = new SqlConnection();
            SqlCommand cmd1 = new SqlCommand();
            SqlDataAdapter da1 = new SqlDataAdapter();
            DataTable dt1 = new DataTable();
            con1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
            cmd1.CommandText = "select * from Teacher where Department_name='" + DropDownList1.SelectedValue + "'";
            cmd1.Connection = con1;
            cmd1.CommandType = CommandType.Text;
            da1.SelectCommand = cmd1;
            da1.Fill(dt1);

            for (int i = 0; i < dt1.Rows.Count; i++)
            {

                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Examination Notification";
                myMessage.Body = " You are assigned a duty to check paper of"+ dt1.Rows[i].ItemArray[4].ToString();
                myMessage.From = new MailAddress("hirenvjaiswal1@gmail.com", "Registrar");
                myMessage.To.Add(new MailAddress(dt1.Rows[i].ItemArray[6].ToString() , dt1.Rows[i].ItemArray[1].ToString()));
                SmtpClient mySmtpClient = new SmtpClient();
                mySmtpClient.Send(myMessage);
            }
        }
        catch (Exception ex)
        {
            
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        Button6.Visible = true;
    }
    protected void lnkPrint_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(Page, this.GetType(), Guid.NewGuid().ToString(), "javascript:PrintPage()", true);
    }
}

