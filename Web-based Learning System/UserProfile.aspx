<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Web_based_Learning_System.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid d-flex justify-content-center">
      <div class="row">
         <div class="col-md-10">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/user-icon.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtFullName" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
       
        
                 
             
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row m-2">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="txtUserId" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Phone</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Phone" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" OnClientClick="return confirm('Are you sure you want to update?')" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                                
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                       
                  </div>
               </div><br />
             <a href="Home.aspx" class="btn btn-outline-secondary rounded-pill fa fa-arrow-left" tabindex="-1" role="button">Back to Home</a>
            </div>
                     

         </div>
      <%--   <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/logo.png"/>
                        </center>
                     </div>
                  </div>
                 </div>
            </div>
         </div>--%>
      </div>

</asp:Content>
