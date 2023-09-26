using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSS
{
    public partial class ServiceProvide : System.Web.UI.Page
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
            Response.Redirect("ServiceForm.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyServices.aspx");
        }
    }
}