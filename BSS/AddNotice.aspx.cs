using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace BSS
{
    public partial class AddNotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string nTitle = Notice_title.Value;
            int nType = Convert.ToInt32(Notice_type.Value);
            string nDetail = Notice_details.Value;
            string ndate = Notice_issue_date.Value;
            string eVenue = Event_venue.Value;
            string eDate = Event_date.Value;
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into [Notice] (Notice_title, Notice_type, Notice_details, Notice_issue_date, Event_venue, Event_date) values (@Notice_title, @Notice_type, @Notice_details, @Notice_issue_date, @Event_venue , @Event_date )", con);
            cmd.Parameters.AddWithValue("@Notice_title", nTitle);
            cmd.Parameters.AddWithValue("@Notice_type", nType);
            cmd.Parameters.AddWithValue("@Notice_details", nDetail);
            cmd.Parameters.AddWithValue("@Notice_issue_date", ndate);
            cmd.Parameters.AddWithValue("@Event_venue", eVenue);
            cmd.Parameters.AddWithValue("@Event_date", eDate);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("HomePage.aspx");
        }
    }
}