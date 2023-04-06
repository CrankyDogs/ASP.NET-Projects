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
    public partial class Payment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPay_Click(object sender, EventArgs e)
        {

            addMessage();


        }



        void clearForm()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtNumber.Text = "";
            txtAmount.Text = "";
            txtRemark.Text = "";
        }
        void addMessage()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO payment_master_table(first_name,last_name,amount,phone,remark) values(@first_name,@last_name,@amount,@phone,@remark)", con);

                cmd.Parameters.AddWithValue("@first_name", txtFirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name", txtLastName.Text.Trim());
                cmd.Parameters.AddWithValue("@amount", txtAmount.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", txtNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@remark", txtRemark.Text.Trim());
              

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Payment Sucessfull.');</script>");
                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}