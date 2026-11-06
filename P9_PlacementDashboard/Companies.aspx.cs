using System;
using System.Data;
using System.Data.SqlClient;

namespace P9_PlacementDashboard
{
    public partial class Companies : System.Web.UI.Page
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;
                      Initial Catalog=PlacementDB;
                      Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCompanies();
            }
        }

        private void LoadCompanies()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query =
                    "SELECT * FROM Students WHERE IsPlaced = 1";

                SqlDataAdapter da =
                    new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();

                da.Fill(dt);

                rptCompanies.DataSource = dt;
                rptCompanies.DataBind();

                dlPlacements.DataSource = dt;
                dlPlacements.DataBind();
            }
        }
    }
}