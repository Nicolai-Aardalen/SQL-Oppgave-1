using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQL_Oppgave
{
    public partial class Edit : System.Web.UI.Page
    {

        public void Update1(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;

            DataTable NicolaiSQLOppgave = new DataTable();

            using (SqlConnection conn = new SqlConnection(connectionString))

            {

                conn.Open();

                SqlCommand cmd = new SqlCommand($"Update Person Set Fornavn = '{TextBox1.Text}', Etternavn = '{TextBox2.Text}', Adresse = '{TextBox3.Text}', Poststed = '{TextBox4.Text}', Postnummer = {TextBox5.Text}, Alder = '{TextBox6.Text}', Inntekt = '{TextBox7.Text}' WHERE Id =" + id, conn);

                cmd.ExecuteNonQuery();

                conn.Close();

            }
            Response.Redirect("Default.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = Tabell();
                GridView1.DataBind();
                TextBox1.Text = GridView1.Rows[0].Cells[1].Text;
                TextBox2.Text = GridView1.Rows[0].Cells[2].Text;
                TextBox3.Text = GridView1.Rows[0].Cells[3].Text;
                TextBox4.Text = GridView1.Rows[0].Cells[4].Text;
                TextBox5.Text = GridView1.Rows[0].Cells[5].Text;
                TextBox6.Text = GridView1.Rows[0].Cells[6].Text;
                TextBox7.Text = GridView1.Rows[0].Cells[7].Text;
            }
        }
        public DataTable Tabell()

        {
            var id = Request.QueryString["id"];
            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;

            DataTable NicolaiSQLOppgave = new DataTable();

            using (SqlConnection conn = new SqlConnection(connectionString))

            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM Person WHERE Id ="+id, conn);

                SqlDataReader reader = cmd.ExecuteReader();

                NicolaiSQLOppgave.Load(reader);

                reader.Close();

                conn.Close();

            }

            return NicolaiSQLOppgave;

        }
    }
}