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
    public partial class UpdateFoundProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            {
                HttpPostedFile file_product = Request.Files["ProductImage"];
                con.Open();
                SqlCommand cmd;
                if (file_product != null && file_product.ContentLength > 0)
                {
                    cmd = new SqlCommand("Update [Found_item] set Product_name=@Product_name,Product_description=@Product_description,Place=@Place,Product_image=@Product_image,Date_time=@Date_time,Student_id=@Student_id where Product_id=@id)", con);
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                    cmd.Parameters.AddWithValue("@Product_name", ProductName.Value);
                    cmd.Parameters.AddWithValue("@Product_description", ProductDescription.Value);
                    cmd.Parameters.AddWithValue("@Place", ProductPlace.Value);
                    string ProductImage = Path.GetFileName(file_product.FileName);
                    file_product.SaveAs(Server.MapPath("~/Images/LostItem/") + ProductImage);
                    cmd.Parameters.AddWithValue("@Product_image", ProductImage);
                    cmd.Parameters.AddWithValue("@Date_time", ProductDateTime.Value);
                    cmd.Parameters.AddWithValue("Student_id", Session["User_id"]);
                }
                else
                {
                    cmd = new SqlCommand("Update [Found_item] set Product_name=@Product_name,Product_description=@Product_description,Place=@Place,Date_time=@Date_time,Student_id=@Student_id where Product_id=@id", con);
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                    cmd.Parameters.AddWithValue("@Product_name", ProductName.Value);
                    cmd.Parameters.AddWithValue("@Product_description", ProductDescription.Value);
                    cmd.Parameters.AddWithValue("@Place", ProductPlace.Value);
                    cmd.Parameters.AddWithValue("@Date_time", ProductDateTime.Value);
                    cmd.Parameters.AddWithValue("Student_id", Session["User_id"]);
                }
                cmd.ExecuteNonQuery();
                Display.InnerHtml = "Details Updated";
                con.Close();
            }
        }
    }
}