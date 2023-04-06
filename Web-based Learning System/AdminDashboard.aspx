<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Web_based_Learning_System.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .boxShadow {
  box-shadow: 1px 2px 1px 2px rgba(0, 0, 0, 0.1);
  transition: transform 0.2s;
}

.boxShadow:hover {
  transform: translateY(-10px);
}

h5 {
  font-family: "Ubuntu", sans-serif;
  font-weight: 900;
  text-transform: uppercase;
}

a {
  font-weight: bold;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- 
    <div class="container">
        <div class="mb-5 px-3 text-center">
            <h2 class="section-header"><b>Admin Dashboard</b></h2>
        </div>
        <div class="row justify-content-end py-3 my-3 align-items-center">
            <div class="col-md-6 col-sm-12">
                       <a href="CourseManagement.aspx"><img class="card-img-top" src="imgs/courses.jpg" alt="Card image cap"></a>
                <div class="align-items-center">
                    <br />
                    <center><a href="CourseManagement.aspx" class="btn-lg btn-info">Course Management</a></center>
                </div>
            </div>       
            <div class="col-md-6 col-sm-12">
               <a href="CourseManagement.aspx"><img class="card-img-top" src="imgs/usermanagement.png" alt="Card image cap"></a>
                <div class="align-items-center">
                    <br />
                    <center><a href="UserManagement.aspx" class="btn-lg btn-info">User Management</a></center>
                </div>
            </div>
            </div>  <div class="row justify-content-end py-3 my-3 align-items-center">
            <div class="col-md-6 col-sm-12">
                <a href="CourseManagement.aspx"><img class="card-img-top" src="imgs/instructor.png" alt="Card image cap"></a>
                <div class="align-items-center">
                    <br />
                    <center><a href="Instructor.aspx" class="btn-lg btn-info">Instrutor Management</a></center>
                </div>
            </div>       
            <div class="col-md-6 col-sm-12">
              <a href="CourseManagement.aspx"><img class="card-img-top" src="imgs/messgaemanagement.jpg" alt="Card image cap"></a>
                <div class="align-items-center">
                    <br />
                    <center><a href="ViewMessages.aspx" class="btn-lg btn-info">Message Management</a></center>
                </div>
            </div>
                </div>
        <div class="row justify-content-end py-3 my-3 align-items-center">
           <div class="col-md-6 col-sm-12">
              <a href="Payment.aspx"><img class="card-img-top" src="imgs/payment.png" alt="Card image cap"></a>
                <div class="align-items-center">
                    <br />
                    <center><a href="Payment.aspx" class="btn-lg btn-info">Payment Management</a></center>
                </div>
            </div>           
            <div class="col-md-6 col-sm-12">
              <a href="addadmin.aspx"><img class="card-img-top" src="imgs/addadmin.png" alt="Card image cap"></a>
                <div class="align-items-center">
                    <br />
                    <center><a href="addadmin.aspx" class="btn-lg btn-info">Add ADmin</a></center>
                </div>
            </div>
            </div>
        </div>

        --%>
    <div class="pt-5 text-center bg-light">
      <h2 class="section-header m-0"><b>Admin Dashboard</b></h2>
    </div>
    <div class="container-fluid p-5 bg-light">
      <div class="row align-items-center justify-content-center">
        <div class="card col-sm-6 col-md-4 mt-5 boxShadow py-2">
          <img
            src="images/course.png"
            class="mx-auto w-25 h-50"
            alt="Card image cap"
            height="200px"
            width="80%"
          />
          <div class="card-body">
            <h5 class="card-title">Course Management</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <a href="CourseManagement.aspx" class="btn btn-block btn-primary font-weight-bold">Manage</a>
          </div>
        </div>
        <div class="card col-sm-6 col-md-4 ml-sm-3 mt-5 py-2 boxShadow">
          <img
            class="mx-auto w-25 h-50"
            alt="Card image cap"
            height="200px"
            width="80%"
            src="images/user_management.png"
          />
          <div class="card-body">
            <h5 class="card-title">User Management</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <a href="UserManagement.aspx" class="btn btn-block btn-block btn-primary font-weight-bold">Manage</a>
          </div>
        </div>
        <div class="card col-sm-6 col-md-4 ml-sm-3 mt-5 py-2 boxShadow">
          <img
            class="mx-auto w-25 h-50"
            alt="Card image cap"
            height="200px"
            width="80%%"
            src="images/asdasda.png"
          />
          <div class="card-body">
            <h5 class="card-title">Tutor Management</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <a href="Instructor.aspx" class="btn btn-block btn-primary font-weight-bold">Manage</a>
          </div>
        </div>
        <div class="card col-sm-6 col-md-4 ml-sm-3 mt-5 py-2 boxShadow">
          <img
            src="images/messagesreal.png"
            class="mx-auto w-25 h-50"
            alt="Card image cap"
            "
          />
          <div class="card-body">
            <h5 class="card-title">Message Management</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <a href="ViewMessages.aspx" class="btn btn-block btn-primary font-weight-bold">Manage</a>
          </div>
        </div>
              </div>
    </div>
</asp:Content>
