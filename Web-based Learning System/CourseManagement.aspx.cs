using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_based_Learning_System
{
    public partial class CourseManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM instructor_master_table", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataTextField = ds.Tables[0].Columns["instructor_name"].ToString();
                DropDownList1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
                DropDownList1.DataBind();
            }
            catch (Exception)
            {

            }
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            getCourseByID();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (checkIfCourseExists())
            {
                Response.Write("<script>alert('Course Already Exists, try some other Course ID');</script>");
            }
            else
            {
                addNewCourse();
            }
        }

        // update button click
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            updateCourseByID();
        }
        //delete
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            deleteCourseByID();
        }


        // user defined functions
        void addNewCourse()
        {
            try
            {
                string category = "";
                foreach (int i in lstCategory.GetSelectedIndices())
                {
                    category = category + lstCategory.Items[i] + ",";
                }
                category = category.Remove(category.Length - 1);

                string filepath = "~/course_details/logo.png";
                string filename = Path.GetFileName(fileUploadCourse.PostedFile.FileName);
                fileUploadCourse.SaveAs(Server.MapPath("course_details/" + filename));
                filepath = "~/course_details/" + filename;

               SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO course_master_table(course_id,course_name,language,instructor,category,lectures,upload_date,course_duration,course_details,course_img_link) values(@course_id,@course_name,@language,@instructor,@category,@lectures,@upload_date,@course_duration,@course_details,@course_img_link)", con);

                cmd.Parameters.AddWithValue("@course_id", txtCourseId.Text.Trim());
                cmd.Parameters.AddWithValue("@course_name", txtCourseName.Text.Trim());
                cmd.Parameters.AddWithValue("@language", ddlLanguage.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@instructor", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@category", category);
                cmd.Parameters.AddWithValue("@lectures", txtLectures.Text.Trim());
                cmd.Parameters.AddWithValue("@upload_date", txtUploadDate.Text.Trim());
                cmd.Parameters.AddWithValue("@course_duration", txtDuration.Text.Trim());
                cmd.Parameters.AddWithValue("@course_details", txtCourseDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@course_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Course added successfully.');</script>");
                GridViewCourse.DataBind();

                txtCourseId.Text = "";
                txtCourseName.Text = "";
                txtLectures.Text = "";
                txtUploadDate.Text = "";
                txtDuration.Text = "";
                txtCourseDescription.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


   
        void deleteCourseByID()
        {
            if (checkIfCourseExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from course_master_table WHERE Course_id='" + txtCourseId.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Course Deleted Successfully');</script>");

                    GridViewCourse.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

        void updateCourseByID()
        {
   
            if (checkIfCourseExists())
            {
                try
                {
                    string category = "";
                    foreach (int i in lstCategory.GetSelectedIndices())
                    {
                        category = category + lstCategory.Items[i] + ",";
                    }
                    category = category.Remove(category.Length - 1);




                    string filepath = "~/course_details/logo.png";
                    string filename = Path.GetFileName(fileUploadCourse.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath ="~/course_details/logo.png";

                    }
                    else
                    {
                        fileUploadCourse.SaveAs(Server.MapPath("course_details/" + filename));
                        filepath = "~/course_details/" + filename;
                    }


                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE course_master_table set course_name=@course_name,language=@language,instructor=@instructor,category=@category,lectures=@lectures,upload_date=@upload_date,course_duration=@course_duration,course_details=@course_details,course_img_link=@course_img_link where course_id = '" + txtCourseId.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@course_name", txtCourseName.Text.Trim());
                    cmd.Parameters.AddWithValue("@language", ddlLanguage.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@instructor", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@category", category);
                    cmd.Parameters.AddWithValue("@lectures", txtLectures.Text.Trim());
                    cmd.Parameters.AddWithValue("@upload_date", txtUploadDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@course_duration", txtDuration.Text.Trim());
                    cmd.Parameters.AddWithValue("@course_details", txtCourseDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@course_img_link", filepath);



                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridViewCourse.DataBind();
                    Response.Write("<script>alert('Course Updated Successfully');</script>");

                }


                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }

            else
            {
                Response.Write("<script>alert('Invalid Course ID');</script>");
            }
        }

        void getCourseByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from course_master_table WHERE course_id='" + txtCourseId.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    txtCourseName.Text = dt.Rows[0]["course_name"].ToString().Trim();
                    txtLectures.Text = dt.Rows[0]["lectures"].ToString().Trim();
                    txtUploadDate.Text = dt.Rows[0]["upload_date"].ToString().Trim();
                    txtDuration.Text = dt.Rows[0]["course_duration"].ToString().Trim();
                    txtCourseDescription.Text = dt.Rows[0]["course_details"].ToString().Trim();
                    ddlLanguage.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["instructor_name"].ToString().Trim();
                    global_filepath = dt.Rows[0]["course_img_link"].ToString();
                    Console.WriteLine(global_filepath);


                    lstCategory.ClearSelection();
                  
                    string[] category = dt.Rows[0]["category"].ToString().Trim().Split(',');
                    for (int i = 0; i < category.Length; i++)
                    {
                        for (int j = 0; j < lstCategory.Items.Count; j++)
                        {
                            if (lstCategory.Items[j].ToString() == category[i])
                            {
                                lstCategory.Items[j].Selected = true;

                            }
                           
                        }
                    }
                    //add discount here
 

                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid Course ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        void fillInstructorValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT instructor_name from instructor_master_table;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataValueField = "instructor_name";
                DropDownList1.DataBind();

            }
            catch (Exception ex)
            {

            }
        }

        bool checkIfCourseExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from course_master_table where course_id='" + txtCourseId.Text.Trim() + "' OR course_name='" + txtCourseName.Text.Trim() + "';", con);
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

            txtCourseId.Text="";
            txtCourseName.Text="";
            txtLectures.Text="";
            txtUploadDate.Text="";
            txtDuration.Text="";
            txtCourseDescription.Text="";

        }
 
    }
}
