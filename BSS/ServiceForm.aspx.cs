using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace BSS
{
    public partial class ServiceForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string newCId = string.Empty;
            string prefix = DateTime.Now.ToString("yyMM") + "0000";
            string selectedIdPrefix = prefix.Substring(0, 4);
            int curCId = Convert.ToInt32(prefix.Substring(4, 4));
            if (prefix == selectedIdPrefix)
            {
                newCId = "0";
                newCId = selectedIdPrefix + (curCId + 1).ToString().PadLeft(4);
            }
            else
            {
                newCId = "0";
                newCId = selectedIdPrefix + (curCId + 1).ToString().PadLeft(4, '0');
            }
            Service_id.Value = newCId;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpPostedFile file = Request.Files["Past_Work"];
            HttpPostedFile file2 = Request.Files["Certificates"];
            string Sname = Service_name.Value;
            string Sdescription = Service_description.Value;
            int SCost = Convert.ToInt32(Service_cost.Value);


            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            con.Open();
            if ((file != null && file.ContentLength > 0) && (file2 != null && file.ContentLength > 0))
            {
                SqlCommand cmd = new SqlCommand("insert into [Service] (Service_name,Service_description,Service_cost,Service_status,Past_work,Certificates,Provider_id ) values (@Service_name,@Service_description,@Service_cost,@Service_status,@Past_work,@Certificates,@Provider_id)", con);

                cmd.Parameters.AddWithValue("@Service_name", Sname);
                cmd.Parameters.AddWithValue("@Service_description", Sdescription);
                cmd.Parameters.AddWithValue("@Service_cost", SCost);
                cmd.Parameters.AddWithValue("@Service_status", 1);
                string Past_Work = Path.GetFileName(file.FileName);
                file.SaveAs(Server.MapPath("~/Images/PastWork/") + Past_Work);
                cmd.Parameters.AddWithValue("@Past_work", Past_Work);
                string Certificates = Path.GetFileName(file2.FileName);
                file2.SaveAs(Server.MapPath("~/Images/Certificates/") + Certificates);
                cmd.Parameters.AddWithValue("@Certificates", Certificates);
                cmd.Parameters.AddWithValue("@Provider_id", Convert.ToInt32(Session["User_id"]));
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into [Service] (Service_name,Service_description,Service_cost,Service_status,Provider_id ) values (@Service_name,@Service_description,@Service_cost,@Service_status,@Provider_id)", con);

                cmd.Parameters.AddWithValue("@Service_name", Sname);
                cmd.Parameters.AddWithValue("@Service_description", Sdescription);
                cmd.Parameters.AddWithValue("@Service_cost", SCost);
                cmd.Parameters.AddWithValue("@@Service_status", 1);
                cmd.Parameters.AddWithValue("@Provider_id", Convert.ToInt32(Session["User_id"]));
                cmd.ExecuteNonQuery();
            }
            con.Close();
            Response.Redirect("afterfilling.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}