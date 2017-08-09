using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("User", "");
    }
    protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();

        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
        cmd.CommandText = "select * from HOD";
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        da.SelectCommand = cmd;
        da.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (Login1.UserName.ToUpper() == dt.Rows[i].ItemArray[7].ToString().ToUpper() && Login1.Password == dt.Rows[i].ItemArray[8].ToString())
            {
                e.Authenticated = true;
                if (dt.Rows[i].ItemArray[7].ToString().ToUpper() != "ADMIN")
                {
                    Session.Add("User", dt.Rows[i].ItemArray[7].ToString());
                    Response.Redirect("HOD.aspx");
                }
                else
                {
                    Session.Add("User", dt.Rows[i].ItemArray[7].ToString());
                    Response.Redirect("Admin.aspx");
                }
            }
        }
    }
}