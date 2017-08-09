using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession || Session["User"].Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
        Button5.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue.Equals("No"))
        {
            Button5.Visible = true;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con1 = new SqlConnection();
            SqlCommand cmd1 = new SqlCommand();
            SqlDataAdapter da1 = new SqlDataAdapter();
            DataTable dt1 = new DataTable();
            con1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
            cmd1.CommandText = "select * from HOD where Data_submit='" + DropDownList1.SelectedValue + "'";
            cmd1.Connection = con1;
            cmd1.CommandType = CommandType.Text;
            da1.SelectCommand = cmd1;
            da1.Fill(dt1);

            for (int i = 0; i < dt1.Rows.Count; i++)
            {

                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Examination Notification";
                myMessage.Body = " You have not submitted Examination Details.";
                myMessage.From = new MailAddress("hirenvjaiswal1@gmail.com", "Registrar");
                myMessage.To.Add(new MailAddress(dt1.Rows[i].ItemArray[4].ToString(), dt1.Rows[i].ItemArray[2].ToString()));
                SmtpClient mySmtpClient = new SmtpClient();
                mySmtpClient.Send(myMessage);
            }
        }
        catch (Exception ex)
        {

        }
 
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}