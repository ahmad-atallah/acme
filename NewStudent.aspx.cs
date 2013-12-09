using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.Sql;
using System.Data.SqlClient;

namespace AAA.Account
{
    public partial class NewStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DropDownList4.Items.Insert(0, ".......Select One.......");
            //DropDownList5.Items.Insert(0, ".......Select One.......");
            //DropDownList6.Items.Insert(0, ".......Select One.......");

            DropDownList3.DataSource = GetYears();
            DropDownList3.DataBind();

            DropDownList4.DataSource = GetCountry();
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "");

        }

        public List<string> GetCountry()
        {
            List<string> countryList = new List<string>();
            foreach (CultureInfo info in CultureInfo.GetCultures(CultureTypes.SpecificCultures))
            {
                RegionInfo inforeg = new RegionInfo(info.LCID);
                if (!countryList.Contains(inforeg.EnglishName))
                {
                    countryList.Add(inforeg.EnglishName);
                    countryList.Sort();
                }
            }
            return countryList;
        }

        public List<int> GetYears()
        {
            List<int> yearsList = new List<int>();
            for (int i = 2013; i >= 1920; i--)
                yearsList.Add(i);
            return yearsList;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

            //DropDownList1.SelectedIndex = 1;
            //DropDownList6.SelectedIndex = 1;
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
            DropDownList3.ClearSelection();
            DropDownList4.ClearSelection();
            DropDownList5.ClearSelection();
            DropDownList6.ClearSelection();
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;

            //TextBox1.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Students(Name,Gender,Email,DOB,Nationality,Mobile,GradYear,Major,Course) values(@Name, @Gender, @Email, @DOB, @Nationality, @Mobile, @GradYear, @Major, @Course)", con);

            try
            {
                cmd.Parameters.Add("@Name", System.Data.SqlDbType.NVarChar, 50);
                cmd.Parameters["@Name"].Value = TextBox1.Text;

                cmd.Parameters.Add("@Gender", System.Data.SqlDbType.NChar, 10);
                if (RadioButton1.Checked == true)
                    cmd.Parameters["@Gender"].Value = RadioButton1.Text;
                if (RadioButton2.Checked == true)
                    cmd.Parameters["@Gender"].Value = RadioButton2.Text;

                cmd.Parameters.Add("@Email", System.Data.SqlDbType.NVarChar, 50);
                cmd.Parameters["@Email"].Value = TextBox3.Text;

                //date Format: mm/dd/YYYY
                string date = DropDownList2.Text + "/" + DropDownList1.Text + "/" + DropDownList3.Text;

                cmd.Parameters.Add("@DOB", System.Data.SqlDbType.Date);
                cmd.Parameters["@DOB"].Value = date;

                cmd.Parameters.Add("@Nationality", System.Data.SqlDbType.NVarChar, 50);
                cmd.Parameters["@Nationality"].Value = DropDownList4.Text;

                cmd.Parameters.Add("@Mobile", System.Data.SqlDbType.NVarChar, 50);
                cmd.Parameters["@Mobile"].Value = TextBox4.Text;

                cmd.Parameters.Add("@GradYear", System.Data.SqlDbType.Float, 50);
                cmd.Parameters["@GradYear"].Value = TextBox5.Text;

                cmd.Parameters.Add("@Major", System.Data.SqlDbType.NVarChar, 50);
                cmd.Parameters["@Major"].Value = DropDownList6.Text;

                cmd.Parameters.Add("@Course", System.Data.SqlDbType.NVarChar, 50);
                cmd.Parameters["@Course"].Value = DropDownList5.Text;

                int x = cmd.ExecuteNonQuery();
                con.Close();

                Label3.Visible = true;
                if (x == 1)
                    Label3.Text = "Succeed!";
                else
                    Label3.Text = "Error Happend";
                //Response.Redirect("Login.aspx");
            }
            catch (Exception)
            {
                Label3.Visible = true;
                Label3.Text = "Error Happend, Please verify entries!";
            }
        }
    }
}