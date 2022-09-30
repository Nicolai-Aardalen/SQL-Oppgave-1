using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQL_Oppgave
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Add1(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;

            DataTable NicolaiSQLOppgave = new DataTable();

            using (SqlConnection conn = new SqlConnection(connectionString))

            {

                conn.Open();

                SqlCommand cmd = new SqlCommand($"INSERT INTO Person VALUES ({TextBox1.Text}, '{TextBox2.Text}', '{TextBox3.Text}', '{TextBox4.Text}', {TextBox5.Text}, '{TextBox6.Text}', {TextBox7.Text}, {TextBox8.Text})", conn);

                cmd.ExecuteNonQuery();
                cmd.CommandType = CommandType.Text;
                conn.Close();

            }
            Response.Redirect("Default.aspx");
        }
    }
}