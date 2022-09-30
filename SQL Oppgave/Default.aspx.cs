using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;
using System.Web.UI.WebControls;

namespace SQL_Oppgave
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
                GridView1.DataSource = Tabell();
                GridView1.DataBind();
            }
        }
        public DataTable Tabell()

        {

            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;

            DataTable NicolaiSQLOppgave = new DataTable();

            using (SqlConnection conn = new SqlConnection(connectionString))

            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM Person", conn);

                SqlDataReader reader = cmd.ExecuteReader();

                NicolaiSQLOppgave.Load(reader);

                reader.Close();

                conn.Close();

            }

            return NicolaiSQLOppgave;

        }
        public void Edit(object sender, EventArgs e)
        {
            Button knapp = (Button)sender;
            var id = knapp.CommandArgument;
            Response.Redirect("Edit.aspx?id="+id);
            
        }

        protected void Delete1(object sender, EventArgs e)
        {
            Button knapp = (Button)sender;
            var id = knapp.CommandArgument;
            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;

            DataTable NicolaiSQLOppgave = new DataTable();

            using (SqlConnection conn = new SqlConnection(connectionString))

            {

                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = $"DELETE FROM Person WHERE Id = {id}";
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                conn.Close();
            }
            GridView1.DataSource = Tabell();
            GridView1.DataBind();
        }
        protected void Add1(object sender, EventArgs e)
        {
            Button knapp = (Button)sender;
            var id = knapp.CommandArgument;
            Response.Redirect("Add.aspx");
        }
        protected void Search(object sender, EventArgs e)
        {

            Button knapp = (Button)sender;
            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;

            DataTable NicolaiSQLOppgave = new DataTable();

            using (SqlConnection conn = new SqlConnection(connectionString))

            {

                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = $"Select * From Person WHERE Fornavn = '{TextBoxS.Text}'";
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                SqlDataReader reader = cmd.ExecuteReader();
                NicolaiSQLOppgave.Load(reader);

                conn.Close();
                GridView1.DataSource = NicolaiSQLOppgave;
            }
            
            GridView1.DataBind();
        }

            protected void GridView1_SelectedIndexChanged(object sender, GridViewPageEventArgs e)
            {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = Tabell();
            GridView1.DataBind();
        }
    }
}