using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace AAA
{
    public partial class Search : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
        }
        /*
         * My full select statement::
         * SELECT * FROM [Students] WHERE (([Name] LIKE '%' + @Name + '%') OR ([GradYear] = @GradYear) OR ([Course] = @Course))
         */
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string MyQry = "SELECT * FROM [Students] WHERE ([GradYear] = @GradYear)";
                con.Open();
                SqlCommand cmd = new SqlCommand(MyQry, con);

                cmd.Parameters.Add("@GradYear", System.Data.SqlDbType.Float);
                cmd.Parameters["@GradYear"].Value = TextBox2.Text;

                SqlDataReader DR = cmd.ExecuteReader();
                DataTable MyTable = new DataTable();
                MyTable.Load(DR);
                GridView1.DataSource = MyTable;
                GridView1.DataBind();
                LinkButton2.Visible = true;
            }
            catch (Exception)
            {
                Label6.Visible = true;
                Label6.Text = "Error Happend, Please verify entries!";
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Label3.Visible = true;
            TextBox1.Visible = true;
            Button1.Visible = true;

            Label4.Visible = false;
            Label5.Visible = false;
            TextBox2.Visible = false;
            DropDownList5.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;

            TextBox2.Text = "";
            DropDownList5.ClearSelection();
            Label6.Visible = false;
            LinkButton2.Visible = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Label4.Visible = true;
            TextBox2.Visible = true;
            Button2.Visible = true;

            Label3.Visible = false;
            Label5.Visible = false;
            TextBox1.Visible = false;
            DropDownList5.Visible = false;
            Button1.Visible = false;
            Button3.Visible = false;
            TextBox1.Text = "";
            DropDownList5.ClearSelection();
            Label6.Visible = false;
            LinkButton2.Visible = false;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            Label5.Visible = true;
            DropDownList5.Visible = true;
            Button3.Visible = true;

            Label3.Visible = false;
            Label4.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label6.Visible = false;
            LinkButton2.Visible = false;
        }

        static string ConString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con = new SqlConnection(ConString);

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string MyQry = "SELECT * FROM [Students] WHERE ([Name] LIKE '%' + @Name + '%')";
                con.Open();
                SqlCommand cmd = new SqlCommand(MyQry, con);

                cmd.Parameters.Add("@Name", System.Data.SqlDbType.NVarChar, 50);
                cmd.Parameters["@Name"].Value = TextBox1.Text;

                SqlDataReader DR = cmd.ExecuteReader();
                DataTable MyTable = new DataTable();
                MyTable.Load(DR);
                GridView1.DataSource = MyTable;
                GridView1.DataBind();
                LinkButton2.Visible = true;
            }
            catch (Exception)
            {
                Label6.Visible = true;
                Label6.Text = "Error Happend, Please verify entries!";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string MyQry = "SELECT * FROM [Students] WHERE ([Course] = @Course)";
                con.Open();
                SqlCommand cmd = new SqlCommand(MyQry, con);

                cmd.Parameters.Add("@Course", System.Data.SqlDbType.NVarChar, 50);
                cmd.Parameters["@Course"].Value = DropDownList5.Text;

                SqlDataReader DR = cmd.ExecuteReader();
                DataTable MyTable = new DataTable();
                MyTable.Load(DR);
                GridView1.DataSource = MyTable;
                GridView1.DataBind();
                LinkButton2.Visible = true;
            }
            catch (Exception)
            {
                Label6.Visible = true;
                Label6.Text = "Error Happend, Please verify entries!";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                Response.ClearContent();
                Response.AddHeader("content-disposition", "attachment; filename=" + "GridV.xls");
                Response.ContentType = "application/excel";
                System.IO.StringWriter sw = new System.IO.StringWriter();
                HtmlTextWriter htw = new HtmlTextWriter(sw);
                GridView1.RenderControl(htw);
                Response.Write(sw.ToString());
                Response.End();
            }
            catch (Exception)
            {
                Label6.Visible = true;
                Label6.Text = "Error Happend, Please verify entries!";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }
    }
}
