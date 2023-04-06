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
    public partial class RegisterUser : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        HashCode hc = new HashCode();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        // sign up button click event
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {

                Response.Write("<script>alert('User Already Exist with this Email ID, try other ID');</script>");
            }
            else
            {
                signUpNewUser();
            }
        }

        // user defined method
        bool checkUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_master_table where email_id='" + txtEmail.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void signUpNewUser()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO user_master_table(full_name,email_id,password) values(@full_name,@email_id,@password)", con);
                cmd.Parameters.AddWithValue("@full_name", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@email_id", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@password", hc.PassHash(txtPassword.Text.Trim()));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}