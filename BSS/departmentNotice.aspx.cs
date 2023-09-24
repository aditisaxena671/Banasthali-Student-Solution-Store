using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class departmentNotice : System.Web.UI.Page
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
            Session["s1"] = 1;
            Response.Redirect("loopingPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["s1"] = 2;
            Response.Redirect("loopingPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["s1"] = 3;
            Response.Redirect("loopingPage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["s1"] = 4;
            Response.Redirect("loopingPage.aspx");
        }
    }
}