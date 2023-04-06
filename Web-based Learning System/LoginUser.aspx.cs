using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_based_Learning_System
{
    public partial class LoginUser : System.Web.UI.Page
    {
        HashCode hc = new HashCode();
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //user login
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM user_master_table where email_id='" + txtEmail.Text.Trim() + "' AND password='" + hc.PassHash(txtPassword.Text.Trim()) + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                  
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "');</script>");
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["full_name"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
          
                    }
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}