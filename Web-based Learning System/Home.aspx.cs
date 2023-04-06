using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_based_Learning_System
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                Response.Redirect("RegisterUser.aspx");
            }
            else if (Session["role"].Equals("user"))
            {
                Response.Redirect("Enrol.aspx");
            }
        }
    }
}