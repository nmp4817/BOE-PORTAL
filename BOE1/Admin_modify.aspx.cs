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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession || Session["User"].Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s1, s2;
        int rowIndex = 0;
         
            foreach (GridViewRow g1 in GridView1.Rows)
            {
                DropDownList E_p_s = (DropDownList)GridView1.Rows[rowIndex].Cells[0].FindControl("DropDownList2");
                DropDownList A_s_s = (DropDownList)GridView1.Rows[rowIndex].Cells[0].FindControl("DropDownList3");

                s1 = E_p_s.SelectedValue.ToString();
                s2 = A_s_s.SelectedValue.ToString();
                rowIndex = rowIndex + 1;
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter();
                con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
                cmd.CommandText = "Update Subject set Exam_paper_submit='"+s1+"' , Answer_sheet_submit='"+s2+"' where Subject_code='"+g1.Cells[0].Text+"'"; 
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                da.UpdateCommand = cmd;
                con.Open();
                da.UpdateCommand.ExecuteNonQuery();
                con.Close();
            }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}