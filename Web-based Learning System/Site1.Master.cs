using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_based_Learning_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
    {
 
    }

            try 
            {
                if (Session["role"]==null)
                {
                    btnLogin.Visible = true; // user login link button
                    btnRegister.Visible = true; // register link button

       

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton3.Visible = true;
                    LinkButton1.Visible = true;
                    btnLogin.Visible = false; // user login link button
                    btnRegister.Visible = false; // register link button
                    LoginAdmin.Visible=false;
                                  btnLogout.Visible = true; // sign up link button
                    Hello.Visible = true;
                    AdminLogin.Visible = false;
                    Hello.Text = "Welcome " + Session["full_name"].ToString();

                }
                else if (Session["role"].Equals("admin"))
                {
                    AdminLogin.Visible = false;
                    AdminDashboard.Visible = true;
                    CourseManagement.Visible = true;
                    UserManagement.Visible = true;
                    Instructor.Visible = true;
                    Payment.Visible = true;
                    btnLogout.Visible = true;
                    AdminDashboardUp.Visible = true;
                    btnLogin.Visible = false; // user login link button
                    btnRegister.Visible = false; // register link button
                    Hello.Visible = true;
                    Hello.Text = "Hello Admin";
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterUser.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginUser.aspx");

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            //logout button

                Session["username"] = "";
                Session["fullname"] = "";
                Session["role"] = null;
                Session["status"] = "";

                btnLogin.Visible = true; // user login link button
                btnRegister.Visible = true; // sign up link button

                btnLogout.Visible = false; // logout link button
                Hello.Visible = false; // hello user link button
   
                LoginAdmin.Visible = true; // admin login link button
                Response.Redirect("home.aspx");
                Session.RemoveAll();
            Session.Clear();
          
        }

        protected void btnAdminLogin(object sender, EventArgs e)
        {
            Response.Redirect("LoginAdmin.aspx");
        }

        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }

        protected void btnCourseManagement_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("admin"))
            {
                Response.Redirect("CourseManagement.aspx");
            }
        }

        protected void btnUserManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserManagement.aspx");
        }

        protected void btnInstructor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Instructor.aspx");
        }
        protected void btnPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewPayment.aspx");
        }

        protected void Hello_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("UserProfile.aspx");
            
        }

        protected void Dashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Enrol.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyCourses.aspx");
        }
    }
    }
