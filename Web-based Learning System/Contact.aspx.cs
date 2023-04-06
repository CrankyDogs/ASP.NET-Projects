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
    public partial class Contact : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
           
                    addMessage();
              
                
            }



        void clearForm()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtMessage.Text = "";
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

                SqlCommand cmd = new SqlCommand("INSERT INTO messsage_master_table(name,email,message,phone) values(@name,@email,@message,@phone)", con);

                cmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@message", txtMessage.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text.Trim());
  
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Message send sucessfully.');</script>");
                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        
    }
}