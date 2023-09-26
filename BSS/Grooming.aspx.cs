using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class Grooming : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetService.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Eyebrow.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SkinCare.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Makeup.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mehendi.aspx");
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
    }
}