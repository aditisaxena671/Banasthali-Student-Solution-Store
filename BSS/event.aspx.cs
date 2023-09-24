using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class _event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["s1"] = 5;
            Response.Redirect("loopingPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["s1"] = 6;
            Response.Redirect("loopingPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["s1"] = 7;
            Response.Redirect("loopingPage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["s1"] = 8;
            Response.Redirect("loopingPage.aspx");
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
    }
}