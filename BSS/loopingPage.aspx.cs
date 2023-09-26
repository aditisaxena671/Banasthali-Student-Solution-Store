using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class loopingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
        public string getNotice()
        {
            string data = "";
            using (SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Notice where Notice_type = @NoticeType", con);
                cmd.Parameters.AddWithValue("@noticeType", Convert.ToInt32(Session["s1"]));
                using (SqlDataReader sqlRdr = cmd.ExecuteReader())
                {
                    if (sqlRdr.HasRows)
                    {
                        while (sqlRdr.Read())
                        {

                            string Notice_title = sqlRdr.GetString(1);
                            string Notice_details = sqlRdr.GetString(3);
                            string Notice_issue_date = sqlRdr.GetString(4);
                            string Event_venue = sqlRdr.GetString(5);
                            string Event_date = sqlRdr.GetString(6);

                            data += "<div class='card'><h1>" + Notice_title + "</h1><p> <b> DETAILS :<b/>" + Notice_details + "</p><p> <b> DATE :<b/>" + Notice_issue_date + "</p><p>" + Event_venue + "</p><p>" + Event_date + "</p></div>";

                        }
                    }
                }
            }

            return data;
        }
    }
}