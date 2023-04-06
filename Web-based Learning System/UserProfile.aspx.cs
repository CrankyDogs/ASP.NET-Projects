using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Web_based_Learning_System
{
    public partial class UserProfile : System.Web.UI.Page
    {
        HashCode hc = new HashCode();
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "user" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("loginuser.aspx");
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
                        getUserPersonalDetails();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("loginuser.aspx");
            }
        }

        // update button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("loginuser.aspx");
            }
            else
            {
                updateUserPersonalDetails();

            }
        }



        // user defined function


        void updateUserPersonalDetails()
        {
            string password = "";
            if (TextBox10.Text.Trim() == "")
            {
                password = TextBox9.Text.Trim();
            }
            else
            {
                password = hc.PassHash(TextBox10.Text.Trim());
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("update user_master_table set full_name=@full_name, email_id=@email,phone=@phone WHERE email_id='" + Session["username"].ToString().Trim() + "'", con);
                cmd.Parameters.AddWithValue("@full_name", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtUserId.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", TextBox9.Text.Trim());
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserPersonalDetails();
                   
                }
                else
                {
                    Response.Write("<script>alert('Invaid entry');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_master_table where email_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                txtFullName.Text = dt.Rows[0]["full_name"].ToString();
                txtEmail.Text = dt.Rows[0]["email_id"].ToString();
                txtUserId.Text = dt.Rows[0]["email_id"].ToString();
                TextBox9.Text = dt.Rows[0]["phone"].ToString();



     
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

  
    }
}