using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class GetServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ArtandCraft.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Grooming.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceHome.aspx");
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
    }
}