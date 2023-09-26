using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }
        protected void Submit(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            {
               
                con.Open();
                SqlCommand cmd;
                
                  
                cmd = new SqlCommand("UPDATE [Product] SET Product_name = @Product_name,Product_description= @Product_description,Product_price= @Product_price,Product_age=@Product_age,Product_Category=@Product_Category,Seller_Contact=@Seller_Contact,Seller_id=@Seller_id where Product_id=@ProductId", con);
                cmd.Parameters.AddWithValue("@ProductId",Request.QueryString["id"]);
                cmd.Parameters.AddWithValue("@Product_name", ProductName.Value);
                cmd.Parameters.AddWithValue("@Product_description", ProductDescription.Value);
                cmd.Parameters.AddWithValue("@Product_price", ProductPrice.Value);
                cmd.Parameters.AddWithValue("@Product_age", ProductAge.Value);
                cmd.Parameters.AddWithValue("@Product_Category", ProductCategory.Value);
                cmd.Parameters.AddWithValue("@Seller_Contact", Convert.ToInt64(SellerContact.Value));
                cmd.Parameters.AddWithValue("@Seller_id", Session["User_id"]);
                cmd.ExecuteNonQuery();
                Display.InnerHtml = "Product Updated";
                
                con.Close();
            }
        }
    }
}