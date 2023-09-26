using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class DeleteFoundProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Back(object sender, EventArgs e)
        {
            Response.Redirect("MyFoundProducts.aspx");
        }
        public void Submit(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            {

                con.Open();
                SqlCommand cmd;

                cmd = new SqlCommand("Delete from [Found_item] where Product_id=@id", con);
                cmd.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("MyFoundProducts.aspx");
            }
        }
    }
}