using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class MyFoundProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
        public string getProductData()
        {
            string data = "";
            using (SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Found_item where Student_id = @id", con);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["User_id"]));
                using (SqlDataReader sqlRdr = cmd.ExecuteReader())
                {
                    // table = new DataTable();  
                    // table.Load(reader);  
                    if (sqlRdr.HasRows)
                    {
                        while (sqlRdr.Read())
                        {

                            string ProductName = sqlRdr.GetString(1);
                            String ProductPlace = sqlRdr.GetString(3);
                            string ProductDateTime = sqlRdr.GetString(5);

                            data += "<tr><td class=\"lalign\">" + ProductName + "</td><td>" + ProductPlace + "</td><td>" + ProductDateTime + "</td><td><a href ='UpdateFoundProduct.aspx?id=" + sqlRdr.GetInt32(0) + "'> Update </a ></td><td><a href='DeleteFoundProduct.aspx?id=" + sqlRdr.GetInt32(0) + "'>Delete</a></td><td><a href='ViewSingleFoundProduct.aspx?id=" + sqlRdr.GetInt32(0) + "'> View </a ></td ></tr > ";

                        }
                    }
                }

            }
            return data;
        }
    }
}