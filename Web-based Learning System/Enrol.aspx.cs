using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_based_Learning_System
{
    public partial class Enrol : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // EnrolCourse
        protected void Button2_Click(object sender, EventArgs e)
        {

            if (checkIfCourseExist() && checkIfMemberExist())
            {

                issueCourse();

            }
            else
            {
                Response.Write("<script>alert('Wrong Course ID or Member ID');</script>");
            }

        }
       


        // go button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            getNames();
        }




        // user defined function

        void returnCourse()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("Delete from enrol_master_table WHERE course_id='" + TextBox1.Text.Trim() + "' AND user_id='" + TextBox2.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Course Left Successfully');</script>");
                
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void issueCourse()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO enrol_master_table(user_id,user_name,course_id,course_name,lecturer_name) values(@user_id,@user_name,@course_id,@course_name,@lecturer_name)", con);

                cmd.Parameters.AddWithValue("@user_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@user_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@course_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@course_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@lecturer_name", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Course Enrolled Successfully');</script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox6.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfCourseExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from course_master_table WHERE course_id='" + TextBox1.Text.Trim() + "'", con);
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
                return false;
            }

        }

        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select full_name from user_master_table WHERE email_id='" + TextBox2.Text.Trim() + "'", con);
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
                return false;
            }

        }


        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select course_name,instructor from course_master_table WHERE course_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["course_name"].ToString();
                    TextBox6.Text = dt.Rows[0]["instructor"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Course ID');</script>");
                }

                cmd = new SqlCommand("select full_name from user_master_table WHERE email_id='" + TextBox2.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong User ID');</script>");
                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            returnCourse();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}