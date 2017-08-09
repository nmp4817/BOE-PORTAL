using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using System.Xml.Serialization;


public partial class Default3 : System.Web.UI.Page
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
        if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox4.Text.Equals("") || TextBox5.Text.Equals("") || TextBox11.Text.Equals(""))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('* Field cannot be left Empty.');window.location='Insert.aspx';", true);
        }
        else
        {
            SqlConnection con1 = new SqlConnection();
            SqlCommand cmd1 = new SqlCommand();
            SqlDataAdapter da1 = new SqlDataAdapter();
            DataTable dt1 = new DataTable();
            con1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
            cmd1.CommandText = "select * from Subject where Subject_code='" + TextBox1.Text + "'";
            cmd1.Connection = con1;
            cmd1.CommandType = CommandType.Text;
            da1.SelectCommand = cmd1;
            da1.Fill(dt1);

            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
            cmd.CommandText = "INSERT INTO Subject(Subject_code,Subject_name,Department_name,Stream_year,Chair_person,Paper_setter,Internal_examiner,External_examiner,Viva_examiner,Practical_examiner,Exam_date,Exam_paper_submit,Answer_sheet_submit) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','NotSubmitted','NotSubmitted')";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            if (dt1.Rows.Count == 0)
            {
                da.InsertCommand = cmd;
                con.Open();
                da.InsertCommand.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Data Inserted Successfully.');window.location='Insert.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Data has been Already Inserted.');window.location='Insert.aspx';", true);
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int fl=0;
        if (!FileUpload1.HasFile)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please Select File to Upload');window.location='Insert.aspx';", true);
        }
        else
        {
            FileUpload1.SaveAs(Server.MapPath("~/Upload/") + Session["User"] + ".xlsx");
            string path = System.IO.Path.GetFullPath(Server.MapPath("~/Upload/") + Session["User"] + ".xlsx");
            OleDbConnection con1 = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties='Excel 12.0;HDR=YES;IMEX=1;ImportMixedTypes=Text';");
            OleDbCommand cmd1 = new OleDbCommand();
            cmd1.CommandText = "SELECT * FROM [Sheet1$]";
            cmd1.Connection = con1;
            cmd1.CommandType = System.Data.CommandType.Text;
            OleDbDataAdapter da1 = new OleDbDataAdapter();
            DataTable dt1 = new DataTable();
            da1.SelectCommand = cmd1;
            da1.Fill(dt1);

            SqlConnection con3 = new SqlConnection();
            SqlCommand cmd3 = new SqlCommand();
            SqlDataAdapter da3 = new SqlDataAdapter();
            con3.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
            cmd1.CommandType = CommandType.Text;
            cmd3.Connection = con3;
            da3.InsertCommand = cmd3;
            con3.Open();
            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                if ( dt1.Rows[i].ItemArray[0].ToString().Equals("") || dt1.Rows[i].ItemArray[1].ToString().Equals("") || dt1.Rows[i].ItemArray[2].ToString().Equals("") || dt1.Rows[i].ItemArray[3].ToString().Equals("") || dt1.Rows[i].ItemArray[4].ToString().Equals("") || dt1.Rows[i].ItemArray[10].ToString().Equals("") )
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('File not Uploaded, Ensure * Fields are Filled in File.');window.location='Insert.aspx';", true);
                    fl=1;
                }
            }
            con3.Close();

            if(fl==0)
            {
                SqlConnection con2 = new SqlConnection();
                SqlCommand cmd2 = new SqlCommand();
                SqlDataAdapter da2 = new SqlDataAdapter();
                con2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
                cmd1.CommandType = CommandType.Text;
                cmd2.Connection = con2;
                da2.InsertCommand = cmd2;
                con2.Open();
                for (int i = 0; i < dt1.Rows.Count; i++)
                {
                    SqlConnection con = new SqlConnection();
                    SqlCommand cmd = new SqlCommand();
                    SqlDataAdapter da = new SqlDataAdapter();
                    DataTable dt = new DataTable();
                    con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["boe"].ConnectionString;
                    cmd.CommandText = "select * from Subject where Subject_code='" + dt1.Rows[i].ItemArray[0].ToString() + "'";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    da.SelectCommand = cmd;
                    da.Fill(dt);
                    con.Open();
                    if (dt.Rows.Count == 0)
                    {
                        da2.InsertCommand = cmd2;
                        cmd2.CommandText = "INSERT INTO Subject(Subject_code,Subject_name,Department_name,Stream_year,Chair_person,Paper_setter,Internal_examiner,External_examiner,Viva_examiner,Practical_examiner,Exam_date,Exam_paper_submit,Answer_sheet_submit) values ('" + dt1.Rows[i].ItemArray[0].ToString() + "','" + dt1.Rows[i].ItemArray[1].ToString() + "','" + dt1.Rows[i].ItemArray[2].ToString() + "','" + dt1.Rows[i].ItemArray[3].ToString() + "','" + dt1.Rows[i].ItemArray[4].ToString() + "','" + dt1.Rows[i].ItemArray[5].ToString() + "','" + dt1.Rows[i].ItemArray[6].ToString() + "','" + dt1.Rows[i].ItemArray[7].ToString() + "','" + dt1.Rows[i].ItemArray[8].ToString() + "','" + dt1.Rows[i].ItemArray[9].ToString() + "','" + dt1.Rows[i].ItemArray[10].ToString() + "','NotSubmitteed','NotSubmitted')";
                        da2.InsertCommand.ExecuteNonQuery();
                    }
                    else
                    {
                        da2.UpdateCommand = cmd2;
                        cmd2.CommandText = "update Subject set Subject_name='" + dt1.Rows[i].ItemArray[1].ToString() + "', Department_name='" + dt1.Rows[i].ItemArray[2].ToString() + "', Stream_year='" + dt1.Rows[i].ItemArray[3].ToString() + "', Chair_person='" + dt1.Rows[i].ItemArray[4].ToString() + "', Paper_setter='" + dt1.Rows[i].ItemArray[5].ToString() + "', Internal_examiner='" + dt1.Rows[i].ItemArray[6].ToString() + "', External_examiner='" + dt1.Rows[i].ItemArray[7].ToString() + "', Viva_examiner='" + dt1.Rows[i].ItemArray[8].ToString() + "', Practical_examiner='" + dt1.Rows[i].ItemArray[9].ToString() + "', Exam_date='" + dt1.Rows[i].ItemArray[10].ToString() + "', Exam_paper_submit='NotSubmitteed', Answer_sheet_submit='NotSubmitteed' where Subject_code='" + dt1.Rows[i].ItemArray[0].ToString() + "'";
                        da2.UpdateCommand.ExecuteNonQuery();
                    }
                    con.Close();
                }
            con2.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('FILE UPLOADED SUCCESSFULLY.');window.location='Insert.aspx';", true);
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("HOD.aspx");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox11.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible == false)
        {
            Calendar1.Visible = true;
        }
        else
        {
            Calendar1.Visible = false;
        }
    }
}