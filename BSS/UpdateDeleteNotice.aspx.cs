using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class UpdateDeleteNotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
        public string getNoticeData()
        {
            string data = "";
            using (SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Service where Provider_id = @id", con);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["User_id"]));
                using (SqlDataReader sqlRdr = cmd.ExecuteReader())
                {
                    // table = new DataTable();  
                    // table.Load(reader);  
                    if (sqlRdr.HasRows)
                    {
                        while (sqlRdr.Read())
                        {

                            string ServiceName = sqlRdr.GetString(1);
                            int ServiceCost = sqlRdr.GetInt32(3);
                            int ServiceStatus = sqlRdr.GetInt32(4);

                            data += "<tr><td class=\"lalign\">" + ServiceName + "</td><td>Rs:" + ServiceCost + "</td><td>" + ServiceStatus + "</td><td><a href ='UpdateService.aspx?id=" + sqlRdr.GetInt32(0) + "'> Update </a ></td><td><a href='DeleteServices.aspx?id=" + sqlRdr.GetInt32(0) + "'>Delete</a></td></tr > ";

                        }
                    }
                }

            }
            return data;
        }
    }
}