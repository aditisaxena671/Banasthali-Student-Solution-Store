using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace BSS
{
    public partial class AllLostProductsaspx : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select * from Lost_item Left join Student on Lost_item.Student_id=Student.Student_id", con);
                using (SqlDataReader sqlRdr = cmd.ExecuteReader())
                {
                    // table = new DataTable();  
                    // table.Load(reader);  
                    if (sqlRdr.HasRows)
                    {
                        while (sqlRdr.Read())
                        {

                            string ProductName = sqlRdr.GetString(1);
       
                            string ProductDescription = sqlRdr.GetString(2);
                            String ProductPlace = sqlRdr.GetString(3);
                            string ProductDateTime = sqlRdr.GetString(5);
                            long ProductContact = sqlRdr.GetInt64(12);
                            
                            if (!sqlRdr.IsDBNull(4))
                            {
                                string ProductImage = "/Images/LostItem/" + sqlRdr.GetString(4);
                                data += "<div class='card'><img src=\"" + ProductImage + "\" alt=\"Denim Jeans\" style=\"width:100%\"><h1>" + ProductName + "</h1><p> Lost at:" + ProductPlace + "</p><p>Lost on:" + ProductDateTime + "</p><p>" + ProductDescription + "</p><p><button><a href='ViewSingleLostProduct.aspx?id=" + sqlRdr.GetInt32(0) + "'>Contact at: " + ProductContact + "</a></button></p></div>";
                            }
                            else
                            {
                                data += "<div class='card'><h1>" + ProductName + "</h1><p> Lost at:" + ProductPlace + "</p><p>Lost on:" + ProductDateTime + "</p><p>" + ProductDescription + "</p><p><button><a href='ViewSingleLostProduct.aspx?id=" + sqlRdr.GetInt32(0) + "'>Contact at: " + ProductContact + "</a></button></p></div>";
                            }
                        }
                    }
                }

            }
            return data;
        }
    }
}