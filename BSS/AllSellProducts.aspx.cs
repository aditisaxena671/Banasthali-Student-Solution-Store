using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace BSS
{
    public partial class AllSellingProducts : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select * from Product", con);
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
                            int ProductPrice = sqlRdr.GetInt32(3);
                            string ProductCategory = sqlRdr.GetString(7);
                            string ProductContact = sqlRdr.GetString(8);
                            if (!sqlRdr.IsDBNull(4))
                            {
                                string ProductImage = "/Images/ProductImage/" + sqlRdr.GetString(4);
                                data += "<div class='card'><img src=\"" + ProductImage + "\" alt=\"Product Image\" style=\"width:100%\"><h1>" + ProductName + "</h1><p> " + ProductCategory + "</p><p class='price'>Rs. " + ProductPrice + "</p><p>" + ProductDescription + "</p><p><button><a href='ViewSingleProduct.aspx?id=" +sqlRdr.GetInt32(0) + "'>Contact at: " + ProductContact + "</a></button></p></div>";
                            }
                            else
                            {
                                data += "<div class='card'><h1>" + ProductName + "</h1><p> " + ProductCategory + "</p><p class='price'>Rs. " + ProductPrice + "</p><p>" + ProductDescription + "</p><p><button><a href='ViewSingleProduct.aspx?id="+ sqlRdr.GetInt32(0) + "'>Contact at: " + ProductContact + "</a></button></p></div>";
                            }
                        }
                    }
                }

            }
            return data;
        }
    }
}