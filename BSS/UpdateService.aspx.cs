using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class UpdateService : System.Web.UI.Page
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


                cmd = new SqlCommand("UPDATE [Service] SET Service_name = @Service_name,Service_description= @Service_description,Service_cost= @Service_cost where Service_id=@ServiceId", con);
                cmd.Parameters.AddWithValue("@ServiceId", Request.QueryString["id"]);
                cmd.Parameters.AddWithValue("@Service_name", ServiceName.Value);
                cmd.Parameters.AddWithValue("@Service_description", ServiceDescription.Value);
                cmd.Parameters.AddWithValue("@Service_cost", Convert.ToInt64(ServiceCost.Value));
               
                cmd.ExecuteNonQuery();
                Display.InnerHtml = "Product Updated";

                con.Close();
                Response.Redirect("MyServices.aspx");
            }
        }
    }
}