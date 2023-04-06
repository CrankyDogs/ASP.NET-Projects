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
    public partial class Instructor : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() != "admin" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("loginadmin.aspx");
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
 GridViewInstructor.DataBind();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("loginadmin.aspx");
            }
           
        }
        // add button click
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (checkIfInstructorExists())
            {
                Response.Write("<script>alert('Instructor with this ID already Exist. You cannot add another Instructor with the same Instructor ID');</script>");
            }
            else
            {
                addNewInstructor();
            }
        }



        // update button click
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (checkIfInstructorExists())
            {
                updateInstructor();

            }
            else
            {
                Response.Write("<script>alert('Instructor does not exist');</script>");
            }
        }
        // delete button click
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (checkIfInstructorExists())
            {
                deleteInstructor();

            }
            else
            {
                Response.Write("<script>alert('Instructor does not exist');</script>");
            }
        }
        // GO button click
        protected void btnGO_Click(object sender, EventArgs e)
        {
            getInstructorByID();
        }



        // user defined function
        void getInstructorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from instructor_master_table where instructor_id='" + txtInstructorId.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    txtInstrutorName.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Instructor ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        void deleteInstructor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from instructor_master_table WHERE instructor_id='" + txtInstructorId.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Instructor Deleted Successfully');</script>");
                clearForm();
                GridViewInstructor.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //update instr
        void updateInstructor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE instructor_master_table SET instructor_name=@instructor_name WHERE instructor_id='" + txtInstructorId.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@instructor_name", txtInstrutorName.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Instructor Updated Successfully');</script>");
                clearForm();
                GridViewInstructor.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }





        void addNewInstructor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO instructor_master_table( instructor_id, instructor_name) values(@instructor_id,@instructor_name)", con);

                cmd.Parameters.AddWithValue("@instructor_id", txtInstructorId.Text.Trim());
                cmd.Parameters.AddWithValue("@instructor_name", txtInstrutorName.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Instructor added Successfully');</script>");
                clearForm();
                GridViewInstructor.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        bool checkIfInstructorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from instructor_master_table where  instructor_id='" + txtInstructorId.Text.Trim() + "';", con);
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

        void clearForm()
        {
            txtInstructorId.Text = "";
            txtInstrutorName.Text = "";
        }
    



}
}